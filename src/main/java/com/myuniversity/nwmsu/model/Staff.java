package com.myuniversity.nwmsu.model;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotEmpty;


public class Staff {

	@NotEmpty
	String marksStudents;
	
	@NotEmpty
	String subject;
	
	
//	String[] marks = marksStudents.split(",");


	public Staff() {
		super();
	}


	public Staff(String marksStudents, String subject) {
		super();
		this.marksStudents = marksStudents;
		this.subject = subject;
		//this.marks = marks;
	}


	public String getMarksStudents() {
		return marksStudents;
	}


	public void setMarksStudents(String marksStudents) {
		this.marksStudents = marksStudents;
	}


	public String getSubject() {
		return subject;
	}


	public void setSubject(String subject) {
		this.subject = subject;
	}


//	public String[] getMarks() {
//		return marks;
//	}
//
//
//	public void setMarks(String[] marks) {
//		this.marks = marks;
//	}
	
	
	
}
