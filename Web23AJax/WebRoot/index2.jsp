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
        	//xmlHttp.open("post","Test2Servlet.do?username="+value);
        	xmlHttp.open("post","Test2Servlet.do");
        	//xmlHttp.setRequestHeader("username",value);
        	 xmlHttp.setRequestHeader("Content-Type",
			    "application/x-www-form-urlencoded"); 
        	xmlHttp.onreadystatechange = function(){
        		if(xmlHttp.readyState == 4){
        			var  result = xmlHttp.responseText;
        			if(result == 1){
        				document.getElementById("sp").innerHTML = "不可用";
        			}else{
        				document.getElementById("sp").innerHTML = "可用";
        			}
        		}
        	}
        	xmlHttp.send("username="+value+"&userps=123");
        }
    </script>
    
  </head>
  
  <body>
     <input type="text"  onblur="test1(this)"/>
     <span id="sp"></span>
  </body>
</html>
