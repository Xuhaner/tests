package com.vote.bean;

public class AdminBean {
	private String username;
	private String password;
	private String team;
	private int id;
	private int role;
	
	
	public int getRole(){
		return role;
	}
	public void setRole(int role){
		this.role = role;
	}
	
	public void setId(int id){
		this.id = id;
	}
	public int getId(){
		return id;
	}
	
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	

}
