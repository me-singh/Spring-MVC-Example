package com.example.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {
	
	@RequestMapping(value="/user", method=RequestMethod.GET)
	public String showuser() {
		System.out.println("welocmed");
		return "welcome";
	}

}
