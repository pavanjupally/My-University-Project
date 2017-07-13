package com.myuniversity.nwmsu.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.myuniversity.nwmsu.dao.RegisterDAO;
import com.myuniversity.nwmsu.model.Contact;
import com.myuniversity.nwmsu.model.Login;
import com.myuniversity.nwmsu.model.Register;

@Controller
@SessionAttributes({"register", "login"})
public class RegisterController {

	@Autowired
	RegisterDAO registerDAO;
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String toOpenRegisterPage(Model model) {
		model.addAttribute("register", new Register());
		return "register";
	}
	
	
	@RequestMapping(value = "/registerSubmit", method = RequestMethod.POST)
	public String forRegisterSubmit(@Valid @ModelAttribute("register") Register register, BindingResult bindingResult, Model model) {

		if(bindingResult.hasErrors()){
			return "register";
		}
		
		if(registerDAO.insertNewUser(register)){
		model.addAttribute("contactSuccess", "Thanks for registering with us!");
		model.addAttribute("login", new Login());
		return "login";
		}
		else{
			model.addAttribute("registerError", "Username Already Registered!");
			return "register";
		}
	}
}
