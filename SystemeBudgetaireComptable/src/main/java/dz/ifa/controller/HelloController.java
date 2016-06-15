package dz.ifa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

	@RequestMapping(value ="/greeting")
	public String sayHello (Model model) {
		
		model.addAttribute("greeting", "Hello World");
		
		return "hello";
	}
	
	@RequestMapping(value ="/gestionUtilisateurs")
	public String users (Model model) {
		
		//model.addAttribute("greeting", "Hello World");
		
		return "gestionUtilisateurs";
	}
}
