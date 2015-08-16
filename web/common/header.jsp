<%-- 
    Document   : header
    Created on : Jul 14, 2015, 9:10:16 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div id="header">
    <div class="color-line"> </div>
    <nav role="navigation">
        <div class="header-link hide-menu"><i class="fa fa-bars"></i></div>
        <div class="small-logo"> <span class="text-primary" style="color:#f37422"> <img src="images/login_page/icon1.png" width="60" alt="logoroof" style="margin:-26px -24px 7px 7px">Home Lands Holding (pvt) Ltd. </span> </div>
        <div id="logo" class="light-version">
            <h4 class="font-extra-bold m-b-xs" style="margin-top: 15px;color:#f37422"> <img src="images/login_page/icon1.png" width="60" alt="logoroof" style="margin:-26px -24px 7px 7px">Home Lands Holding (pvt) Ltd.</h4>
        </div>
        <div class="navbar-right">







            <ul class="nav navbar-nav no-borders">
                <li>
                    <a>  <i class="fa-plus  fa" data-toggle="modal" data-target="#myModal"  style="font-size:16px;color: "></i></a></li>
                <li class="dropdown"> <a class="dropdown-toggle label-menu-corner" href="#" data-toggle="dropdown"> <i class="fa fa-envelope" style="font-size:16px"></i><span class="label label-success">1</span> </a>
                    <ul class="dropdown-menu hdropdown notification animated flipInX">
                        <li> <span class="label label-success">NEW</span><input type="text" class="form-control" id="" placeholder="Add new task"></li>
                        <li class="summary"><a href="#">See all notifications</a></li>
                    </ul>
                </li>
                <li class="dropdown"> <a href="javascript:ajaxpage('content/change_password.jsp', 'rightcolumn');"> <i class="fa-cog fa" style="font-size:16px;color:#9d9fa2 "></i> </a> </li>

            </ul>
        </div>
    </nav>
</div>
<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Add Task</h4>
            </div>
            <div class="modal-body">
                <div class="row" id="todoAdd">
                    <div class="form-group">
                        <input class="todoField" id="newTodoField" type="text" ng-model="newTodo" placeholder="Add New Task" ng-enter>
                    </div>
                    <div class="form-group col-lg-12">
                        <label class="col-lg-4">Select Project </label><br>
                        <div class="col-lg-8">

                            <!--                        <div ng-app ng-controller="MyCtrl">
                                <select ng-model="ampm" ng-options="currOption for currOption in $scope.ampm"></select>
                                AM/PM: {{ampm}}
                            </div> 
                            -->
                            <!--                 <div ng-app ng-controller="MyCtrl">  <select ng-model="selectedItem">
                                    <option ng-repeat="item in items" value="{{item.age}}">{{item.name}}</option>
                                                 </select></div>
                            -->





                            <select id="projectsList" class="form-control"  ng-model="selectedProject" data-live-search="true" data-live-search-placeholder="Search" data-actions-box="true">
                                <optgroup label="filter1">
                                    <option ng-repeat="project in projects">{{project.projectName}}</option>

                                </optgroup>
                            </select>
                        </div>

                        <!--                                             <div class='input-group date' id='datetimepicker3'>
                                                                            <input type='text' class="form-control" />
                                                                            <span class="input-group-addon">
                                                                                <span class="glyphicon glyphicon-time"></span>
                                                                            </span>
                                                                        </div>-->
                    </div>


                    <ul class="list-unstyled">
                        <li class="todoTask" ng-repeat="project in projects"><i class="glyphicon glyphicon-record" style="margin-right: 2px;  color: {{project.color}}"></i>{{project.projectName}}  <button type="button" class="close pull-right" aria-hidden="true" ng-click="deleteTodo(newProject)">&times;</button></li>
                    </ul>


                    <div class="form-group">
                        <input class="" id="" type="text" ng-model="time" placeholder="Add New Task" ng-enter>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button id="todoSubmit" class="btn btn-default" ng-click="addTodo()">Add task</button>
            </div>
        </div>

    </div>
</div>

<script>
    $('#myModal').on('shown.bs.modal', function() {
        $('#myInput').focus();
    });
</script>
