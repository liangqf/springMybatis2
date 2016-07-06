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
    parent:
    <p><span>{{name}}</span><input type="text" ng-model="name" /></p>
    <p><span>{{sexy}}</span><input type="text" ng-model="sexy" /></p>
    <p><span>{{age}}</span><input type="text" ng-model="age" /></p>
    <br />

    <!--特别注意：@与=对应的attr，@是单向绑定父域的机制，记得加上{{}}；&对应的attrName必须以on-开头-->
    <child-c my-name="name" my-sexy-attr="sexy" my-age="{{age}}" on-say="say('i m ' + name)"></child-c>
</div>

<!--t1指令模板-->
<script type="text/html" id="t1">
    <div>
        <span>{{myName}}</span>
        <input type="text" ng-model="myName" />
    </div>
    <div>
        <span>{{mySexy}}</span>
        <input type="text" ng-model="mySexy" />
    </div>
    <div>
        <span>{{myAge}}</span>
        <input type="text" ng-model="myAge" />
    </div>
</script>

<script>
    var app = angular.module("app", []);

    app.controller('parentCtrl', function ($scope) {
        $scope.name = "mark";
        $scope.sexy = "male";
        $scope.age = "30";
        $scope.say = function (sth) {
            alert(sth);
        };
    })

    app.directive('childC', function () {
        return {
            restrict: 'E',
            scope: {
                myName: '=',
                mySexy: '=mySexyAttr',
                myAge: '@',
                onSay: '&'
            },
            template: function (elem, attr) {
                return "{}:" + document.getElementById('t1').innerHTML;
            },
            controller: function ($scope) {
                console.log($scope.myName);
                console.log($scope.mySexy);
                console.log($scope.myAge);
                $scope.onSay();
            }
        };
    });

</script>
</body>
</html>