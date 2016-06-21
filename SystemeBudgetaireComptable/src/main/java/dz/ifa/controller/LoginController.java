package dz.ifa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(ModelMap model) {
		System.out.println("In the login method");
		
		return "login";
	}
	
	@RequestMapping(value="/loginFailed", method=RequestMethod.GET)
	public String loginFailed(ModelMap model) {
		System.out.println("Login Failed");
		
		model.addAttribute("error", "true");
		return "login";
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(ModelMap model) {
		return "login";
	}
	
	@RequestMapping(value="/403", method=RequestMethod.GET)
	public String error403(ModelMap model) {
		return "403";
	}
	
	@RequestMapping(value="/404", method=RequestMethod.GET)
	public String error404(ModelMap model) {
		return "404";
	}
	
	@RequestMapping(value="/405", method=RequestMethod.GET)
	public String error405(ModelMap model) {
		return "405";
	}
	
}
