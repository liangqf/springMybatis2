<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>指令</title>
<script type="text/javascript" src="js/angularjs/angular.min.js"></script>
</head>
<body ng-app="app">
	 <div ng-controller='parentCtrl'>
        <h3>指令scope参数——false、true、{}对比测试</h3>
        parent:
        <div>
            <span> {{parentName}}</span>
            <input type="text" ng-model="parentName" />
        </div>
        <br />
        <child-a></child-a>
        <br />
        <child-b></child-b>
        <br />
        <child-c parent-name="parentName"></child-c>
    </div>
    <!--t1指令模板-->
    <script type="text/html" id="t1">
        <div>
            <span>{{parentName}}</span>
            <input type="text" ng-model="parentName" />
        </div>
    </script>
    <script>
        var app = angular.module("app", []);

        app.controller('parentCtrl', function ($scope) {
            $scope.parentName = "parent";
        })

        //false：共享作用域
        app.directive('childA', function () {
            return {
                restrict: 'E',
                scope: false,
                template: function (elem, attr) {
                    return "false:" + document.getElementById('t1').innerHTML;
                }
            };
        });

        //true：继承父域，并建立独立作用域
        app.directive('childB', function () {
            return {
                restrict: 'E',
                scope: true,
                template: function (elem, attr) {
                    return "true:" + document.getElementById('t1').innerHTML;
                },
                controller: function ($scope) {
                    $scope.parentName = "parent";

                    //已声明的情况下，$scope.$watch监听的是自己的parentName，当值变化时，可以做些相应的操作
                    $scope.$watch('parentName', function (newParentName, oldeParentName) {
                        console.log("child watch" + newParentName);
                    });

                    //$scope.$parent.$watch监听的是父域的parentName
                    $scope.$parent.$watch('parentName', function (newParentName, oldeParentName) {
                        console.log("parent watch" + newParentName);
                    });
                }
            };
        });

        //{}：不继承父域，建立独立作用域
        app.directive('childC', function () {
            return {
                restrict: 'E',
                scope: {},
                template: function (elem, attr) {
                    return "{}:" + document.getElementById('t1').innerHTML;
                },
                controller: function ($scope) {
                    console.log($scope);
                }
            };
        });

    </script>
</body>
</html>