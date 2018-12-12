package com.salmon.servlet;

public class UserBean {
	private int  id;
	private String username;
	private String userps;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserps() {
		return userps;
	}
	public void setUserps(String userps) {
		this.userps = userps;
	}
	public UserBean(int id, String username, String userps) {
		super();
		this.id = id;
		this.username = username;
		this.userps = userps;
	}
	public UserBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
