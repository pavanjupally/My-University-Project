package com.myuniversity.nwmsu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainPageController {

	@RequestMapping(value = "/mainPage", method = RequestMethod.GET)
	public String toOpenMainPage() {
		
		return "mainPage";
	}
}
