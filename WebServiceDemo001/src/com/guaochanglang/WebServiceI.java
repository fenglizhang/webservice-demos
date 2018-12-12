package com.guaochanglang;

import javax.jws.WebMethod;
import javax.jws.WebService;

/**
 * 
 * @author Administrator
 *	定义SEI(WEBSERVICE ENDPOINT INTERFACE --终端)
 */

@WebService//使用@WebService注解标注WebServiceI接口
public interface WebServiceI {
	
	@WebMethod//使用@webMethod注解WebServiceI接口中的方法
	String sayHello(String name);
	
	@WebMethod//使用@webMethod注解WebServiceI接口中的方法
	String save(String name,String pwd);
}
