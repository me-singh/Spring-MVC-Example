package com.example.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WelcomeController {
	
//	@Autowired
//	LoginService loginService;
	
//	Highlight the correct menu item
	@RequestMapping(value="/",method = RequestMethod.GET)
	public String showLoginPage(ModelMap model) {
		System.out.println("Working");
		model.put("name", "amit");
		return "welcome";
	}
	
//	@RequestMapping(value="/login",method = RequestMethod.POST)
//	public String checkLoginUser(@RequestParam String name, 
//			@RequestParam String password, ModelMap model) {
//		
//		if(!loginService.validateUser(name, password)) {
//			model.put("errorMessage", "Invalid Credentials!");
//			return "login";
//		}
//		
//		model.put("name", name);
//		model.put("password", password);
//		System.out.println("Worked");
//		return "welcome";
//	}
}
