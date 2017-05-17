'use strict';

const gulp = require('gulp');
const liferayThemeTasks = require('liferay-theme-tasks');

let libsJS = []
libsJS.push('./node_modules/angular/angular.min.js');
libsJS.push('./node_modules/angular-ui-router/release/angular-ui-router.min.js');

liferayThemeTasks.registerTasks({
	gulp: gulp
});