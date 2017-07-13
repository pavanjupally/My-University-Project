package com.myuniversity.nwmsu.model;

public class Student {

	private int rollNumber;
	private String firstName;
	private String lastName;
	private String email;
	private int marksMaths;
	private int marksSocial;
	private int marksPhysics;
	private int marksBiology;
	private int marksEnglish;
	private int marksChemistry;
	
	public Student() {
		super();
	}

	public Student(int rollNumber, String firstName, String lastName, String email, int marksMaths, int marksSocial,
			int marksPhysics, int marksBiology, int marksEnglish, int marksChemistry) {
		super();
		this.rollNumber = rollNumber;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.marksMaths = marksMaths;
		this.marksSocial = marksSocial;
		this.marksPhysics = marksPhysics;
		this.marksBiology = marksBiology;
		this.marksEnglish = marksEnglish;
		this.marksChemistry = marksChemistry;
	}

	public int getRollNumber() {
		return rollNumber;
	}

	public void setRollNumber(int rollNumber) {
		this.rollNumber = rollNumber;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getMarksMaths() {
		return marksMaths;
	}

	public void setMarksMaths(int marksMaths) {
		this.marksMaths = marksMaths;
	}

	public int getMarksSocial() {
		return marksSocial;
	}

	public void setMarksSocial(int marksSocial) {
		this.marksSocial = marksSocial;
	}

	public int getMarksPhysics() {
		return marksPhysics;
	}

	public void setMarksPhysics(int marksPhysics) {
		this.marksPhysics = marksPhysics;
	}

	public int getMarksBiology() {
		return marksBiology;
	}

	public void setMarksBiology(int marksBiology) {
		this.marksBiology = marksBiology;
	}

	public int getMarksEnglish() {
		return marksEnglish;
	}

	public void setMarksEnglish(int marksEnglish) {
		this.marksEnglish = marksEnglish;
	}

	public int getMarksChemistry() {
		return marksChemistry;
	}

	public void setMarksChemistry(int marksChemistry) {
		this.marksChemistry = marksChemistry;
	}
	
	
}
