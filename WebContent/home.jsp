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
	    <script type="text/javascript" src="ligerUI/lib/ligerUI/js/plugins/ligerTree.js"></script>
        <script type="text/javascript">
                $(function ()
                {

                    $("#layout1").ligerLayout({
                        leftWidth: 200,
                    });
                    
                    $("#frameContext").ligerTab();
        			//获取tab的引用
                    tab = $("#frameContext").ligerGetTabManager();
        			//加载左树
                    loadTree();
                });
                
                //加载左树（目前只是为了展示树结构，数据不具任何意义）
                function loadTree(){
                	
                	//获取后台数据
                	var data = [];
                	$.post("${ctx}/platform/system/resource/getResourceData.form",function(response){
                		
                		for(var i=0;i<response.length;i++){
                			data.push({id:response[i].id,pid:0,text:response[i].name,url:response[i].path});
                		}
                		
                	//将数据加载到树中
                	var tree = $("#tree").ligerTree({
                        data:data, 
                         idFieldName :'id',
                         slide : false,
                         parentIDFieldName :'pid',
                         checkbox:false,
                         onSelect: onSelect
                         });
                         treeManager = $("#tree").ligerGetTreeManager();
                         treeManager.collapseAll();
                	});
                       
                }
                
                //节点选中事件
                function onSelect(node)
                {
                    addToTab(node);
                }
              
        		 //添加到tab或者刷新
                function addToTab(node){
                	if(tab.isTabItemExist(node.data.id)){
                		tab.selectTabItem(node.data.id);
                		tab.reload(node.id);
                	}
                	else{
                		tab.addTabItem({ tabid:node.data.id,text:node.data.text,url:"${ctx}"+node.data.url});
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
				</ul>
            </div>
            <div id="frameContext" position="center">
            </div>  
          <div position="centerbottom" title="下方区域">
            </div>  
        </div> 
    </body>
    </html>
