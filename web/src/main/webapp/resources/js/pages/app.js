
var module = angular.module("mainApp", ["isteven-multi-select"])
    .controller("MainCtrl", function ($scope) {

    $scope.currentView = 'employees.html';

    $scope.changeView = function (view) {
        var path = view + '.html';
        $scope.currentView = path;
    }
})