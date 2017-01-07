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
    <script src="../../resources/js/pages/employees.js"></script>
</head>
<body ng-controller="AdminEmployeeCtrl">
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
                <div class="col-lg-12"><br>
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                <i class="fa fa-users fa-fw"></i> Employee list
                            </h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-8">
                                    <div class="input-group">
                                        <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#newEmpModal">New Employee</button>
                                    </div>
                                </div>
                                <div class="col-lg-4">
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
                                        <a href="#" ng-click="sortType = 'firstName'; sortReverse = !sortReverse">
                                            First Name
                                            <span ng-show="sortType == 'firstName' && !sortReverse" class="fa fa-caret-down"></span>
                                            <span ng-show="sortType == 'firstName' && sortReverse" class="fa fa-caret-up"></span>
                                        </a>
                                    </th>
                                    <th>
                                        <a href="#" ng-click="sortType = 'lastName'; sortReverse = !sortReverse">
                                            Last Name
                                            <span ng-show="sortType == 'lastName' && !sortReverse" class="fa fa-caret-down"></span>
                                            <span ng-show="sortType == 'lastName' && sortReverse" class="fa fa-caret-up"></span>
                                        </a>
                                    </th>
                                    <th>
                                        <a href="#" ng-click="sortType = 'birthday'; sortReverse = !sortReverse">
                                            Birthday
                                            <span ng-show="sortType == 'birthday' && !sortReverse" class="fa fa-caret-down"></span>
                                            <span ng-show="sortType == 'birthday' && sortReverse" class="fa fa-caret-up"></span>
                                        </a>
                                    </th>
                                    <th>
                                        <a href="#" ng-click="sortType = 'hiredate'; sortReverse = !sortReverse">
                                            Hire Date
                                            <span ng-show="sortType == 'hiredate' && !sortReverse" class="fa fa-caret-down"></span>
                                            <span ng-show="sortType == 'hiredate' && sortReverse" class="fa fa-caret-up"></span>
                                        </a>
                                    </th>
                                    <th>
                                        <a href="#" ng-click="sortType = 'salary'; sortReverse = !sortReverse">
                                            Salary
                                            <span ng-show="sortType == 'salary' && !sortReverse" class="fa fa-caret-down"></span>
                                            <span ng-show="sortType == 'salary' && sortReverse" class="fa fa-caret-up"></span>
                                        </a>
                                    </th>
                                    <th>
                                        <a href="#" ng-click="sortType = 'gender'; sortReverse = !sortReverse">
                                            Gender
                                            <span ng-show="sortType == 'gender' && !sortReverse" class="fa fa-caret-down"></span>
                                            <span ng-show="sortType == 'gender' && sortReverse" class="fa fa-caret-up"></span>
                                        </a>
                                    </th>
                                    <th>
                                        <a href="#" ng-click="sortType = 'email'; sortReverse = !sortReverse">
                                            Email
                                            <span ng-show="sortType == 'email' && !sortReverse" class="fa fa-caret-down"></span>
                                            <span ng-show="sortType == 'email' && sortReverse" class="fa fa-caret-up"></span>
                                        </a>
                                    </th>
                                    <th>
                                        <a href="#" ng-click="sortType = 'closedTasks'; sortReverse = !sortReverse">
                                            Projects
                                            <span ng-show="sortType == 'closedTasks' && !sortReverse" class="fa fa-caret-down"></span>
                                            <span ng-show="sortType == 'closedTasks' && sortReverse" class="fa fa-caret-up"></span>
                                        </a>
                                    </th>
                                    <th>Update</th>
                                    <th>Delete</th>
                                    <th>Profile</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr ng-repeat="emp in employees | orderBy:sortType:sortReverse | filter:searchValue | limitTo:tableSize">
                                    <td>{{emp.firstName}}</td>
                                    <td>{{emp.lastName}}</td>
                                    <td>{{emp.birthday}}</td>
                                    <td>{{emp.hireDate}}</td>
                                    <td>{{emp.salary}}</td>
                                    <td>{{emp.gender}}</td>
                                    <td>{{emp.email}}</td>
                                    <td>{{emp.projects.length}}</td>
                                    <td><button ng-click="openUpdatePopUp(emp)" type="button" class="btn btn-warning btn-xs">Update</button></td>
                                    <td><button type="button" class="btn btn-danger btn-xs">Delete</button></td>
                                    <td><button type="button" class="btn btn-success btn-xs">Profile</button></td>
                                </tr>
                                </tbody>
                            </table>
                            <div class="row">
                                <div class="col-lg-2">
                                    <div class="form-group">
                                        <label>
                                            <select class="form-control" ng-model="tableSize">
                                                <option>5</option>
                                                <option>10</option>
                                                <option>25</option>
                                                <option>50</option>
                                                <option>100</option>
                                            </select>
                                        </label>
                                    </div>
                                </div>
                            </div><br>
                        </div>
                    </div>
                </div>
            </div>
            <!-- New Employee Modal -->
            <div class="modal fade" id="newEmpModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header" style="background-color: #337AB7">
                            <h4 class="modal-title">Add new Employee</h4>
                        </div>
                        <div class="modal-body">
                            <form id="newEmpForm" name="newEmpForm" novalidate ng-submit="createNewEmployee(newEmp, newEmpForm.$valid)">
                                <div class="form-group col-lg-12 outer">
                                    <div class="form-group col-lg-6">
                                        <label for="firstName">First name:</label>
                                        <input type="text" class="form-control" id="firstName" name="firstName"
                                               ng-class="{'valid-border': newEmpForm.firstName.$invalid && showError}"
                                               ng-model="newEmp.firstName" ng-pattern="/^[a-zA-Z]{2,10}$/" required/>
                                        <span class="valid-msg" ng-show="showError">
                                                    {{getError(newEmpForm.firstName.$error)}}
                                                </span>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(newEmpForm.firstName.required)}}
                                                </span>
                                    </div>
                                    <div class="form-group col-lg-6">
                                        <label for="lastName">Last name:</label>
                                        <input type="text" class="form-control" id="lastName" name="lastName"
                                               ng-class="{'valid-border': newEmpForm.lastName.$invalid && showError}"
                                               ng-model="newEmp.lastName" ng-pattern="/^[a-zA-Z]{2,10}$/" required/>
                                        <span class="valid-msg" ng-show="showError">
                                                    {{getError(newEmpForm.lastName.$error)}}
                                                </span>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(newEmpForm.lastName.required)}}
                                                </span>
                                    </div>
                                </div>
                                <div class="form-group col-lg-12 outer">
                                    <div class="form-group col-lg-3">
                                        <label for="salary">Salary:</label>
                                        <input type="text" class="form-control" id="salary" name="salary"
                                               ng-class="{'valid-border': newEmpForm.salary.$invalid && showError}"
                                               ng-model="newEmp.salary" ng-pattern="/^[0-9]+$/" required/>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(newEmpForm.salary.$error, "salary")}}
                                                </span>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(newEmpForm.salary.required)}}
                                                </span>
                                    </div>
                                    <div class="form-group form-group-sm col-md-3">
                                        <label for="gender">Gender:</label>
                                        <select class="form-control custom-select-height" id="gender" name="gender"
                                                ng-class="{'valid-border': newEmpForm.gender.$invalid && showError}"
                                                ng-model="newEmp.gender" required>
                                            <option>Male</option>
                                            <option>Female</option>
                                        </select>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(newEmpForm.gender.$error)}}
                                                </span>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(newEmpForm.gender.required)}}
                                                </span>
                                    </div>
                                    <div class="form-group col-lg-6">
                                        <label for="email">Email:</label>
                                        <input type="email" class="form-control" id="email" name="email"
                                               ng-class="{'valid-border': newEmpForm.email.$invalid && showError}"
                                               ng-model="newEmp.email" required/>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(newEmpForm.email.$error)}}
                                                </span>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(newEmpForm.email.required)}}
                                                </span>
                                    </div>
                                </div>
                                <div class="form-group col-lg-12 outer">
                                    <div class="form-group col-lg-6">
                                        <label for="birthday">Birthday:</label>
                                        <input type="date" class="form-control" id="birthday" name="birthday"
                                               ng-class="{'valid-border': newEmpForm.birthday.$invalid && showError}"
                                               ng-model="newEmp.birthday" required/>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(newEmpForm.birthday.$error)}}
                                                </span>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(newEmpForm.birthday.required)}}
                                                </span>
                                    </div>

                                    <div class="form-group col-lg-6">
                                        <label for="hiredate">Hiredate:</label>
                                        <input type="date" class="form-control" id="hiredate" name="hiredate"
                                               ng-class="{'valid-border': newEmpForm.hiredate.$invalid && showError}"
                                               ng-model="newEmp.hireDate" required/>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(newEmpForm.hiredate.$error)}}
                                                </span>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(newEmpForm.hiredate.required)}}
                                                </span>
                                    </div>
                                </div>
                                <div class="form-group col-lg-12">
                                    <b>Assign as Project Manager for the following projects:</b>
                                    <isteven-multi-select
                                            input-model="projects"
                                            output-model="pmProjects"
                                            button-label="icon name"
                                            item-label="icon name maker"
                                            tick-property="ticked"
                                            orientation="horizontal"
                                            class="center-block">
                                    </isteven-multi-select>
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
            <!-- Update Employee Modal -->
            <div class="modal fade" id="updEmpModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header" style="background-color: #337AB7">
                            <h4 class="modal-title">Update Employee</h4>
                        </div>
                        <div class="modal-body">
                            <form name="updEmpForm" ng-submit="updateEmployee(newEmp, updEmpForm.$valid)" novalidate>
                                <div class="col-lg-12 outer">
                                    <div class="form-group col-lg-6">
                                        <label for="ufirstName">First name:</label>
                                        <input type="text" class="form-control" id="ufirstName" name="ufirstName" value="updEmp.firstName"
                                               ng-class="{'valid-border': updEmpForm.ufirstName.$invalid && showError}"
                                               ng-model="updEmp.firstName" ng-pattern="/^[a-zA-Z]{2,10}$/" required/>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(updEmpForm.ufirstName.$error)}}
                                                </span>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(updEmpForm.ufirstName.required)}}
                                                </span>
                                    </div>
                                    <div class="form-group col-lg-6">
                                        <label for="ulastName">Last name:</label>
                                        <input type="text" class="form-control" id="ulastName" name="ulastName" value="updEmp.lastName"
                                               ng-class="{'valid-border': updEmpForm.ulastName.$invalid && showError}"
                                               ng-model="updEmp.lastName" required>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(updEmpForm.ulastName.$error)}}
                                                </span>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(updEmpForm.ulastName.required)}}
                                                </span>
                                    </div>
                                </div>
                                <div class="col-lg-12 outer">
                                    <div class="form-group col-lg-3">
                                        <label for="usalary">Salary:</label>
                                        <input type="text" class="form-control" id="usalary" name="usalary" value="updEmp.salary"
                                               ng-class="{'valid-border': updEmpForm.ulastName.$invalid && showError}"
                                               ng-model="updEmp.salary" ng-pattern="/^[0-9]+$/" required>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(updEmpForm.usalary.$error, "salary")}}
                                                </span>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(updEmpForm.usalary.required)}}
                                                </span>
                                    </div>
                                    <div class="form-group form-group-sm col-md-3">
                                        <label for="ugender">Gender:</label>
                                        <select class="form-control custom-select-height" id="ugender" name="ugender"
                                                ng-class="{'valid-border': updEmpForm.ugender.$invalid && showError}"
                                                ng-model="updEmp.gender" required>
                                            <option>Male</option>
                                            <option>Female</option>
                                        </select>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(updEmpForm.ugender.$error)}}
                                                </span>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(updEmpForm.ugender.required)}}
                                                </span>
                                    </div>
                                    <div class="form-group col-lg-6">
                                        <label for="uemail">Email:</label>
                                        <input type="email" class="form-control" id="uemail" name="uemail"
                                               ng-class="{'valid-border': updEmpForm.uemail.$invalid && showError}"
                                               ng-model="updEmp.email" value="updEmp.email" required>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(updEmpForm.uemail.$error)}}
                                                </span>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(updEmpForm.uemail.required)}}
                                                </span>
                                    </div>
                                </div>
                                <div class="col-lg-12 outer">
                                    <div class="form-group col-lg-6">
                                        <label for="ubirthday">Birthday:</label>
                                        <input type="date" class="form-control" id="ubirthday" name="ubirthday"
                                               ng-class="{'valid-border': updEmpForm.ubirthday.$invalid && showError}"
                                               ng-model="updEmp.birthday" value="{{updEmp.birthday}}" required>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(updEmpForm.ubirthday.$error)}}
                                                </span>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(updEmpForm.ubirthday.required)}}
                                                </span>
                                    </div>
                                    <div class="form-group col-lg-6">
                                        <label for="uhiredate">Hiredate:</label>
                                        <input type="date" class="form-control" id="uhiredate" name="uhiredate"
                                               ng-class="{'valid-border': updEmpForm.uhiredate.$invalid && showError}"
                                               ng-model="updEmp.hireDate" value="{{updEmp.hireDate}}" required>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(updEmpForm.uhiredate.$error)}}
                                                </span>
                                        <span ng-show="showError" class="valid-msg">
                                                    {{getError(updEmpForm.uhiredate.required)}}
                                                </span>
                                    </div>
                                </div>
                                <div class="form-group col-lg-12">
                                    <b>Assign as Project Manager for the following projects:</b>
                                    <isteven-multi-select
                                            input-model="projects"
                                            output-model="outputBrowsers"
                                            button-label="icon name"
                                            item-label="icon name maker"
                                            tick-property="ticked"
                                            orientation="horizontal"
                                            class="center-block">
                                    </isteven-multi-select>
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Save changes</button>
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close menu</button>
                                </div>
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

<!-- jQuery -->
<script src="../../resources/js/libs/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../../resources/js/libs/bootstrap.min.js"></script>
</body>
</html>