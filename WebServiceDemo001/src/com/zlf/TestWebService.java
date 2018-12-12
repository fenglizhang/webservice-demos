package com.zlf;

import javax.jws.WebParam;
import javax.jws.WebService;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.xml.ws.Endpoint;
/**
 * 学习一招：web工程放入jar包到lib下时，如果系统自动变奶瓶，则buildpath时remove了。这个很重要
 * @author Administrator
 *
 */
@WebService
public class TestWebService implements ServletContextListener{
	
	public String sayHello(@WebParam(name="name")String name) {
		return "Hello," + name;
	}

	public void contextInitialized(ServletContextEvent arg0) {
		System.out.println("开始启动服务......");
		Endpoint.publish("http://localhost:9999/TestWebService",
				new TestWebService());
		System.out.println("服务启动成功！");
	}

	public void contextDestroyed(ServletContextEvent arg0) {
		
	}

}
