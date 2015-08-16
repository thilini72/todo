<%-- 
    Document   : correct
    Created on : Aug 13, 2015, 1:46:40 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" ng-app="todo">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Page title -->
        <title>to Do List</title>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Angular js Todo-Sortable-List Example"/>
        <meta name="author" content="Jay Kanakiya">

        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/jquery-ui.min.css">
        <link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
        <link rel="stylesheet" href="css/bootstrap-select.css">
        <link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css">
        <link rel="stylesheet" href="css/bootstrap-multiselect.css">



        <link rel="stylesheet" href="css/todo.css">
        <link rel="stylesheet" href="css/font-awesome.css">
        <link rel="stylesheet" href="css/fa_animation.css">
        <link rel="stylesheet" href="css/pe-icon-7-stroke.css" />

        <script src="js/jquery_006.js"></script> 
        <script src="js/jquery-ui.js"></script> 
        <script src="js/metisMenu.js"></script> 
        <!--        <script src="js/icheck.js"></script> -->
        <script src="js/jquery.js"></script> 
        <script src="js/index.js"></script> 
        <!--        <script src="js/sweet-alert.js"></script> -->
        <script src="js/bootstrap-select.js"></script> 
        <script src="js/moment.min.js"></script> 
        <script src="js/bootstrap.js"></script> 
        <script src="js/bootstrap-datetimepicker.min.js"></script> 
        <script src="js/bootstrap-multiselect.js"></script> 
        <script src="js/bootstrap-multiselect-collapsible-groups.js"></script> 
        <script src="js/libs/jquery.min.js"></script>
        <script src="js/libs/jquery-ui.min.js"></script>
        <script src="js/libs/jquery.ui.touch-punch.min.js"></script>
        <script src="js/libs/bootstrap.min.js"></script>
        <script src="js/libs/angular.min.js"></script>
        <script src="js/libs/angular-local-storage.min.js"></script>
        <script src="js/libs/sortable.js"></script>
        <script src="js/app.js"></script>
        <script src="js/directives/angular.editInPlace.js"></script>
        <script src="js/directives/angular.ngEnter.js"></script>
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <style>
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
        <jsp:include page="common/header.jsp"/>
        <!-- Navigation start -->
        <jsp:include page="common/site_menu.jsp"/>
        <!-- Navigation end --> 

        <!-- Main Wrapper -->
        <div style="min-height: 914px;" id="wrapper">


            <div class="normalheader transition animated fadeIn">
                <div class="hpanel">
                    <div class="panel-body">
                        <a class="small-header-action" href="">
                            <div class="clip-header">
                                <i class="fa fa-arrow-up"></i>
                            </div>
                        </a>

                        <div id="hbreadcrumb" class="pull-right m-t-lg">
                            <ol class="hbreadcrumb breadcrumb">
                                <li><a href="#">Home</a></li>
                                <li>
                                    <span>Home</span>
                                </li>
                                <li class="active">
                                    <span>Home </span>
                                </li>
                            </ol>
                        </div>
                        <h2 class="font-light m-b-xs">
                            Home
                        </h2>
                        <small>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est </small>
                    </div>
                </div>
            </div> 

            <div class="content animate-panel">  
                <!--                <div class="row">
                                    <div style="animation-delay: 0.1s;" class="col-lg-12 text-center m-t-md animated-panel zoomIn">
                                        <h2>Call Center Home </h2>
                                    </div>
                                </div>-->
                <div class="row" id="rightcolumn">

                    <div class="container" ng-controller="TodoCtrl" id="playground">
                        <div class="row">
                            <div class="col-xs-3">
                                <div class="list-group">
                                    <a href="#" ng-repeat="todos in model" class="list-group-item" ng-class="{'active' : currentShow === $index}" ng-click="changeTodo($index)" >
                                        <span class="badge">{{todos.list.length}}</span>
                                        {{todos.name}}
                                    </a>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="row">
                                    <div class="col-xs-7">
                                        <div class="input-group">
                                            <span class="input-group-btn">
                                                <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span></button>
                                            </span>
                                            <input type="search" class="form-control" placeholder="Search" ng-model="todoSearch">
                                        </div>
                                    </div>
                                    <div class="col-xs-5">
                                        <ul class="nav nav-pills todo-filter">
                                            <li ng-class="{'active' : show == 'All' }" ng-click="show='All'"><a href="#">All</a></li>
                                            <li ng-class="{'active' : show == 'Incomplete' }" ng-click="show='Incomplete'"><a href="#">Incomplete</a></li>
                                            <li ng-class="{'active' : show == 'Complete' }" ng-click="show='Complete'"><a href="#">Complete</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row" id="todoAdd">
                                    <div class="form-group">
                                        <input class="todoField" id="newTodoField" type="text" ng-model="newTodo" placeholder="Add New Todo" ng-enter>
                                        <button id="todoSubmit" class="btn btn-default" ng-click="addTodo()">Add</button>
                                    </div>
                                </div>
                                <div class="row">
                                    <ul class="list-unstyled" ng-repeat="todos in model track by $index" ui-sortable="todoSortable" ng-model="todos.list" ng-show="$index === currentShow">
                                        <li class="todoTask" ng-repeat="todo in todos.list | filter:showFn | filter :todoSearch ">
                                            <input class="todoCheckbox" ng-model="todo.isDone" type="checkbox">
                                            <label class="todoCheckboxlabel" ></label>
                                        <edit-in-place value="todo.taskName"></edit-in-place>
                                        <button type="button" class="close pull-right" aria-hidden="true" ng-click="deleteTodo(todo)">&times;</button>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="debug">
                                <p class="text-info">{{ model | json}}</p>
                            </div>
                        </div>
                    </div>
                    <div class="row" id="rightcolumn">

                    </div>
                </div>
            </div>



            <!--        footer strat-->
            <jsp:include page="common/footer.jsp"/>
            <!--footer end-->
            <!-- Vendor scripts --> 






            <script type="text/javascript" async>
                var _gaq = _gaq || [];
                _gaq.push(['_setAccount', 'UA-33060097-3']);
                _gaq.push(['_setDomainName', 'jaykanakiya.com']);
                _gaq.push(['_trackPageview']);

                (function() {
                    var ga = document.createElement('script');
                    ga.type = 'text/javascript';
                    ga.async = true;
                    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                    var s = document.getElementsByTagName('script')[0];
                    s.parentNode.insertBefore(ga, s);
                })();
            </script>
    </body>
</html>