package com.myuniversity.nwmsu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myuniversity.nwmsu.dao.PrincipalDAO;

@Controller
public class PrincipalController {

	@Autowired
	PrincipalDAO principalDAO;
	
	@RequestMapping(value = "/principal", method = RequestMethod.GET)
	public String toOpenPrincipalPage(Model model) {
		
		model.addAttribute("allStudentInfo", principalDAO.getStudentDetails());
		
		return "principal";
	
}
}
