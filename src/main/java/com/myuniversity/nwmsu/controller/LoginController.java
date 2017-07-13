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

import com.myuniversity.nwmsu.dao.LoginDAO;
import com.myuniversity.nwmsu.model.Contact;
import com.myuniversity.nwmsu.model.Login;

@Controller
@SessionAttributes({"login", "register"})
public class LoginController {

	@Autowired
	LoginDAO loginDAO;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String toOpenLoginPage(Model model) {
		model.addAttribute("login", new Login());
		return "login";
	}
	
	@RequestMapping(value = "/loginSubmit", method = RequestMethod.POST)
	public String forLoginSubmit(@Valid @ModelAttribute("login") Login login, BindingResult bindingResult, Model model) {
		if(bindingResult.hasErrors()){
			return "login";
		}
		
		if(loginDAO.verifyUser(login)){
			return "mainPage";
		}
		
		else{
			model.addAttribute("loginError", "Email ID and password does not match");
			return "login";
		}
		
		
		/*
		if (login.getEmail().equals("pavan@gmail.com") && login.getPwd().equals("123456")) {
			return "mainPage";
		} 	
			model.addAttribute("loginError", "Details Invalid! Please Check your credentials");
			//model.addAttribute("login", new Login());
			return "login";
	*/
	}
}
