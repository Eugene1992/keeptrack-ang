<!DOCTYPE html>
<html ng-app="helloWorldApp">
<head>
    <meta charset="UTF-8">
    <title>KeepTrack</title>

    <!-- Bootstrap Core CSS -->
    <link href="../../resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../../resources/css/sb-admin.css" rel="stylesheet">

    <!-- Multyselect lin style -->
    <link href="../../resources/css/isteven-multi-select.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../../resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- Angular JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

    <!-- Custom page JS -->
    <script src="../../resources/js/pages/projects.js"></script>
</head>
<body ng-controller="AdminProjectsCtrl">
<div id="wrapper">
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html"><i class="fa fa-clock-o"></i> KeepTrack</a>
        </div>
        <!-- Top Menu Items -->
        <ul class="nav navbar-right top-nav">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-bell"></i> <b class="caret"></b>
                </a>
                <ul class="dropdown-menu alert-dropdown">
                    <li>
                        <a href="#">Alert Name <span class="label label-default">Alert Badge</span></a>
                    </li>
                    <li>
                        <a href="#">Alert Name <span class="label label-primary">Alert Badge</span></a>
                    </li>
                    <li>
                        <a href="#">Alert Name <span class="label label-success">Alert Badge</span></a>
                    </li>
                    <li>
                        <a href="#">Alert Name <span class="label label-info">Alert Badge</span></a>
                    </li>
                    <li>
                        <a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a>
                    </li>
                    <li>
                        <a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">View All</a>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-user"></i> Evgeniy Deyneka <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                    </li>
                </ul>
            </li>
        </ul>
        <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav">
                <li class="active">
                    <a href="index.html"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-fw fa-bar-chart-o"></i> Statistic</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-fw fa-money"></i> Customers</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-fw fa-edit"></i> Projects</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-fw fa-user"></i> Employees</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-fw fa-wrench"></i> Tasks</a>
                </li>
                <li>
                    <a data-toggle="collapse" data-target="#demo">
                        <i class="fa fa-fw fa-arrows-v"></i> Dropdown <i class="fa fa-fw fa-caret-down"></i>
                    </a>
                    <ul id="demo" class="collapse">
                        <li>
                            <a href="#">Dropdown Item</a>
                        </li>
                        <li>
                            <a href="#">Dropdown Item</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8" ng-controller="ProjectBoxesCtrl">
                    <!-- Project Summary Panel -->
                    <div class="panel panel-primary" ng-show="showInfoBoxes">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                <i class="glyphicon glyphicon-info-sign"></i> Project summary
                                <i class="glyphicon glyphicon-chevron-down pull-right" ng-show="showSummary == false" ng-click="changeShowSummary(!showSummary)"></i>
                                <i class="glyphicon glyphicon-chevron-up pull-right" ng-show="showSummary == true" ng-click="changeShowSummary(!showSummary)"></i>
                            </h3>
                        </div>
                        <div class="panel-body" ng-show="showSummary">
                            <table class="table table-bordered">
                                <tbody>
                                <tr>
                                    <td><b>Project name:</b></td>
                                    <td>{{project.name}}</td>
                                </tr>
                                <tr>
                                    <td><b>Project manager:</b></td>
                                    <td>{{project.projectManager.firstName}} {{project.projectManager.lastName}}
                                        <button class="btn btn-warning btn-xs pull-right" ng-click="openUpdatePopUp(project)">
                                            <i class="glyphicon glyphicon-check"></i>
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>Status</b></td>
                                    <td>{{project.status}}</td>
                                </tr>
                                <tr>
                                    <td><b>Start date</b></td>
                                    <td>{{project.startDate}}</td>
                                </tr>
                                <tr>
                                    <td><b>End date</b></td>
                                    <td>{{project.endDate}}</td>
                                </tr>
                                <tr>
                                    <td><b>Employees</b></td>
                                    <td>{{project.employees.length}}</td>
                                </tr>
                                <tr>
                                    <td><b>Sprints</b></td>
                                    <td>{{project.sprints.length}}</td>
                                </tr>
                                <tr>
                                    <td><b>Tasks</b></td>
                                    <td>{{calcSprintTotalTasks(project)}}</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- Project Employees Panel -->
                    <div class="panel panel-primary" ng-show="showInfoBoxes">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                <i class="fa fa-users fa-fw"></i> Project employees
                                <i class="glyphicon glyphicon-chevron-down pull-right" ng-show="showEmployees == false" ng-click="changeShowEmployees(!showEmployees)"></i>
                                <i class="glyphicon glyphicon-chevron-up pull-right" ng-show="showEmployees == true" ng-click="changeShowEmployees(!showEmployees)"></i>
                            </h3>
                        </div>
                        <div class="panel-body" ng-show="showEmployees">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th>
                                        <a href="#" ng-click="empSortType = 'firstName'; sortReverse = !sortReverse">
                                            First name
                                            <span ng-show="empSortType == 'firstName' && !sortReverse" class="fa fa-caret-down"></span>
                                            <span ng-show="empSortType == 'firstName' && sortReverse" class="fa fa-caret-up"></span>
                                        </a>
                                    </th>
                                    <th>
                                        <a href="#" ng-click="empSortType = 'lastName'; sortReverse = !sortReverse">
                                            Last name
                                            <span ng-show="empSortType == 'lastName' && !sortReverse" class="fa fa-caret-down"></span>
                                            <span ng-show="empSortType == 'lastName' && sortReverse" class="fa fa-caret-up"></span>
                                        </a>
                                    </th>
                                    <th>
                                        <a href="#" ng-click="empSortType = 'position'; sortReverse = !sortReverse">
                                            Position
                                            <span ng-show="empSortType == 'position' && !sortReverse" class="fa fa-caret-down"></span>
                                            <span ng-show="empSortType == 'position' && sortReverse" class="fa fa-caret-up"></span>
                                        </a>
                                    </th>
                                    <th>
                                        <a href="#" ng-click="empSortType = 'tasks'; sortReverse = !sortReverse">
                                            Tasks
                                            <span ng-show="empSortType == 'tasks' && !sortReverse" class="fa fa-caret-down"></span>
                                            <span ng-show="empSortType == 'tasks' && sortReverse" class="fa fa-caret-up"></span>
                                        </a>
                                    </th>
                                    <th class="th-del-btn">
                                        <i class="glyphicon glyphicon-remove"></i>
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr ng-repeat="employee in project.employees | orderBy:empSortType:sortReverse">
                                    <td>{{employee.firstName}}</td>
                                    <td>{{employee.lastName}}</td>
                                    <td>{{employee.position}}</td>
                                    <td>{{employee.tasks}}</td>
                                    <td><button class="btn btn-danger btn-xs" ng-click="deleteEmployeeFromProject(employee)"><i class="glyphicon glyphicon-remove"></i></button></td>
                                </tr>
                                </tbody>
                            </table>
                            <button class="btn btn-success pull-right" data-toggle="modal" data-target="#addEmployeePopUp">Add Employee</button>
                        </div>
                        <div class="modal fade" id="addEmployeePopUp" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header" style="background-color: #337AB7">
                                        <h4 class="modal-title">{{project.name}}</h4>
                                    </div>
                                    <div class="modal-body" id="setEmpModalBody">
                                        <form id="addEmpToProjectForm" name="addEmpToProjectForm" novalidate ng-submit="addEmployeeToProject(addEmpToProjectForm.$valid)">
                                            <div class="form-group form-group-sm col-sm-offset-3 col-sm-6">
                                                <label for="gender">Add employee to project:</label>
                                                <select class="form-control custom-select-height" id="gender" name="selectedEmployee"
                                                        ng-class="{'valid-border': addEmpToProjectForm.selectedEmployee.$invalid && showError}"
                                                        ng-options="employee.lastName + ' ' + employee.firstName for employee in employees | orderBy: 'lastName'"
                                                        ng-model="selectedEmployee" required>
                                                </select>
                                                <span ng-show="showError" class="valid-msg">
                                                             {{getError(addEmpToProjectForm.selectedEmployee.$error)}}
                                                        </span>
                                                <span ng-show="showError" class="valid-msg">
                                                             {{getError(addEmpToProjectForm.selectedEmployee.required)}}
                                                        </span>
                                            </div><br>
                                            <div class="form-group text-center col-sm-12" id="setEmpModalFooter">
                                                <button type="submit" class="btn btn-primary">Add Employee</button>
                                                <button type="button" class="btn btn-danger" data-dismiss="modal">Close menu</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Project Sprints Panel -->
                    <div class="panel panel-primary" ng-show="showInfoBoxes">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                <i class="glyphicon glyphicon-info-sign"></i> Project Sprints
                                <i class="glyphicon glyphicon-chevron-down pull-right" ng-show="showSprints == false" ng-click="changeShowSprints(!showSprints)"></i>
                                <i class="glyphicon glyphicon-chevron-up pull-right" ng-show="showSprints == true" ng-click="changeShowSprints(!showSprints)"></i>
                            </h3>
                        </div>
                        <div class="panel-body" ng-show="showSprints">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th>
                                        <a href="#" ng-click="sprintSortType = 'tittle'; sortReverse = !sortReverse">
                                            Title
                                            <span ng-show="sprintSortType == 'tittle' && !sortReverse" class="fa fa-caret-down"></span>
                                            <span ng-show="sprintSortType == 'tittle' && sortReverse" class="fa fa-caret-up"></span>
                                        </a>
                                    </th>
                                    <th>
                                        <a href="#" ng-click="sprintSortType = 'status'; sortReverse = !sortReverse">
                                            Status
                                            <span ng-show="sprintSortType == 'status' && !sortReverse" class="fa fa-caret-down"></span>
                                            <span ng-show="sprintSortType == 'status' && sortReverse" class="fa fa-caret-up"></span>
                                        </a>
                                    </th>
                                    <th>
                                        <a href="#" ng-click="sprintSortType = 'tasks'; sortReverse = !sortReverse">
                                            Tasks
                                            <span ng-show="sprintSortType == 'tasks' && !sortReverse" class="fa fa-caret-down"></span>
                                            <span ng-show="sprintSortType == 'tasks' && sortReverse" class="fa fa-caret-up"></span>
                                        </a>
                                    </th>
                                    <th>Details</th>
                                    <th class="th-del-btn">
                                        <i class="glyphicon glyphicon-remove"></i>
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr ng-repeat="sprint in project.sprints">
                                    <td>{{sprint.title}}</td>
                                    <td>{{sprint.status}}</td>
                                    <td>{{sprint.tasks.length}}</td>
                                    <td><button class="btn btn-info btn-xs">Details</button></td>
                                    <td><button class="btn btn-danger btn-xs" ng-click="deleteSprintFromProject(sprint)"><i class="glyphicon glyphicon-remove"></i></button></td>
                                </tr>
                                </tbody>
                            </table>
                            <button class="btn btn-warning pull-left">Edit Sprint</button>
                            <button class="btn btn-success pull-right" data-toggle="modal" data-target="#addSprintModal">Add Sprint</button>
                        </div>
                        <!-- Add Sprint Modal -->
                        <div class="modal fade" id="addSprintModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header" style="background-color: #337AB7">
                                        <h4 class="modal-title">Add Sprint</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form name="addSprintForm" ng-submit="addSprintToProject(newSprint, addSprintForm.$valid)" novalidate>
                                            <div class="form-group col-lg-12">
                                                <label for="newSprintName">Sprint name:</label>
                                                <input type="text" class="form-control" id="newSprintName" name="name"
                                                       ng-class="{'valid-border': addSprintForm.name.$invalid && showError}"
                                                       ng-model="newSprint.name" ng-pattern="/^[a-zA-Z]{2,20}$/" required/>
                                                <span class="valid-msg" ng-show="showError">
                                                            {{getError(addSprintForm.name.$error)}}
                                                        </span>
                                                <span ng-show="showError" class="valid-msg">
                                                            {{getError(addSprintForm.name.required)}}
                                                        </span>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label for="newSprintDescription">Description:</label>
                                                <textarea class="form-control" id="newSprintDescription" name="description" rows="4"
                                                          ng-class="{'valid-border': addSprintForm.description.$invalid && showError}"
                                                          ng-model="updProject.description" ng-pattern="/^[a-zA-Z]{20,100}$/" required></textarea>
                                                <span ng-show="showError" class="valid-msg">
                                                            {{getError(addSprintForm.description.$error, 'description')}}
                                                        </span>
                                                <span ng-show="showError" class="valid-msg">
                                                            {{getError(addSprintForm.description.required)}}
                                                        </span>
                                            </div>
                                            <!--<div class="form-group col-lg-12">
                                                <table class="table table-bordered">
                                                    <thead>
                                                    <tr>
                                                        <th>Id</th>
                                                        <th>Name</th>
                                                        <th>Estimate</th>
                                                        <th>Employees</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td>John</td>
                                                        <td>Doe</td>
                                                        <td>john@example.com</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Mary</td>
                                                        <td>Moe</td>
                                                        <td>mary@example.com</td>
                                                    </tr>
                                                    <tr>
                                                        <td>July</td>
                                                        <td>Dooley</td>
                                                        <td>july@example.com</td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>-->
                                            <div class="form-group col-lg-12">
                                                <p><i><b>Note:</b> you can add tasks to the sprint, close it in 'Edit Sprint' option after it is created.</i></p>
                                            </div>
                                            <div class="form-group text-center">
                                                <button type="submit" class="btn btn-success">Start sprint</button>
                                                <button type="submit" class="btn btn-primary">Add to the queue</button>
                                                <button type="button" class="btn btn-danger" data-dismiss="modal">Close menu</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- Project Tasks Panel -->
                    <div class="panel panel-primary" ng-show="showInfoBoxes">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                <i class="glyphicon glyphicon-info-sign"></i> Project Tasks
                                <i class="glyphicon glyphicon-chevron-down pull-right" ng-show="showTasks == false" ng-click="changeShowTasks(!showTasks)"></i>
                                <i class="glyphicon glyphicon-chevron-up pull-right" ng-show="showTasks == true" ng-click="changeShowTasks(!showTasks)"></i>
                            </h3>
                        </div>
                        <div class="panel-body" ng-show="showTasks">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th>
                                        <a href="#" ng-click="taskSortType = 'id'; sortReverse = !sortReverse">
                                            Id
                                            <span ng-show="taskSortType == 'id' && !sortReverse" class="fa fa-caret-down"></span>
                                            <span ng-show="taskSortType == 'id' && sortReverse" class="fa fa-caret-up"></span>
                                        </a>
                                    </th>
                                    <th>
                                        <a href="#" ng-click="taskSortType = 'name'; sortReverse = !sortReverse">
                                            Name
                                            <span ng-show="taskSortType == 'name' && !sortReverse" class="fa fa-caret-down"></span>
                                            <span ng-show="taskSortType == 'name' && sortReverse" class="fa fa-caret-up"></span>
                                        </a>
                                    </th>
                                    <th>
                                        <a href="#" ng-click="taskSortType = 'tasks'; sortReverse = !sortReverse">
                                            Created by
                                            <span ng-show="taskSortType == 'tasks' && !sortReverse" class="fa fa-caret-down"></span>
                                            <span ng-show="taskSortType == 'tasks' && sortReverse" class="fa fa-caret-up"></span>
                                        </a>
                                    </th>
                                    <th>
                                        <a href="#" ng-click="taskSortType = 'tasks'; sortReverse = !sortReverse">
                                            Assigned to
                                            <span ng-show="taskSortType == 'tasks' && !sortReverse" class="fa fa-caret-down"></span>
                                            <span ng-show="taskSortType == 'tasks' && sortReverse" class="fa fa-caret-up"></span>
                                        </a>
                                    </th>
                                    <th>
                                        <a href="#" ng-click="taskSortType = 'tasks'; sortReverse = !sortReverse">
                                            Estimate
                                            <span ng-show="taskSortType == 'tasks' && !sortReverse" class="fa fa-caret-down"></span>
                                            <span ng-show="taskSortType == 'tasks' && sortReverse" class="fa fa-caret-up"></span>
                                        </a>
                                    </th>
                                    <th>
                                        <a href="#" ng-click="taskSortType = 'tasks'; sortReverse = !sortReverse">
                                            Status
                                            <span ng-show="taskSortType == 'tasks' && !sortReverse" class="fa fa-caret-down"></span>
                                            <span ng-show="taskSortType == 'tasks' && sortReverse" class="fa fa-caret-up"></span>
                                        </a>
                                    </th>
                                    <th>Details</th>
                                    <th class="th-del-btn">
                                        <i class="glyphicon glyphicon-remove"></i>
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr ng-repeat="sprint in project.sprints">
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td><button class="btn btn-danger btn-xs" ng-click="deleteSprintFromProject(sprint)"><i class="glyphicon glyphicon-remove"></i></button></td>
                                </tr>
                                </tbody>
                            </table>
                            <button class="btn btn-warning pull-left">Edit Task</button>
                            <button class="btn btn-success pull-right" data-toggle="modal" data-target="#addTaskModal">Add Task</button>
                        </div>
                        <!-- Add Sprint Modal -->
                        <div class="modal fade" id="addTaskModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header" style="background-color: #337AB7">
                                        <h4 class="modal-title">Add Task</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form name="addTaskForm" ng-submit="addSprintToProject(newTask, addTaskForm.$valid)" novalidate>
                                            <div class="form-group col-lg-6">
                                                <label for="newTaskName">Task name:</label>
                                                <input type="text" class="form-control" id="newTaskName" name="name"
                                                       ng-class="{'valid-border': addTaskForm.name.$invalid && showError}"
                                                       ng-model="newSprint.name" ng-pattern="/^[a-zA-Z]{2,20}$/" required/>
                                                <span class="valid-msg" ng-show="showError">
                                                            {{getError(addTaskForm.name.$error)}}
                                                        </span>
                                                <span ng-show="showError" class="valid-msg">
                                                            {{getError(addTaskForm.name.required)}}
                                                        </span>
                                            </div>
                                            <div class="form-group col-lg-6">
                                                <label for="taskSprint">Task sprint:</label>
                                                <select class="form-control custom-select-height" id="taskSprint" name="taskSprint"
                                                        ng-class="{'valid-border': addTaskForm.taskSprint.$invalid && showError}"
                                                        ng-options="sprint.title for sprint in project.sprints"
                                                        ng-model="sprint" required>
                                                </select>
                                                <span ng-show="showError" class="valid-msg">
                                                             {{getError(addTaskForm.taskSprint.$error)}}
                                                        </span>
                                                <span ng-show="showError" class="valid-msg">
                                                             {{getError(addTaskForm.taskSprint.required)}}
                                                        </span>
                                            </div>
                                            <div class="form-group col-lg-6">
                                                <label for="taskAssign">Assign to:</label>
                                                <select class="form-control custom-select-height" id="taskAssign" name="taskAssign"
                                                        ng-class="{'valid-border': addTaskForm.selectedEmployee.$invalid && showError}"
                                                        ng-options="employee.lastName + ' ' + employee.firstName for employee in employees | orderBy: 'lastName'"
                                                        ng-model="sprint" required>
                                                </select>
                                                <span ng-show="showError" class="valid-msg">
                                                             {{getError(addTaskForm.selectedEmployee.$error)}}
                                                        </span>
                                                <span ng-show="showError" class="valid-msg">
                                                             {{getError(addTaskForm.selectedEmployee.required)}}
                                                        </span>
                                            </div>
                                            <div class="form-group col-lg-6">
                                                <label for="estimate">Estimate time(in hours):</label>
                                                <input type="text" class="form-control" id="estimate" name="estimate"
                                                       ng-class="{'valid-border': addSprintForm.name.$invalid && showError}"
                                                       ng-model="estimate" ng-pattern="/^[0-9^-]+$/" required/>
                                                <span class="valid-msg" ng-show="showError">
                                                            {{getError(addTaskForm.estimate.$error)}}
                                                        </span>
                                                <span ng-show="showError" class="valid-msg">
                                                            {{getError(addTaskForm.estimate.required)}}
                                                        </span>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label for="newTaskDescription">Description:</label>
                                                <textarea class="form-control" id="newTaskDescription" name="description" rows="4"
                                                          ng-class="{'valid-border': addSprintForm.description.$invalid && showError}"
                                                          ng-model="description" ng-pattern="/^[a-zA-Z]{20,100}$/" required></textarea>
                                                <span ng-show="showError" class="valid-msg">
                                                            {{getError(addSprintForm.description.$error, 'description')}}
                                                        </span>
                                                <span ng-show="showError" class="valid-msg">
                                                            {{getError(addSprintForm.description.required)}}
                                                        </span>
                                            </div>
                                            <!--<div class="form-group col-lg-12">
                                                <table class="table table-bordered">
                                                    <thead>
                                                    <tr>
                                                        <th>Id</th>
                                                        <th>Name</th>
                                                        <th>Estimate</th>
                                                        <th>Employees</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td>John</td>
                                                        <td>Doe</td>
                                                        <td>john@example.com</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Mary</td>
                                                        <td>Moe</td>
                                                        <td>mary@example.com</td>
                                                    </tr>
                                                    <tr>
                                                        <td>July</td>
                                                        <td>Dooley</td>
                                                        <td>july@example.com</td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>-->
                                            <div class="form-group col-lg-12">
                                                <p><i><b>Note:</b> you can add tasks to the sprint, close it in 'Edit Sprint' option after it is created.</i></p>
                                            </div>
                                            <div class="form-group text-center">
                                                <button type="submit" class="btn btn-success">Start sprint</button>
                                                <button type="submit" class="btn btn-primary">Add to the queue</button>
                                                <button type="button" class="btn btn-danger" data-dismiss="modal">Close menu</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-lg-4">
                                    <h2 class="panel-title">
                                        <i class="fa fa-money fa-fw"></i> Projects
                                    </h2>
                                </div>
                                <div class="col-lg-8">
                                    <div class="form-group pull-right" id="project-panel">
                                        <b>Show </b>
                                        <label>
                                            <select class="form-control" ng-model="tableSize" id="project-select">
                                                <option ng-selected="5">5</option>
                                                <option>10</option>
                                                <option>25</option>
                                                <option>50</option>
                                                <option>100</option>
                                            </select>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="input-group">
                                        <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#newProjectModal">New Project</button>
                                    </div>
                                </div>
                                <div class="col-lg-8">
                                    <div class="input-group pull-right">
                                        <div class="input-group-addon"><i class="fa fa-search"></i></div>
                                        <input type="text" class="form-control" placeholder="Search" ng-model="searchValue">
                                    </div>
                                </div>
                            </div><br>
                            <table class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th>
                                        <a href="#" ng-click="sortType = 'name'; sortReverse = !name">
                                            Name
                                            <span ng-show="sortType == 'name' && !sortReverse" class="fa fa-caret-down"></span>
                                            <span ng-show="sortType == 'name' && sortReverse" class="fa fa-caret-up"></span>
                                        </a>
                                    </th>
                                    <th>Update</th>
                                    <th>Delete</th>
                                    <th>Details</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr ng-repeat="project in projects | orderBy:sortType:sortReverse | filter:searchValue | limitTo:tableSize">
                                    <td>{{project.name}}</td>
                                    <td><button ng-click="openUpdatePopUp(project)" type="button" class="btn btn-warning btn-xs">Update</button></td>
                                    <td><button type="button" class="btn btn-danger btn-xs">Delete</button></td>
                                    <td><button type="button" class="btn btn-success btn-xs" ng-click="sendSelectedProject(project)">Details</button></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- New Project Modal -->
            <div class="modal fade" id="newProjectModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header" style="background-color: #337AB7">
                            <h4 class="modal-title">Add new Project</h4>
                        </div>
                        <div class="modal-body">
                            <form id="newProjectForm" name="newProjectForm" novalidate ng-submit="createNewProject(newProject, newProjectForm.$valid)">
                                <div class="form-group col-lg-12 outer">
                                    <div class="form-group col-lg-6">
                                        <label for="name">Project name:</label>
                                        <input type="text" class="form-control" id="name" name="name"
                                               ng-class="{'valid-border': newProjectForm.name.$invalid && showError}"
                                               ng-model="newProject.name" ng-pattern="/^[a-zA-Z]{2,20}$/" required/>
                                        <span class="valid-msg" ng-show="showError">
                                                    {{getError(newProjectForm.name.$error)}}
                                                </span>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(newProjectForm.name.required)}}
                                                </span>
                                    </div>
                                    <div class="form-group form-group-sm col-md-6">
                                        <label for="projectManager">Project Manager:</label>
                                        <select class="form-control custom-select-height" id="projectManager" name="projectManager"
                                                ng-class="{'valid-border': newProjectForm.projectManager.$invalid && showError}"
                                                ng-model="newProject.projectManager" required>
                                            <option ng-repeat="emp in employees">{{emp.firstName}} {{emp.lastName}}</option>
                                        </select>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(newProjectForm.projectManager.$error)}}
                                                </span>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(newProjectForm.projectManager.required)}}
                                                </span>
                                    </div>
                                </div>
                                <div class="form-group col-lg-12 outer">
                                    <div class="form-group col-lg-6">
                                        <label for="startDate">Start date:</label>
                                        <input type="date" class="form-control" id="startDate" name="startDate"
                                               ng-class="{'valid-border': newProjectForm.startDate.$invalid && showError}"
                                               ng-model="newProject.startDate" required>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(newProjectForm.startDate.$error)}}
                                                </span>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(newProjectForm.startDate.required)}}
                                                </span>
                                    </div>
                                    <div class="form-group col-lg-6">
                                        <label for="endDate">End date:</label>
                                        <input type="date" class="form-control" id="endDate" name="endDate"
                                               ng-class="{'valid-border': newProjectForm.endDate.$invalid && showError}"
                                               ng-model="newProject.endDate" required>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(newProjectForm.endDate.$error)}}
                                                </span>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(newProjectForm.endDate.required)}}
                                                </span>
                                    </div>
                                </div>
                                <div class="form-group col-lg-12 outer">
                                    <div class="form-group col-lg-12">
                                        <label for="description">Description:</label>
                                        <textarea class="form-control" id="description" name="description" rows="4"
                                                  ng-class="{'valid-border': newProjectForm.description.$invalid && showError}"
                                                  ng-model="newProject.description" required></textarea>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(newProjectForm.description.$error)}}
                                                </span>
                                    </div>
                                </div>
                                <div class="form-group text-center">
                                    <button type="submit" class="btn btn-primary">Save changes</button>
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close menu</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Update Project Modal -->
            <div class="modal fade" id="updProjectModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header" style="background-color: #337AB7">
                            <h4 class="modal-title">Update Project</h4>
                        </div>
                        <div class="modal-body">
                            <form name="updProjectForm" ng-submit="updateProject(updProject, updProjectForm.$valid)" novalidate>
                                <div class="form-group col-lg-12 outer">
                                    <div class="form-group col-lg-6">
                                        <label for="uname">Project name:</label>
                                        <input type="text" class="form-control" id="uname" name="name"
                                               ng-class="{'valid-border': updProjectForm.name.$invalid && showError}"
                                               ng-model="updProject.name" ng-pattern="/^[a-zA-Z]{2,20}$/" required/>
                                        <span class="valid-msg" ng-show="showError">
                                                    {{getError(updProjectForm.name.$error)}}
                                                </span>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(updProjectForm.name.required)}}
                                                </span>
                                    </div>
                                    <div class="form-group form-group-sm col-md-6">
                                        <label for="uprojectManager">Project Manager:</label>
                                        <select class="form-control custom-select-height" id="uprojectManager" name="projectManager"
                                                ng-class="{'valid-border': updProjectForm.projectManager.$invalid && showError}"
                                                ng-model="updProject.projectManager" required>
                                            <option ng-repeat="emp in employees">{{emp.firstName}} {{emp.lastName}}</option>
                                        </select>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(updProjectForm.projectManager.$error)}}
                                                </span>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(updProjectForm.projectManager.required)}}
                                                </span>
                                    </div>
                                </div>
                                <div class="form-group col-lg-12 outer">
                                    <div class="form-group col-lg-6">
                                        <label for="ustartDate">Start date:</label>
                                        <input type="date" class="form-control" id="ustartDate" name="startDate"
                                               ng-class="{'valid-border': updProjectForm.startDate.$invalid && showError}"
                                               ng-model="updProject.startDate" value="{{updProject.startDate}}" required>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(updProjectForm.startDate.$error)}}
                                                </span>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(updProjectForm.startDate.required)}}
                                                </span>
                                    </div>
                                    <div class="form-group col-lg-6">
                                        <label for="uendDate">End date:</label>
                                        <input type="date" class="form-control" id="uendDate" name="endDate"
                                               ng-class="{'valid-border': updProjectForm.endDate.$invalid && showError}"
                                               ng-model="updProject.endDate" value="{{updProject.endDate}}" required>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(updProjectForm.endDate.$error)}}
                                                </span>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(updProjectForm.endDate.required)}}
                                                </span>
                                    </div>
                                </div>
                                <div class="form-group col-lg-12 outer">
                                    <div class="form-group col-lg-12">
                                        <label for="udescription">Description:</label>
                                        <textarea class="form-control" id="udescription" name="description" rows="4"
                                                  ng-class="{'valid-border': updProjectForm.description.$invalid && showError}"
                                                  ng-model="updProject.description" required></textarea>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(updProjectForm.description.$error)}}
                                                </span>
                                    </div>
                                </div>
                                <div class="form-group col-lg-12 outer">
                                    <!--<div class="form-group col-lg-12">
                                        <button class="btn btn-success btn-sm" ng-click="addSprint()">+</button>
                                        <div ng-repeat="sprin in sprints track by $index" class="col-lg-6">
                                            <input type="text" class="form-control" ng-model='sprints[$index]' placeholder='Sprint:'>
                                            <span class="input-group-btn">
                                                <button class="btn btn-default" type="button">Go!</button>
                                              </span>
                                        </div>
                                    </div>-->
                                    <div class="col-lg-6">
                                        <button class="btn btn-success btn-sm center-block" ng-click="addSprint()">Add Sprint</button>
                                    </div>
                                    <div class="input-group col-lg-6" ng-repeat="sprin in sprints track by $index">
                                        <input type="text" class="form-control" ng-model='sprints[$index]' placeholder="Sprint # {{$index}}">
                                        <span class="input-group-btn">
                                                        <button class="btn btn-danger" type="button" ng-click="removeSprint($index)">-</button>
                                                    </span>
                                    </div>
                                </div>
                                <div class="form-group text-center">
                                    <button type="submit" class="btn btn-primary">Save changes</button>
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close menu</button>
                                </div>
                                {{sprints}}
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Multi select plugin -->
<script src="../../resources/js/libs/isteven-multi-select.js"></script>
<script src="../../resources/js/libs/collapse.js"></script>

<!-- jQuery -->
<script src="../../resources/js/libs/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../../resources/js/libs/bootstrap.min.js"></script>
</body>
</html>