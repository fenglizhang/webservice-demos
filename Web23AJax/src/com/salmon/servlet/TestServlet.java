package com.salmon.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TestServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("hello");
		//  接收参数
		String username = request.getParameter("username");
		// 接收头信息
		//username = request.getHeader("username");
		int  i = 0;
		if("zhangsan".equals(username)){
			i = 1;
		}
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println(i);
		out.flush();
		out.close();
	}

}
