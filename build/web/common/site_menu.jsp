<%-- 
    Document   : site_menu
    Created on : Jul 14, 2015, 9:12:10 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<aside id="menu" ng-controller="TodoCtrl">
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

            
            <!--            <a href="#" ng-repeat="todos in model" class="list-group-item" ng-class="{'active' : currentShow === $index}" ng-click="changeTodo($index)" >
                            <span class="badge">{{todos.list.length}}</span>
                            {{todos.name}}
                        </a>-->
            <li> <a href="#"><span class="nav-label">Current Hour</span><span class="fa arrow"></span> </a>
                <ul class="nav nav-second-level collapse">
                    <li><a href="javascript:ajaxpage('content/angular.jsp', 'rightcolumn');">My Lead Dashboard</a></li>
                    <li><a href="javascript:ajaxpage('content/my_reminders.jsp', 'rightcolumn');">My Reminders</a></li>
                    <li><a href="javascript:ajaxpage('content/add_new_lead.jsp', 'rightcolumn');">Create New Lead</a></li>
                </ul>
            </li>
        </ul>

        <div class="hpanel">
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#tab-3"> <i class="fa fa-laptop"></i></a></li>
                <li class=""><a data-toggle="tab" href="#tab-4"><i class="fa fa-desktop"></i></a></li>
            </ul>
            <div class="tab-content">
                <div id="tab-3" class="tab-pane active">
                    <div class="panel-body">
                        <div style="margin: 10px">
                            <ul class="list-unstyled">
                                <li class="todoTask" ng-repeat="project in projects"><i class="glyphicon glyphicon-record" style="margin-right: 2px;  color: {{project.color}}"></i>{{project.projectName}}  <button type="button" class="close pull-right" aria-hidden="true" ng-click="deleteTodo(newProject)">&times;</button></li>
                            </ul>
                        </div>



                    </div>
                </div>
                <div id="tab-4" class="tab-pane">
                    <div class="panel-body">
                    </div>
                </div>

            </div>
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Add new project</a>
                </h4>
            </div>

            <div id="collapseTwo" class="panel-collapse collapse ">
                <div class="panel-body">
                    <p><input class="" id="" type="text" ng-model="newProject" placeholder="Add New Project"></p>
                    <br> <button id="addProject" class="btn btn-default"   ng-click="addNewProject(newProject)">Add Project</button>
                </div>
            </div>


        </div>
    </div>
</aside>



<script type="text/javascript">

    $(document).ready(function() {

        $(".btn").click(function() {

            $("#collapseTwo").collapse({
                toggle: false

            });

        });

    });

</script>

