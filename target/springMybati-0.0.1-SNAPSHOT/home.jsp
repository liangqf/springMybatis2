   <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title></title>
        <%@include file="/commons/head.jsp" %>
        <link href="ligerUI/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
        <style type="text/css"></style>
        <script src="ligerUI/lib/jquery/jquery-1.9.0.min.js" type="text/javascript"></script>   
    	<script src="ligerUI/lib/ligerUI/js/core/base.js" type="text/javascript"></script>
        <script src="ligerUI/lib/ligerUI/js/plugins/ligerLayout.js" type="text/javascript"></script>
        
	    <script src="ligerUI/lib/ligerUI/js/plugins/ligerGrid.js" type="text/javascript"></script>
	    <script src="ligerUI/lib/ligerUI/js/plugins/ligerTab.js" type="text/javascript"></script>
	    <script src="ligerUI/lib/ligerUI/js/plugins/ligerDrag.js" type="text/javascript"></script>
	    <script src="ligerUI/grid/CustomersData.js" type="text/javascript"></script>
        <script type="text/javascript">
                $(function ()
                {

                    $("#layout1").ligerLayout({
                        leftWidth: 200,
                    });
                    
                    $("#frameContext").ligerTab();
        			//获取tab的引用
                    tab = $("#frameContext").ligerGetTabManager();
                });
                
                //加载左树（目前只是为了展示树结构，数据不具任何意义）
                function loadTree(){
                	
                }
                
              //测试
        		function test(id){
        			tab.addTabItem({ tabid:id,text:"测试",url:"${ctx}/platform/system/message/list.form"});
        		}
        		
        		 //添加到tab或者刷新
                function addToTab(url,txt,id){
                	if(tab.isTabItemExist(id)){
                		tab.selectTabItem(id);
                		tab.reload(id);
                	}
                	else{
                		tab.addTabItem({ tabid:id,text:txt,url:url});
                	}
                };
         </script> 
        <style type="text/css"> 
            body{ padding:5px; margin:0; padding-bottom:15px;}
            #layout1{  width:100%;margin:0; padding:0;  }  
            .l-page-top{  background:#f8f8f8; margin-bottom:3px;}
        </style>
    </head>
    
    <body style="padding:10px">  
      <div class="l-page-top" style="text-align: center;">logo <br /> logo </div>
      <div id="layout1">
            <div position="left">
            	<ul id="tree">
					<li id="click1" onclick="test(1)">测试点击1</li>
					<li id="click2" onclick="test(2)">测试点击2</li>
				</ul>
            </div>
            <div id="frameContext" position="center">
            </div>  
          <div position="centerbottom" title="下方区域">
            </div>  
        </div> 
    </body>
    </html>
