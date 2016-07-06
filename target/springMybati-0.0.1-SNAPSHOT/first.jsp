<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的第一个页面</title>
<script type="text/javascript" src="js/angularjs/angular.min.js"></script>
<script type="text/javascript">
	var myApp = angular.module("myApp",[]);
	//控制器
	myApp.controller("controller",function($scope,$rootScope,$http){
		$rootScope.number = 10;
	});
	//指令
	myApp.directive("hello1",function(){
		return {
	        restrict: 'E',
	        template: '<div>Hi it is the first directive</div>',
	        replace: true
	    };
	});
	myApp.directive("hello2",function(){
		return {
	        restrict: 'E',
	        template: '<h5>{{name}}</h5>',
	        replace: true
	    };
	});
</script>
</head>
<body ng-app="myApp" ng-controller="controller">
	<input ng-model="name" type="text" />
	<h1>{{name}}</h1>
	<p>{{number}}</p>
	<h1>下面是指令内容</h1>
	<hello1></hello1>
	<hello2></hello2>
	<form>
		<table> 
			<tr>
				<td>
					<input type="file" multiple="multiple"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>