'use strict';

var App = angular.module('myApp', ['uiSwitch','ngFileUpload' ,'ngImgCrop']);



App.controller('MyCtrl', ['$scope', 'Upload', '$timeout', function ($scope, Upload, $timeout) {
    $scope.upload = function (dataUrl, name) {
        Upload.upload({
            //url: 'https://angular-file-upload-cors-srv.appspot.com/upload',
        	url: 'http://localhost:8080/upload',
            data: {
                file: Upload.dataUrltoBlob(dataUrl, name)
            },
        }).then(function (response) {
            $timeout(function () {
                $scope.result = response.data;
                //window.location.reload();
                 location.href = "http://localhost:8080/UserManagement"
                //location.href = "http://localhost:8080/user.html"
                //location.href = "http://localhost:8080/edit-member"
            });
        }, function (response) {
            if (response.status > 0) $scope.errorMsg = response.status 
                + ': ' + response.data;
        }, function (evt) {
            $scope.progress = parseInt(100.0 * evt.loaded / evt.total);
        });
    }
}]);







App.directive('ngConfirmClick', [ function() {
	return {
		link : function(scope, element, attr) {
			var msg = attr.ngConfirmClick || "Are you sure?";
			var clickAction = attr.confirmedClick;
			element.bind('click', function(event) {
				if (window.confirm(msg)) {
					scope.$eval(clickAction)
				}
			});
		}
	};
} ])


var directiveId = 'ngMatch';
App.directive(directiveId, [ '$parse', function($parse) {

	var directive = {
		link : link,
		restrict : 'A',
		require : '?ngModel'
	};
	return directive;

	function link(scope, elem, attrs, ctrl) {
		// if ngModel is not defined, we don't need to do anything
		if (!ctrl)
			return;
		if (!attrs[directiveId])
			return;

		var firstPassword = $parse(attrs[directiveId]);

		var validator = function(value) {
			var temp = firstPassword(scope), v = value === temp;
			ctrl.$setValidity('match', v);
			return value;
		}

		ctrl.$parsers.unshift(validator);
		ctrl.$formatters.push(validator);
		attrs.$observe(directiveId, function() {
			validator(ctrl.$viewValue);
		});

	}
} ]);
