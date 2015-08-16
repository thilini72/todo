<%-- 
    Document   : index
    Created on : Jul 14, 2015, 11:16:50 AM
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

        <script type="text/javascript">
            function ajaxpage(url, containerid) {
                var requestUrl = url;
                $.ajax({
                    url: requestUrl,
                    dataType: 'html',
                    success: function(data) {
                        $('#' + containerid).html(data);
                    }
                });
            }
        </script>

        <!--<link rel="shortcut icon" type="image/ico" href="favicon.ico" />-->
        <!-- Vendor styles -->
        <!--        <link rel="stylesheet" href="css/metisMenu.css">-->
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <!--        <link rel="stylesheet" href="css/sweet-alert.css">-->
        <link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
        <link rel="stylesheet" href="css/bootstrap-select.css">
        <link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css">
        <link rel="stylesheet" href="css/bootstrap-multiselect.css">

        <!-- App styles -->
        <link rel="stylesheet" href="css/todo.css">
        <link rel="stylesheet" href="css/font-awesome.css">
        <link rel="stylesheet" href="css/fa_animation.css">
        <link rel="stylesheet" href="css/pe-icon-7-stroke.css" />
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/xeditable.css">
        <script src="js/libs/angular.min.js"></script>
        <script src="js/libs/xeditable.js"></script>
        <script type="text/javascript">
            var app = angular.module("app", ["xeditable"]);

            app.run(function(editableOptions) {
                editableOptions.theme = 'bs3';
            });

            app.controller('Ctrl', function($scope) {
                $scope.user = {
                    name: 'awesome user'
                };
            });

        </script>




        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
              <script src="js/html5shiv.min.js"></script>
              <script src="js/respond.min.js"></script>
            <![endif]-->
        <style>
            * html #rightcolumn{ /*IE only style*/
                height: 400px;
            }
            div[ng-app] { margin: 50px; }
        </style>
    </head>
    <body class="">

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
                    <div ng-app="app" ng-controller="Ctrl">
                        <a href="#" editable-text="user.name">{{ user.name || 'empty' }}</a>
                    </div>
                </div>
            </div>
        </div>



        <!--        footer strat-->
        <jsp:include page="common/footer.jsp"/>
        <!--footer end-->
        <!-- Vendor scripts --> 

        <script src="js/jquery_006.js"></script> 
        <script src="js/bootstrap.js"></script> 
        <script src="js/jquery-ui.js"></script> 
        <script src="js/metisMenu.js"></script> 
        <!--        <script src="js/icheck.js"></script> -->
        <script src="js/jquery.js"></script> 
        <script src="js/index.js"></script> 
        <!--        <script src="js/sweet-alert.js"></script> -->
        <script src="js/bootstrap-select.js"></script> 
        <script src="js/moment.min.js"></script> 
        <script src="js/bootstrap-datetimepicker.min.js"></script> 
        <script src="js/bootstrap-multiselect.js"></script> 
        <script src="js/bootstrap-multiselect-collapsible-groups.js"></script> 


        <!-- App scripts --> 
        <script src="js/homer.js"></script> 
        <script src="js/todo.js"></script> 
        <!--modal display start--> 



    </body>
</html>