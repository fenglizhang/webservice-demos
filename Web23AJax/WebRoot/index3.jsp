<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'index.jsp' starting page</title>
    
    <script type="text/javascript">
        function  test1(obj){
        	var  value = obj.value;
        	var  xmlHttp = new XMLHttpRequest();
        	xmlHttp.open("post","Test3Servlet.do");
        	 xmlHttp.setRequestHeader("Content-Type",
			    "application/x-www-form-urlencoded"); 
        	xmlHttp.onreadystatechange = function(){
        		if(xmlHttp.readyState == 4){
        			//var  result = xmlHttp.responseText;
        			//alert(result);
        			//  当做xml 文档解析
        			var  xmlDoc = xmlHttp.responseXML;
        			var  root = xmlDoc.documentElement;
        			var  nodes = root.firstChild.childNodes;
        			for(var i  = 0;i<nodes.length;i++){
        				var  node = nodes[i];
        				alert(node.firstChild.nodeValue);
        			}
        		}
        	}
        	xmlHttp.send("id="+value);
        }
    </script>
    
  </head>
  
  <body>
    Id: <input type="text"  onblur="test1(this)"/>
     <span id="sp"></span>
  </body>
</html>
