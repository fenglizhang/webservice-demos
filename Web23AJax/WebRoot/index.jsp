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
       var  xmlHttp;
       function  test1(obj){
    	   var  value = obj.value;
    	   // 创建异步请求的对象
    	   xmlHttp = new XMLHttpRequest();
    	   //打开一个链接
    	   //xmlHttp.open("get","TestServlet.do?username="+value);
    	  xmlHttp.open("get","TestServlet.do");
    	   // 设置一个请求头信息
    	   //xmlHttp.setRequestHeader("username", value);
    	   // 设置回调函数 (0,1,2,3,4)
    	   xmlHttp.onreadystatechange=back;
    	   // 发出请求   在get 方式下 send  方法是发送不了信息
    	   xmlHttp.send(null);
       }
       function back(){
    	   // 当对象状态等于4的时候 那说明 青求和响应成功
    	   if(xmlHttp.readyState == 4){
    		   //
    		  var  result =  xmlHttp.responseText;
    		   //alert("nihao"+result);
    		   if(result == 1){
    			   document.getElementById("sp").innerHTML = "<font color='red'>不可用</font>";
    		   }else{
    			   document.getElementById("sp").innerHTML = "<font color='green'>可用</font>";
    		   }
    	   }
       }
    </script>
    
  </head>
  
  <body>
     <input type="text"  onblur="test1(this)"/>
     <span id="sp"></span>
     <input type="button"   onclick="test1()" value="test"/>
  </body>
</html>
