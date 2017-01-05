var employees = [
    {
        firstName: "Evgeniy",
        lastName: "Deyneka",
        birthday: "1992-11-26",
        hireDate: "1992-12-26",
        gender: "Male",
        email: "deyneko55@gmail.com",
        salary: 15000,
        projects: [
            { title: "Minerva", openTasks: 25, closedTasks: 14 },
            { title: "Flangex", openTasks: 18, closedTasks: 7 }
        ]
    },
    {
        firstName: "Anna",
        lastName: "Zaika",
        birthday: "1992-11-26",
        hireDate: "1992-12-26",
        gender: "Female",
        email: "zaika@gmail.com",
        salary: 11000,
        projects: [
            { title: "Minerva", openTasks: 25, closedTasks: 14 },
            { title: "Flangex", openTasks: 18, closedTasks: 7 }
        ]
    },
    {
        firstName: "Ruslan",
        lastName: "Kazenko",
        birthday: "1992-11-26",
        hireDate: "1992-12-26",
        gender: "Male",
        email: "kazenko@gmail.com",
        salary: 23000,
        projects: [
            { title: "Minerva", openTasks: 25, closedTasks: 14 },
            { title: "Flangex", openTasks: 18, closedTasks: 7 }
        ]
    }
];

var helloWorldApp = angular.module("helloWorldApp", ["isteven-multi-select"]);

helloWorldApp.controller("AdminEmployeeCtrl", function ($scope) {
    $scope.employees = employees;
    $scope.sortType = "firstName";
    $scope.sortReverse = false;
    $scope.searchValue = "";
    $scope.tableSize = 7;

    $scope.projects = [
        { name: "Minerva" },
        { name: "KeepTrack" },
        { name: "Hexlet" },
        { name: "IGov" },
        { name: "Flangex" }
    ];

    $scope.openCreatePopUp = function () {
        $('#myModal').modal('toggle');
        $scope.updEmp = null;
    };

    $scope.openUpdatePopUp = function (emp) {
        $('#updEmpModal').modal('toggle');
        $scope.updEmp = emp;
    };

    $scope.calcProjectsNum = function (emp) {
        return emp.projects.length;
    };

    $scope.createNewEmployee = function (newEmp, isValid) {
        if (isValid) {
            newEmp.birthday = newEmp.birthday.toISOString().substring(0, 10);
            newEmp.hireDate = newEmp.hireDate.toISOString().substring(0, 10);
            angular.forEach($scope.outputBrowsers, function(value) {
                newEmp.projects.push(value.name);
            });
            employees.push(newEmp);
            $scope.newEmp = null;
            $scope.newEmpForm.$setUntouched();
            $scope.newEmpForm.$setPristine();
            $('#newEmpModal').modal('hide');
        } else {
            $scope.showError = true;
        }
    };

    $scope.updateEmployee = function (newEmp, isValid) {
        if (isValid) {
            $('#updEmpModal').modal('hide');
        } else {
            $scope.showError = true;
        }
    };

    $scope.getError = function (error, type) {
        if (angular.isDefined(error)) {
            if (error.required) {
                return "Required field";
            }
            if (error.pattern) {
                if (type == "salary") {
                    return "Only numbers";
                }
                return "Only ENG chars in the 2-10 range";
            }
            if (error.email) {
                return "Incorrect email";
            }
            if (error.date) {
                return "Incorrect email";
            }
        }
    }
});
