package com.myuniversity.nwmsu.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myuniversity.nwmsu.dao.StaffDAO;

import com.myuniversity.nwmsu.model.Staff;

@Controller
public class StaffController{

	@Autowired
	StaffDAO staffDAO;
	
	@RequestMapping(value = "/staff", method = RequestMethod.GET)
	public String toOpenStaffPage(Model model) {
		model.addAttribute("staff", new Staff());
		return "staff";
	}
	
	@RequestMapping(value = "/staffSubmit", method = RequestMethod.POST)
	public String forRegisterSubmit(@Valid @ModelAttribute("staff") Staff staff, BindingResult bindingResult, Model model) {

		if(bindingResult.hasErrors()){
			return "staff";
		}
		
		if(staffDAO.insertStudentMarks(staff)){
		model.addAttribute("staffSuccess", "Your Marks have been added!");
		model.addAttribute("staff", new Staff());
		return "staff";
		}
		else{
			model.addAttribute("staffError", "Error adding marks for students!");
			return "staff";
		}
	}
	
}
