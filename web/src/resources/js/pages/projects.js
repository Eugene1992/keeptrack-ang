var projects = [
    {
        name: "Flangex",
        projectManager: {firstName: "Evgeniy", lastName: "Deyneka"},
        status: "Done",
        startDate: "2015-09-12",
        endDate: "2016-02-07",
        employees: [
            {firstName: "Evgeniy", lastName: "Deyneka", position: "Junior"},
            {firstName: "Anna", lastName: "Zaika", position: "Middle"},
            {firstName: "Denis", lastName: "Bidnenko", position: "Senior"},
            {firstName: "Dmitriy", lastName: "Titov", position: "Architect"}
        ],
        sprints: [
            {   title: "SprintStart",
                tasks: [
                    {title: "TaskStart", estimate: 12},
                    {title: "TaskMiddle", estimate: 7},
                    {title: "TaskEnd", estimate: 16}
                ],
                status: "In Progress"
            },
            {   title: "SprintMiddle",
                tasks: [
                    {title: "TaskStart", estimate: 12},
                    {title: "TaskMiddle", estimate: 7},
                    {title: "TaskEnd", estimate: 16}],
                status: "Planed"
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
            {   title: "SprintStart",
                tasks: [
                    {title: "TaskStart", estimate: 12},
                    {title: "TaskMiddle", estimate: 7},
                    {title: "TaskEnd", estimate: 16}
                ],
                status: "In Progress"
            },
            {   title: "SprintMiddle",
                tasks: [
                    {title: "TaskStart", estimate: 12},
                    {title: "TaskMiddle", estimate: 7},
                    {title: "TaskEnd", estimate: 16}],
                status: "Planed"
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
            {   title: "SprintStart",
                tasks: [
                    {title: "TaskStart", estimate: 12},
                    {title: "TaskMiddle", estimate: 7},
                    {title: "TaskEnd", estimate: 16}
                ],
                status: "In Progress"
            },
            {   title: "SprintMiddle",
                tasks: [
                    {title: "TaskStart", estimate: 12},
                    {title: "TaskMiddle", estimate: 7},
                    {title: "TaskEnd", estimate: 16}],
                status: "Planed"
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
            {   title: "SprintStart",
                tasks: [
                    {title: "TaskStart", estimate: 12},
                    {title: "TaskMiddle", estimate: 7},
                    {title: "TaskEnd", estimate: 16}
                ],
                status: "In Progress"
            },
            {   title: "SprintMiddle",
                tasks: [
                    {title: "TaskStart", estimate: 12},
                    {title: "TaskMiddle", estimate: 7},
                    {title: "TaskEnd", estimate: 16}],
                status: "Planed"
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
            {   title: "SprintStart",
                tasks: [
                    {title: "TaskStart", estimate: 12},
                    {title: "TaskMiddle", estimate: 7},
                    {title: "TaskEnd", estimate: 16}
                ],
                status: "In Progress"
            },
            {   title: "SprintMiddle",
                tasks: [
                    {title: "TaskStart", estimate: 12},
                    {title: "TaskMiddle", estimate: 7},
                    {title: "TaskEnd", estimate: 16}],
                status: "Planed"
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


var helloWorldApp = angular.module("helloWorldApp", ['isteven-multi-select', 'ui.bootstrap.collapse']);

helloWorldApp.controller("AdminProjectsCtrl", function ($scope, $rootScope) {

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

    $scope.openUpdatePopUp = function (project) {
        $('#updProjectModal').modal('toggle');
        $scope.updProject = project;
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
            alert(updProject);
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

    $scope.sprints = ["Sprint 1"];

    $scope.changeShow = function ($scope) {
        $scope.isShow = false;
    };



    $scope.addSprint = function () {
        $scope.sprints.push('');
    };

    $scope.removeSprint = function (index) {
        $scope.sprints.splice(index, 1);
    };

    $scope.sendSelectedProject = function (selectedProject) {
        // $broadcast - отправка события всем scope от rootScope
        $rootScope.$broadcast("sendProject", selectedProject);
    }
});

helloWorldApp.controller("ProjectBoxesCtrl", function ($scope) {

    $scope.showInfoBoxes = false;
    $scope.showSummary = false;
    $scope.showEmployees = false;
    $scope.showSprints = false;
    $scope.showTasks = true;

    $scope.empSortType = 'firstName';
    $scope.sprintSortType = 'tittle';
    $scope.taskSortType = 'name';
    $scope.sortReverse = false;

    // обработка события messageEvent на текущем scope
    $scope.$on("sendProject", function (event, args) {
        $scope.project = args;
        $scope.showInfoBoxes = true;
    });

    $scope.changeShowSummary = function(value) {
        $scope.showSummary = value;
    };

    $scope.changeShowEmployees = function(value) {
        $scope.showEmployees = value;
    };

    $scope.changeShowSprints = function(value) {
        $scope.showSprints = value;
    };

    $scope.changeShowTasks = function(value) {
        $scope.showTasks = value;
    };

    $scope.calcSprintTotalTasks = function (project) {
        var res = 0;
        for (var i = 0; i < project.sprints.length; i++) {
            res += project.sprints[i].tasks.length;
        }
        return res;
    };

    $scope.addEmployeeToProject = function (isValid) {
        if (isValid) {
            var projectIndex = projects.indexOf($scope.project);
            var employeeIndex = employees.indexOf($scope.selectedEmployee);
            $scope.projects[projectIndex].employees.push(employees[employeeIndex]);
            $scope.addEmpToProjectForm.$setUntouched();
            $scope.addEmpToProjectForm.$setPristine();
            $('#addEmployeePopUp').modal('hide');
        } else {
            $scope.showError = true;
        }
    };

    $scope.deleteEmployeeFromProject = function (employee) {
        var employeeIndex = employees.indexOf(employee);
        $scope.project.employees.splice(employeeIndex, 1);
    };

    $scope.addSprintToProject = function (newSprint, isValid) {
        if (isValid) {
            alert(newSprint);
        } else {
            $scope.showError = true;
        }
    };

    $scope.showError = false;

    // get validation message
    $scope.getError = function (error, type) {
        if (angular.isDefined(error)) {
            if (error.required) {
                return "Required field";
            }
            if (error.pattern) {
                if (type == "description") {
                    return "Only ENG chars in the 10-100 range";
                }
                return "Only ENG chars in the 2-10 range";
            }
        }

    }
});

