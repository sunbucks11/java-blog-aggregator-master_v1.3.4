'use strict';

var App = angular.module('myApp', ['uiSwitch']);











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
