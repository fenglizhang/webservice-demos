package com;

import javax.xml.ws.Endpoint;

import com.guaochanglang.impl.WebServiceImpl;

public class WebServicePublish {
	
	public static void main(String[] args) {
		//定义WebService的发布地址，这个地址就是提供给外界访问Webervice的URL地址，URL地址格式为：http://本机ip:端口号/xxxx
		String url="http://10.136.180.160:7788/myFirstWebService/zlfService";
		
		Endpoint.publish(url, new WebServiceImpl());
		
		
		System.out.println("发布webservice成功!");
		
		
	}
}
