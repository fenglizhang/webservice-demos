package com.guaochanglang.impl;

import javax.jws.WebService;

import com.guaochanglang.WebServiceI;

@WebService
public class WebServiceImpl implements WebServiceI {

	public String sayHello(String name) {
		 System.out.println("WebService sayHello "+name);
		return "sayHello "+name;
	}

	public String save(String name, String pwd) {
		System.out.println("WebService save "+name+"， "+pwd);
		return "save Success";
	}

}
