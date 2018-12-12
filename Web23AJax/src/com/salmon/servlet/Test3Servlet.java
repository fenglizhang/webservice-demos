package com.salmon.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test3Servlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Map  m = new  HashMap();
		m.put("1", new  UserBean(1,"zhangsan","123"));
		m.put("2", new  UserBean(2,"wangwu","123"));
		m.put("3", new  UserBean(3,"lisi","123"));
		
		String id = request.getParameter("id");
		UserBean ub = (UserBean)m.get(id);
		
		
		response.setContentType("text/xml");
		PrintWriter out = response.getWriter();
		out.println("<users><user><id>"+ub.getId()+"</id><name>"+ub.getUsername()+"</name><password>"+ub.getUserps()+"</password></user></users>");
		out.flush();
		out.close();
	}

}
