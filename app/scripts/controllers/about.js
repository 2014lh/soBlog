'use strict';

/**
 * @ngdoc function
 * @name soBlogApp.controller:AboutCtrl
 * @description
 * # AboutCtrl
 * Controller of the soBlogApp
 */
angular.module('soBlogApp')
  .controller('AboutCtrl', function ($scope) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
