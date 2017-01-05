var projects = [
    {
        name: "Flangex",
        projectManager: {firstName: "Evgeniy", lastName: "Deyneka"},
        status: "Done",
        startDate: "2015-09-12",
        endDate: "2016-02-07",
        employees: [
            {firstName: "Evgeniy", lastName: "Deyneka"},
            {firstName: "Evgeniy", lastName: "Deyneka"},
            {firstName: "Evgeniy", lastName: "Deyneka"},
            {firstName: "Evgeniy", lastName: "Deyneka"}
        ],
        sprints: [
            {title: "SprintStart", tasks: [
                {title: "TaskStart", estimate: 12},
                {title: "TaskMiddle", estimate: 7},
                {title: "TaskMiddle", estimate: 7},
                {title: "TaskEnd", estimate: 16}]
            },
            {title: "SprintMiddle", tasks: [
                {title: "TaskStart", estimate: 12},
                {title: "TaskMiddle", estimate: 7},
                {title: "TaskEnd", estimate: 16}]
            }
        ]
    },
    {
        name: "Minerva",
        projectManager: {firstName: "Roman", lastName: "Andriyanov"},
        status: "In Progress",
        startDate: "2015-09-12",
        endDate: "2016-02-07",
        employees: [
            {firstName: "Evgeniy", lastName: "Deyneka"},
            {firstName: "Evgeniy", lastName: "Deyneka"},
            {firstName: "Evgeniy", lastName: "Deyneka"}
        ],
        sprints: [
            {title: "SprintStart", tasks: [
                {title: "TaskStart", estimate: 12},
                {title: "TaskMiddle", estimate: 7},
                {title: "TaskEnd", estimate: 16}]
            },
            {title: "SprintMiddle", tasks: [
                {title: "TaskStart", estimate: 12},
                {title: "TaskMiddle", estimate: 7},
                {title: "TaskEnd", estimate: 16}]
            }
        ]
    }
];

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

helloWorldApp.controller("AdminProjectsCtrl", function ($scope) {

    $scope.projects = projects;
    $scope.employees = employees;
    $scope.sortType = "name";
    $scope.sortReverse = false;
    $scope.searchValue = "";
    $scope.tableSize = 7;

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

    $scope.createNewProject = function (newProject, isValid) {
        if (isValid) {
            newProject.startDate = newProject.startDate.toISOString().substring(0, 10);
            newProject.endDate = newProject.endDate.toISOString().substring(0, 10);
            newProject.status = "Created";
            newProject.employees = [];
            newProject.sprints = [];
            projects.push(newProject);
            $scope.newProject = null;
            $scope.newProjectForm.$setUntouched();
            $scope.newProjectForm.$setPristine();
            $('#newProjectModal').modal('hide');
        } else {
            $scope.showError = true;
        }
    };

    $scope.updateProject = function (updProject, isValid) {
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
    };

    $scope.calcSprintTotalTasks = function (project) {
        var res = 0;
        for (var i = 0; i < project.sprints.length; i++) {
            res += project.sprints[i].tasks.length;
        }
        return res;
    };
});
