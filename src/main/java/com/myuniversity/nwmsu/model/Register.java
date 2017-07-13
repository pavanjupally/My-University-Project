package com.myuniversity.nwmsu.model;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class Register {

	@NotEmpty
	private String firstName;
	@NotEmpty
	private String lastName;
	private String gender;
	@NotEmpty
	@Email
	private String email;
	@NotEmpty
	@Size(min=6, max=40)
	private String inputPwd;
	
//	@NotEmpty
//	@Size(min=6, max=40)
//	private String confirmPwd;
	
	public Register() {
		super();
	}
	public Register(String firstName, String lastName, String gender, String email, String inputPwd) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.email = email;
		this.inputPwd = inputPwd;
		//this.confirmPwd = confirmPwd;
	}
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getInputPwd() {
		return inputPwd;
	}
	public void setInputPwd(String inputPwd) {
		this.inputPwd = inputPwd;
	}
//	public String getConfirmPwd() {
//		return confirmPwd;
//	}
//	public void setConfirmPwd(String confirmPwd) {
//		this.confirmPwd = confirmPwd;
//	}

	
	}
