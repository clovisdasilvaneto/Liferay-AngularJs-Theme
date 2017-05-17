window.appName = "AngularMainApplication";
window.MainApp = {};
window.baseAssetsURL = "/o/";
window.baseThemeURL = "/o/angular-js-theme/";

(function (win) {
	"use strict";
	
	win.MainApp.Controllers = angular.module(appName + ".controllers", []);
	win.MainApp.Directives = angular.module(appName + ".directives", []);
	win.MainApp.Services = angular.module(appName + ".services", []);
	win.MainApp.Filters = angular.module(appName + ".filters", []);
	
	angular
		.module(appName, [
			appName + ".controllers",
			appName + ".directives",
			appName + ".services",
			appName + ".filters",
			'ui.router'
		]).config(['$httpProvider', function($httpProvider) {
			$httpProvider.defaults.useXDomain = true;
			delete $httpProvider.defaults.headers.common['X-Requested-With'];
		}]);
}(window));

angular.element(document).ready(function() {
	angular.bootstrap(document, [appName]);
});