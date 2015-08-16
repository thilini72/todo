/*!
 ** Todo-Sortable-List Example App
 ** Licensed under the Apache License v2.0
 ** http://www.apache.org/licenses/LICENSE-2.0
 ** Built by Jay Kanakiya ( @techiejayk )
 **/
"use strict";

var App = angular.module("todo", ["ui.sortable", "LocalStorageModule"]);

App.controller("TodoCtrl", function($scope, localStorageService) {

    $scope.init = function() {

        if (!localStorageService.get("todoList")) {
            $scope.model = [
                {
                    name: "Current Hour Task list", list: [
                        {taskName: "Create an Angular-js TodoList", isDone: false},
                        {taskName: "Understanding Angular-js Directives", isDone: true}
                    ]
                },
                {
                    name: "today task list", list: [
                        {taskName: "Build an open-source website builder", isDone: false},
                        {taskName: "BUild an Email Builder", isDone: false}
                    ]
                }
            ];
        } else {
            $scope.model = localStorageService.get("todoList");
        }
        $scope.show = "All";
        $scope.currentShow = 0;
        $scope.projects = [];
        $scope.newProject = "";
    };

    $scope.addTodo = function() {
        /*Should prepend to array*/
        $scope.model[$scope.currentShow].list.splice(0, 0, {pcolor:$scope.pcolor,taskName: $scope.newTodo, project: $scope.selectedProject, time: $scope.time, isDone: false});
        /*Reset the Field*/
         $scope.pcolor = "";
        $scope.newTodo = "";
        $scope.selectedProject = "";
        $scope.time = "";
        $('#projectsList').selectpicker();
    };




//    $scope.edit = function(){
//        var app = angular.module("app", ["xeditable"]);
//
//            app.run(function(editableOptions) {
//                editableOptions.theme = 'bs3';
//            });
//
//            app.controller('Ctrl', function($scope) {
//                $scope.user = {
//                    name: 'awesome user'
//                };
//            });
// 
//        
//        
//    };

    $scope.addNewProject = function(newProject) {
        
        $scope.projects.push({projectName: newProject, color: getRandomColor()});
        /*Reset the Field*/

        $scope.newProject = "";

      // alert($scope.projects);
        console.log($scope.projects);
    };




    $scope.deleteTodo = function(item) {
        
        var index = $scope.model[$scope.currentShow].list.indexOf(item);
        
        $scope.model[$scope.currentShow].list.splice(index, 1);
      
    };

//$scope.deleteTodo = function(deleteTodo) {
//  alert(dsdsdsdsdsds);
//}





    $scope.todoSortable = {
        containment: "parent", //Dont let the user drag outside the parent
        cursor: "move", //Change the cursor icon on drag
        tolerance: "pointer"//Read http://api.jqueryui.com/sortable/#option-tolerance
    };

    $scope.changeTodo = function(i) {
        $scope.currentShow = i;
    };

    /* Filter Function for All | Incomplete | Complete */
    $scope.showFn = function(todo) {
        if ($scope.show === "All") {
            return true;
        } else if (todo.isDone && $scope.show === "Complete") {
            return true;
        } else if (!todo.isDone && $scope.show === "Incomplete") {
            return true;
        } else {
            return false;
        }
    };

    $scope.$watch("model", function(newVal, oldVal) {
        if (newVal !== null && angular.isDefined(newVal) && newVal !== oldVal) {
            localStorageService.add("todoList", angular.toJson(newVal));
        }
    }, true);

});

function getRandomColor() {
    var letters = '0123456789ABCDEF'.split('');
    var color = '#';
    for (var i = 0; i < 6; i++) {
        color += letters[Math.floor(Math.random() * 16)];
    }
    return color;
}
;
var app = angular.module("app", ["xeditable"]);

app.run(function(editableOptions) {
    editableOptions.theme = 'bs3'; // bootstrap3 theme. Can be also 'bs2', 'default'
});

app.controller('Ctrl', function($scope) {
    $scope.user = {
        name: 'awesome user'
    };
});