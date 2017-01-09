
var module = angular.module("mainApp", ["isteven-multi-select"])
    .controller("MainCtrl", function ($scope) {

    $scope.currentView = 'WEB-INF/pages/employees.html';

    $scope.changeView = function (view) {
        var path = 'WEB-INF/pages/' + view + '.html';
        $scope.currentView = path;
    }
})