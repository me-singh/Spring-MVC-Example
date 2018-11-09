package com.example.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	
	LoginService loginService = new LoginService();
	
	@RequestMapping(value="/login",method = RequestMethod.GET)
	public String showLoginPage() {
		System.out.println("Working");
		return "login";
	}
	
	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String checkLoginUser(@RequestParam String name, 
			@RequestParam String password, ModelMap model) {
		
		if(!loginService.validateUser(name, password)) {
			model.put("errorMessage", "Invalid Credentials!");
			return "login";
		}
		
		model.put("name", name);
		model.put("password", password);
		System.out.println("Worked");
		return "welcome";
	}
}
