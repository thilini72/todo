
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" ng-app="todo">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>to Do List</title>


        <!-- css  -->
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/jquery-ui.min.css">
        <link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
        <link rel="stylesheet" href="css/bootstrap-select.css">
        <link rel="stylesheet" href="css/bootstrap-clockpicker.min.css">
        <link rel="stylesheet" href="css/jquery-clockpicker.min.css">
        <link rel="stylesheet" href="css/bootstrap-multiselect.css">
        <link rel="stylesheet" type="text/css" href="css/xeditable.css">
        <!-- App styles -->
        <link rel="stylesheet" href="css/custom.css">
        <!--font css  -->
        <link rel="stylesheet" href="css/font-awesome.css">
        <link rel="stylesheet" href="css/fa_animation.css">
        <link rel="stylesheet" href="css/pe-icon-7-stroke.css" />
        <script src="js/Chart.js"></script>

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
              <script src="js/html5shiv.min.js"></script>
              <script src="js/respond.min.js"></script>
            <![endif]-->
        <style>
            .popover{z-index: 999999}
            * html #rightcolumn{ /*IE only style*/
                height: 400px;
            }
        </style>
    </head>
    <body ng-controller="TodoCtrl" ng-init="init()">

        <!--[if lt IE 7]>
        <p class="alert alert-danger">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]--> 

        <!-- Header -->
        <div id="header">

            <nav role="navigation">
                <div class="header-link hide-menu"><i class="fa fa-bars"></i></div>
                <div class="small-logo">
                    <span class="text-primary" style="color:#f37422">
                        <img src="images/logo.png" width="40" alt="logoroof" style="margin:-2px 1px 7px 7px">
                        Welcome ToDay                    
                    </span> 

                </div>
                <div class="hidden-lg hidden-md">

                    <a><i class="fa-plus  fa" style="position: absolute;right:89px;top: 20px;font-size:16px;color: #9D9FA2" data-toggle="modal" data-target="#myModal"></i></a>
                    <a class="dropdown-toggle label-menu-corner" href="#" data-toggle="dropdown"> <i class="fa fa-envelope" style="font-size:16px;position: absolute;right: 24px;
                                                                                                     top: 20px;color: #9D9FA2"></i><span class="label label-success">1</span> </a>
                    <ul class="dropdown-menu hdropdown notification animated flipInX">
                        <div class="hpanel stats">
                            <div class="panel-body h-200">
                                <div class="stats-title pull-left">
                                    <h4>Notification</h4>
                                </div>

                                <div class="m-t-xl">
                                    <h2 class="text-success">8:30 am</h2>
                                    <span class="font-bold no-margins">
                                        Bank of Ceylon
                                    </span>
                                    <br/>
                                    <small>
                                        Here is going the task of next time have to do, Lorem Ipsum is simply dummy text of the printing and <strong>typesetting industry</strong>. Lorem Ipsum has been.
                                    </small>
                                </div>
                                <div class="m-t-xl">
                                    <h2 class="text-success">9:30 am</h2>
                                    <span class="font-bold no-margins">
                                        Allionz
                                    </span>
                                    <br/>
                                    <small>
                                        Here is going the next task of next time have to do, Lorem Ipsum is s <strong>typesetting industry</strong>. Lorem Ipsum has been.
                                    </small>
                                </div>


                            </div>
                        </div>
                    </ul>

                </div>
                <div id="logo" class="light-version">
                    <h4 class="font-extra-bold m-b-xs" style="margin-top: -3px;color:#f37422"> <img src="images/logo.png" width="40" alt="logoroof" style="margin:-2px 1px 7px 7px">Welcome ToDay</h4>
                </div>
                <div class="navbar-right">
                    <ul class="nav navbar-nav no-borders">
                        <li>
                            <a>  <i class="fa-plus  fa" data-toggle="modal" data-target="#myModal"  style="font-size:16px;color: "></i></a>
                        </li>
                        <li class="dropdown"> <a class="dropdown-toggle label-menu-corner" href="#" data-toggle="dropdown"> <i class="fa fa-envelope" style="font-size:16px"></i><span class="label label-danger">2</span> </a>

                            <ul class="dropdown-menu hdropdown notification animated flipInX">
                                <div class="hpanel stats">
                                    <div class="panel-body h-200">
                                        <div class="stats-title pull-left">
                                            <h4>Notification</h4>
                                        </div>

                                        <div class="m-t-xl">
                                            <h2 class="text-success">8:30 am</h2>
                                            <span class="font-bold no-margins">
                                                Bank of Ceylon
                                            </span>
                                            <br/>
                                            <small>
                                                Here is going the task of next time have to do, Lorem Ipsum is simply dummy text of the printing and <strong>typesetting industry</strong>. Lorem Ipsum has been.
                                            </small>
                                        </div>
                                        <div class="m-t-xl">
                                            <h2 class="text-success">9:30 am</h2>
                                            <span class="font-bold no-margins">
                                                Allionz
                                            </span>
                                            <br/>
                                            <small>
                                                Here is going the next task of next time have to do, Lorem Ipsum is s <strong>typesetting industry</strong>. Lorem Ipsum has been.
                                            </small>
                                        </div>


                                    </div>
                                </div>
                            </ul>
                        </li>
                        <li> <i class="fa-cog fa" style="font-size:16px;color:#9d9fa2 "></i>   </li>
                    </ul>

                </div>
            </nav>
        </div>
        <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->

                <div class="modal-content">
                    <div class="hpanel hblue">
                        <div class="panel-body">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4>Add Task</h4>
                            <div class="row" id="todoAdd">
                                <div class="form-group col-lg-12">
                                    <input class="todoField" id="newTodoField" type="text" ng-model="newTodo" placeholder="Add New Task" ng-enter>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-8">
                                        <select id="projectsList" class="form-control"  ng-model="selectedProject" data-live-search="true" data-live-search-placeholder="Search" data-actions-box="true">
                                            <option>Bank of Ceylon</option>
                                            <option> Allions</option>
                                            <option ng-repeat="project in projects" ng-model="pcolor" ng-enter><!--  <i class="glyphicon glyphicon-record" style="margin-right: 2px;  color: {{project.color}}"></i><span style="color:{{project.color}}">HI</span>{{project.color}}--> {{project.projectName}}</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-4">
                                        <span type="button" id="check-minutes"> <i class="fa fa-clock-o fa-2x"></i></span>
                                        <input class="form-control" id="single-input" style=" width: 90px" value="" placeholder="08.00 a.m" ng-model="time" ng-enter>

                                    </div>
                                </div>
<!--
                                <ul class="list-unstyled">
                                    <li class="todoTask" ng-repeat="project in projects"><i class="glyphicon glyphicon-record" style="margin-right: 2px;  color: {{project.color}}"></i>{{project.projectName}}</li>
                                </ul>-->

                                <div class="form-group">
                                    <button id="todoSubmit" class="btn btn-danger btn-sm pull-left" style="margin-left: 20px;" ng-click="addTodo()">Add task</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>



        <div  id="myModal2" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->

                <div class="modal-content">
                    <div class="hpanel hblue">
                        <div class="panel-body">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4>Edit Task</h4>
                            <div class="row" id="todoAdd">
                                <div class="form-group col-lg-12">
                                    <input class="todoField" id="newTodoField" type="text" value="This task want to change" >
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-8">
                                        <select id="projectsList" class="form-control"  ng-model="selectedProject" data-live-search="true" data-live-search-placeholder="Search" data-actions-box="true">
                                            <option ng-repeat="project in projects" ng-model="pcolor" ng-enter><i class="glyphicon glyphicon-record" style="margin-right: 2px;  color: {{project.color}}"></i><span style="color:{{project.color}}">HI</span>{{project.color}} {{project.projectName}}</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-4">
                                        <span type="button" id="check-minutes2"> <i class="fa fa-clock-o fa-2x"></i></span>
                                        <input class="form-control" id="single-input2" style=" width: 90px" value="" placeholder="08.00 a.m" ng-model="time" ng-enter>

                                    </div>
                                </div>

                                <ul class="list-unstyled">
                                    <li class="todoTask" ng-repeat="project in projects"><i class="glyphicon glyphicon-record" style="margin-right: 2px;  color: {{project.color}}"></i>{{project.projectName}}</li>
                                </ul>

                                <div class="form-group">
                                    <button id="todoSubmit" class="btn btn-danger btn-sm pull-left" style="margin-left: 20px;" ng-click="addTodo()">Add task</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>


        <script>
            $('#myModal,#myModal2').on('shown.bs.modal', function() {
                $('#myInput').focus();
            });
        </script>

        <!-- Navigation start -->
        <aside id="menu" >
            <div id="navigation">
                <div class="profile-picture"> <a href="#"> <img src="images/profile.jpg" class="img-circle m-b" alt="logo"> </a>
                    <div class="stats-label text-color"> <span class="font-extra-bold font-uppercase">Welcome Thilini</span>
                        <div class="dropdown"> <a aria-expanded="false" class="dropdown-toggle" href="#" data-toggle="dropdown"> <small class="text-muted">Setting <b class="caret"></b></small> </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li><a href="#">Theame</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- site menu start-->
                <ul class="nav" id="side-menu">
                    <div class="list-group">
                        <li>
                            <a href="" ng-repeat="todos in model" class="list-group-item" ng-class="{'active' : currentShow === $index}" ng-click="changeTodo($index)" >
                                <span class="badge">{{todos.list.length+3}}</span>
                                <span class="nav-label"> {{todos.name+ " task list"}}</span>
                            </a>
                        </li>
                    </div>
                </ul>

                <div class="hpanel" ng-controller="TodoCtrl">
                    <ul class="nav nav-tabs">
                        <li class="active" style="background-color: #F7F9FA;width: 50%;"><a data-toggle="tab" href="#tab-3">  <i style="margin-right:6px" class="fa fa-medkit"></i>Project</a></li>
                        <li style="background-color: #F7F9FA;width: 50%;"><a data-toggle="tab" href="#tab-4"> <i style="margin-right:6px" class="fa fa-group"></i>Peronal</a></li>
                    </ul>

                    <div class="tab-content">
                        <div id="tab-3" class="tab-pane active">
                            <div class="panel-body">
                                <div style="margin: 10px">
                                    <ul class="list-unstyled">
                                        <li class="todoTask"><i class="glyphicon glyphicon-record" style="margin-right: 2px;  color:#f9972f"></i>Bank of Ceylon<button type="button" class="close pull-right" aria-hidden="true" >&times;</button></li>
                                        <li class="todoTask"><i class="glyphicon glyphicon-record" style="margin-right: 2px;  color:#29cf21"></i>Allions<button type="button" class="close pull-right" aria-hidden="true" >&times;</button></li>
                                        <li class="todoTask" ng-repeat="project in projects"><i class="glyphicon glyphicon-record" style="margin-right: 2px;  color: {{project.color}}"></i>{{project.projectName}}  <button type="button" class="close pull-right" aria-hidden="true" >&times;</button></li>
                                    </ul>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse ">
                                    <div class="panel-body">
                                        <p><input class="" id="" type="text" ng-model="newProject" placeholder="Add New Project"></p>
                                        <br> <button id="addProject" class="btn btn-danger btn-sm"   ng-click="addNewProject(newProject)">Add Project</button><button class="btn btn-default btn-sm" style="border:none">Cancel</button>
                                    </div>
                                </div>
                                <div class="pull-right" style="color:red"><i class="fa fa-plus-square"></i>
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="color:red">Add new project</a>
                                </div> 
                            </div>
                        </div>
                        <div id="tab-4" class="tab-pane">
                            <div class="panel-body">
                                <div style="margin: 10px">
                                    <ul class="list-unstyled">
                                        <li class="todoTask"><i class="glyphicon glyphicon-record" style="margin-right: 2px;  color:#21cfc9"></i>Check Mails<button type="button" class="close pull-right" aria-hidden="true" >&times;</button></li>
                                        <li class="todoTask"><i class="glyphicon glyphicon-record" style="margin-right: 2px;  color:#cfc921"></i>Account Balance<button type="button" class="close pull-right" aria-hidden="true" >&times;</button></li>
                                        <li class="todoTask" ng-repeat="project in projects"><i class="glyphicon glyphicon-record" style="margin-right: 2px;  color: {{project.color}}"></i>{{project.projectName}} <button type="button" class="close pull-right" aria-hidden="true" >&times;</button></li>
                                    </ul>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse ">
                                    <div class="panel-body">
                                        <p><input class="" id="" type="text" ng-model="newProject" placeholder="Add New Project"></p>
                                        <br> <button id="addProject" class="btn btn-danger btn-sm"   ng-click="addNewProject(newProject)">Add Project</button><button class="btn btn-default btn-sm" style="border:none">Cancel</button>
                                    </div>
                                </div>
                                <div class="pull-right" style="color:red"><i class="fa fa-plus-square"></i>
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" style="color:red">Add new project</a>
                                </div>
                            </div>
                        </div>

                    </div>


                    <div class="panel-body">
                        <script src="js/Chart.js"></script>
                        <div style="width:100%">
                            <div>
                                <canvas id="canvas" height="450" width="600"></canvas>
                            </div>
                        </div>
                        <script>
            var randomScalingFactor = function() {
                return Math.round(Math.random() * 100)
            };
            var lineChartData = {
                labels: ["Sunday", "Monday", "Tuesday", "Wendsday", "Thursday", "Friday", "Saturday"],
                datasets: [
                    {
                        label: "My First dataset",
                        fillColor: "rgba(220,220,220,0.2)",
                        strokeColor: "rgba(220,220,220,1)",
                        pointColor: "rgba(220,220,220,1)",
                        pointStrokeColor: "#fff",
                        pointHighlightFill: "#fff",
                        pointHighlightStroke: "rgba(220,220,220,1)",
                        data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
                    },
                    {
                        label: "My Second dataset",
                        fillColor: "rgba(151,187,205,0.2)",
                        strokeColor: "rgba(151,187,205,1)",
                        pointColor: "rgba(151,187,205,1)",
                        pointStrokeColor: "#fff",
                        pointHighlightFill: "#fff",
                        pointHighlightStroke: "rgba(151,187,205,1)",
                        data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
                    }
                ]

            }

            window.onload = function() {
                var ctx = document.getElementById("canvas").getContext("2d");
                window.myLine = new Chart(ctx).Line(lineChartData, {
                    responsive: true
                });
            }


                        </script>  </div>

                </div>
            </div>
        </aside>



        <!-- Navigation end --> 

        <!-- Main Wrapper -->
        <div style="min-height: 914px;" id="wrapper">
            <div class="content animate-panel"> 

                <div class="hpanel">
                    <div class="panel-body">

                        <h2 class="font-light m-b-xs">
                            Today list of Task
                        </h2>
                        <small>Welcome Today List,We are support to summerize your day today task to remind </small>
                    </div>
                </div>



                <script type="text/javascript">
                    $(document).ready(function() {
                        $(".btn").click(function() {
                            $("#collapseTwo").collapse({
                                toggle: false
                            });
                        });
                    });
                </script>

                <div ng-controller="TodoCtrl" id="playground">
                    <div class="col-lg-12" style="padding-right:0px;padding-left:0px">
                        <div class="hpanel">
                            <div class="panel-heading hbuilt">
                                <div class="text-center p-xs font-normal">
                                    <div class="input-group">
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-search"></span></span> <input type="text" placeholder="Search" ng-model="todoSearch" style=" width: 50%" class="form-control todo-form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-12 m-b-md">
                                        <ul class="nav nav-tabs todo-filter">
                                            <li><a  href=""><i class="fa fa-refresh" style="margin-right:4px"></i>Refresh</a></li>
                                            <li class="active" ng-class="{'active' : show == 'All' }" ng-click="show='All'"><a  href="">All</a></li>
                                            <li class="" ng-class="{'active' : show == 'Incomplete' }" ng-click="show='Incomplete'"><a  href="">Incomplete</a></li>
                                            <li class="" ng-class="{'active' : show == 'Complete' }" ng-click="show='Complete'"><a  href="">Complete</a></li>
                                        </ul>
                                    </div>

                                </div>
                                <div class="table-responsive">
                                    <table class="table table-hover table-mailbox">
                                        <tbody class="v-timeline vertical-container animate-panel" data-child="vertical-timeline-block" data-delay="1"     ng-repeat="todos in model track by $index" ui-sortable="todoSortable" ng-model="todos.list" ng-show="$index === currentShow">
                                            <tr   ng-repeat="todo in todos.list | filter:showFn | filter :todoSearch ">
                                                <td  style=" width:5%" ><div class="vertical-timeline-icon navy-bg">
                                                        <i class="fa fa-calendar"></i>
                                                    </div></td>
                                                <td style=" width:5%" class="">
                                                    <input class="todoCheckbox" ng-model="todo.isDone" type="checkbox">

                                                </td>
                                                <td style=" width:5%" ng-model="todo.pcolor"> <i class="glyphicon glyphicon-record" style="margin-right: 2px;  color: {{project.color}}"></i></td>

                                                <!--                                                <td><i class="glyphicon glyphicon-record"  style="color:{{todo.pcolor}}"></i></td>-->
                                                <td style=" width:20%">{{todo.project}}</td>
                                                <td style=" width:45%">{{todo.taskName}}</td>
                                                <td style=" width:10%" class="text-right mail-date" >{{todo.time}}</td>
                                                <td style=" width:5%" class="todo-edit"><a href=""><i class="glyphicon glyphicon-pencil " data-toggle="modal" data-target="#myModal2"  ></i></a></td>

                                                <td style=" width:5%"> <button type="button" class="close pull-right"  aria-hidden="true" ng-click="deleteTodo(todo)">&times;</button>
                                                </td>
                                            </tr>
 <tr>
                                                <td  style=" width:5%" >
                                                    <div class="vertical-timeline-icon navy-bg">
                                                        <i class="fa fa-calendar"></i>
                                                    </div>
                                                </td>
                                                <td style=" width:5%"><input class="todoCheckbox"type="checkbox"></td>
                                                <td style=" width:5%"> <i class="glyphicon glyphicon-record" style="margin-right: 2px;  color:#f9972f"></i></td>
                                                <td style=" width:20%">Bank of Ceylon</td>
                                                <td style=" width:45%">Meeting at Bank of Ceylon for requirement gathering </td>
                                                <td style=" width:10%" class="text-right mail-date" >01:40</td>
                                                <td style=" width:5%" class="todo-edit"><a href=""><i class="glyphicon glyphicon-pencil " data-toggle="modal" data-target="#myModal2"  ></i></a></td>
                                                <td style=" width:5%"> <button type="button" class="close pull-right"  aria-hidden="true" ng-click="deleteTodo(todo)">&times;</button>
                                                </td>
                                            </tr> 
                                            <tr>
                                                <td  style=" width:5%" >
                                                    <div class="vertical-timeline-icon navy-bg">
                                                        <i class="fa fa-calendar"></i>
                                                    </div>
                                                </td>
                                                <td style=" width:5%"><input class="todoCheckbox"type="checkbox"></td>
                                                <td style=" width:5%"> <i class="glyphicon glyphicon-record" style="margin-right: 2px;  color:#29cf21"></i></td>
                                                <td style=" width:20%">Allions</td>
                                                <td style=" width:45%">Meeting with chairman Mr.Weerasinghe about EPF Project</td>
                                                <td style=" width:10%" class="text-right mail-date" >11:30</td>
                                                <td style=" width:5%" class="todo-edit"><a href=""><i class="glyphicon glyphicon-pencil " data-toggle="modal" data-target="#myModal2"  ></i></a></td>
                                                <td style=" width:5%"> <button type="button" class="close pull-right"  aria-hidden="true" ng-click="deleteTodo(todo)">&times;</button>
                                                </td>
                                            </tr>
                                              <tr>
                                                <td  style=" width:5%" >
                                                    <div class="vertical-timeline-icon navy-bg">
                                                        <i class="fa fa-calendar"></i>
                                                    </div>
                                                </td>
                                                <td style=" width:5%"><input class="todoCheckbox"type="checkbox"></td>
                                                <td style=" width:5%"> <i class="glyphicon glyphicon-record" style="margin-right: 2px;  color:#f9972f"></i></td>
                                                <td style=" width:20%">Bank of Ceylon</td>
                                                <td style=" width:45%">Meeting at Bank of Ceylon for requirement gathering </td>
                                                <td style=" width:10%" class="text-right mail-date" >10:40</td>
                                                <td style=" width:5%" class="todo-edit"><a href=""><i class="glyphicon glyphicon-pencil " data-toggle="modal" data-target="#myModal2"  ></i></a></td>
                                                <td style=" width:5%"> <button type="button" class="close pull-right"  aria-hidden="true" ng-click="deleteTodo(todo)">&times;</button>
                                                </td>
                                            </tr> 
                                            <tr>
                                                <td  style=" width:5%" >
                                                    <div class="vertical-timeline-icon navy-bg">
                                                        <i class="fa fa-calendar"></i>
                                                    </div>
                                                </td>
                                                <td style=" width:5%"><input class="todoCheckbox"type="checkbox"></td>
                                                <td style=" width:5%"> <i class="glyphicon glyphicon-record" style="margin-right: 2px;  color:#29cf21"></i></td>
                                                <td style=" width:20%">Allions</td>
                                                <td style=" width:45%">Meeting with chairman Mr.Weerasinghe about EPF Project</td>
                                                <td style=" width:10%" class="text-right mail-date" >09:30</td>
                                                <td style=" width:5%" class="todo-edit"><a href=""><i class="glyphicon glyphicon-pencil " data-toggle="modal" data-target="#myModal2"  ></i></a></td>
                                                <td style=" width:5%"> <button type="button" class="close pull-right"  aria-hidden="true" ng-click="deleteTodo(todo)">&times;</button>
                                                </td>
                                            </tr>
                                             <tr>
                                                <td  style=" width:5%" >
                                                    <div class="vertical-timeline-icon navy-bg">
                                                        <i class="fa fa-calendar"></i>
                                                    </div>
                                                </td>
                                                <td style=" width:5%"><input class="todoCheckbox"type="checkbox"></td>
                                                <td style=" width:5%"> <i class="glyphicon glyphicon-record" style="margin-right: 2px;  color:#21cfc9"></i></td>
                                                <td style=" width:20%">Check Mails</td>
                                                <td style=" width:45%">Day today mail checking </td>
                                                <td style=" width:10%" class="text-right mail-date" >08:40</td>
                                                <td style=" width:5%" class="todo-edit"><a href=""><i class="glyphicon glyphicon-pencil " data-toggle="modal" data-target="#myModal2"  ></i></a></td>
                                                <td style=" width:5%"> <button type="button" class="close pull-right"  aria-hidden="true" ng-click="deleteTodo(todo)">&times;</button>
                                                </td>
                                            </tr> 
                                            <tr class="todo-read">
                                                <td  style=" width:5%" >
                                                    <div class="vertical-timeline-icon navy-bg">
                                                        <i class="fa fa-calendar"></i>
                                                    </div>
                                                </td>
                                                <td style=" width:5%"><input class="todoCheckbox"type="checkbox"></td>
                                                <td style=" width:5%"> <i class="glyphicon glyphicon-record" style="margin-right: 2px;  color:#f9972f"></i></td>
                                                <td style=" width:20%">Bank of Ceylon</td>
                                                <td style=" width:45%">Workshop at Company </td>
                                                <td style=" width:10%" class="text-right mail-date" >08:10</td>
                                                <td style=" width:5%"></td>
                                                <td style=" width:5%"></td>
                                            </tr> 
                                            
                                            
                                            <tr>
                                                <td  style=" width:5%" >
                                                    <div class="vertical-timeline-icon navy-bg">
                                                        <i class="fa fa-calendar"></i>
                                                    </div>
                                                </td>
                                                <td style=" width:5%"><input class="todoCheckbox"type="checkbox"></td>
                                                <td style=" width:5%"> <i class="glyphicon glyphicon-record" style="margin-right: 2px;  color:#f9972f"></i></td>
                                                <td style=" width:20%">Bank of Ceylon</td>
                                                <td style=" width:45%">Meeting at Bank of Ceylon for requirement gathering </td>
                                                <td style=" width:10%" class="text-right mail-date" >07:40</td>
                                                <td style=" width:5%" class="todo-edit"><a href=""><i class="glyphicon glyphicon-pencil " data-toggle="modal" data-target="#myModal2"  ></i></a></td>
                                                <td style=" width:5%"> <button type="button" class="close pull-right"  aria-hidden="true" ng-click="deleteTodo(todo)">&times;</button>
                                                </td>
                                            </tr> 
                                            <tr>
                                                <td  style=" width:5%" >
                                                    <div class="vertical-timeline-icon navy-bg">
                                                        <i class="fa fa-calendar"></i>
                                                    </div>
                                                </td>
                                                <td style=" width:5%"><input class="todoCheckbox"type="checkbox"></td>
                                                <td style=" width:5%"> <i class="glyphicon glyphicon-record" style="margin-right: 2px;  color:#29cf21"></i></td>
                                                <td style=" width:20%">Allions</td>
                                                <td style=" width:45%">Meeting with chairman Mr.Weerasinghe about EPF Project</td>
                                                <td style=" width:10%" class="text-right mail-date" >07:30</td>
                                                <td style=" width:5%" class="todo-edit"><a href=""><i class="glyphicon glyphicon-pencil " data-toggle="modal" data-target="#myModal2"  ></i></a></td>
                                                <td style=" width:5%"> <button type="button" class="close pull-right"  aria-hidden="true" ng-click="deleteTodo(todo)">&times;</button>
                                                </td>
                                            </tr>
                                             <tr>
                                                <td  style=" width:5%" >
                                                    <div class="vertical-timeline-icon navy-bg">
                                                        <i class="fa fa-calendar"></i>
                                                    </div>
                                                </td>
                                                <td style=" width:5%"><input class="todoCheckbox"type="checkbox"></td>
                                                <td style=" width:5%"> <i class="glyphicon glyphicon-record" style="margin-right: 2px;  color:#21cfc9"></i></td>
                                                <td style=" width:20%">Check Mails</td>
                                                <td style=" width:45%">Day today mail checking </td>
                                                <td style=" width:10%" class="text-right mail-date" >07:20</td>
                                                <td style=" width:5%" class="todo-edit"><a href=""><i class="glyphicon glyphicon-pencil " data-toggle="modal" data-target="#myModal2"  ></i></a></td>
                                                <td style=" width:5%"> <button type="button" class="close pull-right"  aria-hidden="true" ng-click="deleteTodo(todo)">&times;</button>
                                                </td>
                                            </tr> 
                                            <tr class="todo-read">
                                                <td  style=" width:5%" >
                                                    <div class="vertical-timeline-icon navy-bg">
                                                        <i class="fa fa-calendar"></i>
                                                    </div>
                                                </td>
                                                <td style=" width:5%"><input class="todoCheckbox"type="checkbox"></td>
                                                <td style=" width:5%"> <i class="glyphicon glyphicon-record" style="margin-right: 2px;  color:#f9972f"></i></td>
                                                <td style=" width:20%">Bank of Ceylon</td>
                                                <td style=" width:45%">Workshop at Company </td>
                                                <td style=" width:10%" class="text-right mail-date" >07:00</td>
                                                <td style=" width:5%"></td>
                                                <td style=" width:5%"></td>
                                            </tr> 






                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--                    <div class="row">
                                            <div class="debug">
                                                <p class="text-info">{{ model | json}}</p>
                                            </div>
                                        </div>-->
                </div>

            </div>
        </div>
        <!-- footer strat-->


        <div class="row" style="background-color: #EDF0F5;border-top: 1px #E4E5E7 solid;padding-right: 4%;padding-left: 4%">
            <div class="page-footer pull-right">
                <div class="page-footer-inner primary-font"><small> Copyright © Welcome ToDay All rights Reserved. Solution by |Thilini Ramawickrama.</small>
                </div>
            </div>
        </div>

        <!--footer end-->
        <!--start scripts --> 
        
        <script src="js/libs/jquery.min.js"></script>
        <script src="js/libs/jquery-ui.min.js"></script>
        <script src="js/libs/jquery.ui.touch-punch.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/bootstrap-select.js"></script> 
        <script src="js/bootstrap-clockpicker.min.js"></script> 
        <script src="js/jquery-clockpicker.min.js"></script> 
        <script src="js/bootstrap-multiselect.js"></script> 
        <script src="js/bootstrap-multiselect-collapsible-groups.js"></script> 

        <script src="js/libs/angular.min.js"></script>
        <script src="js/libs/angular-local-storage.min.js"></script>
        <script src="js/libs/sortable.js"></script>
        <script src="js/app.js"></script> 
        <script src="js/directives/angular.editInPlace.js"></script>
        <script src="js/directives/angular.ngEnter.js"></script>
              
        <script src="js/custom.js"></script> 
        
        <!-- end scripts --> 
        <script type="text/javascript">
                    var input = $('#single-input,#single-input2').clockpicker({
                        placement: 'bottom',
                        align: 'left',
                        autoclose: true,
                        'default': 'now'
                    });

                    // Manually toggle to the minutes view
                    $('#check-minutes,#check-minutes2').click(function(e) {
                        // Have to stop propagation here
                        e.stopPropagation();
                        input.clockpicker('show')
                                .clockpicker('toggleView', 'minutes');
                    });
        </script>

    </body>
</html>