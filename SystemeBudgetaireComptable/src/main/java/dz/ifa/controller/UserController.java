package dz.ifa.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import dz.ifa.model.Fonctionnalite;
import dz.ifa.model.Utilisateur;
import dz.ifa.service.FontionnaliteService;
import dz.ifa.service.UtilisateurService;

@Controller
public class UserController {
	
	@Autowired
	private FontionnaliteService fonctService;
	
	@Autowired
	private UtilisateurService userService;
	
	@RequestMapping(value = "addUserAndFonct", method = RequestMethod.GET)
	public String addFontion(Model model) {
		Fonctionnalite fonction = new Fonctionnalite("Test_Fontionnalite");
		Utilisateur user = new Utilisateur();
		user.setId("Test_User");
		user.setActif(1);
		
		List<Fonctionnalite> foncts = new ArrayList<>();
		foncts.add(fonction);
		
		user.setFoncts(foncts);
		
		userService.save(user);
		
		return "index0";
	}
	
	@RequestMapping(value = "getFontionnalite", method = RequestMethod.GET)
	public @ResponseBody List<Fonctionnalite> getFontions() {		
		return fonctService.loadAll();
	}
}
