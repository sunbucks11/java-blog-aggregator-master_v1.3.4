angular.module('loginApp', ['common', 'spring-security-csrf-token-interceptor', 'editableTableWidgets'])
    .controller('LoginCtrl', ['$scope', '$http', function ($scope, $http) {

        $scope.onLogin = function () {
            console.log('Attempting login with username ' + $scope.vm.username + ' and password ' + $scope.vm.password);

            $scope.vm.submitted = true;

            if ($scope.form.$invalid) {
            	console.log('Invalid username or password ');
                return;
            }

            $scope.login($scope.vm.userName, $scope.vm.password);
            console.log('Login as ........ ');
        };

    }]);