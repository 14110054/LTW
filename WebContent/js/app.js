var validationApp = angular.module('validationApp', []);
  	validationApp.controller('mainController', function($scope) {	
  		$scope.submitform = function() {
  			if ($scope.myForm.$valid) {
  				alert('May Report finished.')
  			}
  		}
  	});