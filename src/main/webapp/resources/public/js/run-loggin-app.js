///////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Defines the javascript files that need to be loaded and their dependencies.
//
///////////////////////////////////////////////////////////////////////////////////////////////////////////

require.config({
    paths: {
        angular: '../../bower_components/angular/angular',
        angularMessages: '../../bower_components/angular-messages/angular-messages',
        csrfInterceptor: '../../bower_components/spring-security-csrf-token-interceptor/dist/spring-security-csrf-token-interceptor.min',
        lodash: "../../bower_components/lodash/dist/lodash",
        editableTableWidgets: 'editable-table-widgets',
        common: 'common',
        loginApp: 'login',
        
        angularuiswitch: '../../bower_components/angular-ui-switch/angular-ui-switch.min'
        
    },
    shim: {
        angular: {
            exports: "angular"
        },
        csrfInterceptor: {
            deps: ['angular']
        },
        angularMessages: {
            deps: ['angular']
        },
        editableTableWidgets: {
            deps: ['angular', 'lodash']
        },
        common: {
          deps: ['angular', 'csrfInterceptor', 'angularMessages','editableTableWidgets']
        },
        loginApp: {
            deps: [ 'common']
        }
        
        
        ,
        myApp: {
        	deps: ['angularuiswitch']
        }
        
        
        
    }
});

require(['loginApp'], function () {

    angular.bootstrap(document.getElementById('loginApp'), ['loginApp']);

});