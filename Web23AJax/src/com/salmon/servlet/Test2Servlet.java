package com.salmon.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test2Servlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		//username = request.getHeader("username");
		int result = 0;
		if("zhangsan".equals(username)){
			result = 1;
		}
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println(result);
		out.flush();
		out.close();
	}

}
