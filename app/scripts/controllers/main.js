'use strict';

/**
 * @ngdoc function
 * @name soBlogApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the soBlogApp
 */
angular.module('soBlogApp')
  .controller('MainCtrl', function ($scope) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
