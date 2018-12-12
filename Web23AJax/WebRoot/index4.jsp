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
        var xmlDoc;
        function  test1(){
        	var  xmlHttp = new  XMLHttpRequest();
        	xmlHttp.open("get","shengs.xml");
        	xmlHttp.onreadystatechange = function(){
        		if(xmlHttp.readyState == 4){
        			 xmlDoc = 	xmlHttp.responseXML;
        			 showSheng();
        		}
        	}
        	xmlHttp.send(null);
        }
        function showSheng(){
        	var  root = xmlDoc.documentElement;
        	var nodes = root.childNodes;
        	var one = document.getElementById("one");
        	for(var i  = 0;i<nodes.length;i++){
        		//  判断是不是元素节点
        		if(nodes[i].nodeType == Node.ELEMENT_NODE){
        			var name = nodes[i].nodeName;
        			one.options.add(new Option(name,name));
        		}
        	}
        	//
        	showCity();
        }
        function  showCity(){
        	var  sheng = document.getElementById("one").value;
        	//  根据第一个被选中sheng  去得到 对应 城市
        	var  sheng2 = xmlDoc.getElementsByTagName(sheng);
        	var  nodes = sheng2[0].childNodes;
        	var  two = document.getElementById("two");
        	two.options.length = 0;
        	for(var i = 0;i< nodes.length;i++){
        		if(nodes[i].nodeType == Node.ELEMENT_NODE){
        		   var  name = nodes[i].firstChild.nodeValue;
        		   two.options.add(new Option(name,name));
        		}
        	}
        }
    </script>
    
  </head>
  
  <body onload="test1()">
      <select id="one"  onchange="showCity()">
      </select>
      <select id="two">
      </select>
  </body>
</html>
