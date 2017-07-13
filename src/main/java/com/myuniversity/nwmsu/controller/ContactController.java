package com.myuniversity.nwmsu.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.myuniversity.nwmsu.model.Contact;

@Controller
@SessionAttributes({"contact"})
public class ContactController {

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String toOpenContactPage(Model model) {
		model.addAttribute("contact", new Contact());
		return "contact";
	}
	
	@RequestMapping(value = "/contactUsSubmit", method = RequestMethod.POST)
	public String forContactUsSubmit(@Valid @ModelAttribute Contact contact, BindingResult bindingResult, Model model) {
		if(bindingResult.hasErrors()){
			return "contact";
		}
		else{
		model.addAttribute("contactSuccess", "Thanks for submitting your request! We will get back to you soon.");
			return "contact";
		}

	}
}
