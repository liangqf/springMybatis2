<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>jquery barcode</title>
<script type="text/javascript" src="js/jquery/jquery.min.js"></script>
<script type="text/javascript" src="js/jqueryBarcode/jquery.barcode.0.3.js"></script>
<style type="text/css">
	.barcodeImg{
		width:150px;
		height:100px;
		padding-top:20px;
	}
</style>
</head>
<body>
	 <div style="margin:10px">
	 	<input id="src" value="11225921991"></input><br/> 
	 	<input type="button" onclick='code128()' value="code128">
	 	<div id="bcTarget" class="barcodeImg"></div>
	 </div>
	 <script type="text/javascript">
	 function code128(){  
         $("#bcTarget").empty().barcode($("#src").val(), "code128",{barWidth:1, barHeight:40,showHRI:true});
     }  
	 </script>
</body>
</html>