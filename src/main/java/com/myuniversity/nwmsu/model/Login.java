package com.myuniversity.nwmsu.model;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class Login {

	@NotEmpty
	@Email
	private String email;
	@NotEmpty
	@Size(min=6, max=40)
	private String pwd;
	
	public Login() {
		super();
	}

	public Login(String email, String pwd) {
		super();
		this.email = email;
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	
	
}
