package dz.ifa.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import dz.ifa.model.Tier;
import dz.ifa.service.TierService;


@Controller
@SessionAttributes("ficheFournisseur")
public class FournisseurController {
	@Autowired
	private TierService FournServe;
	
	@RequestMapping(value = "/FicheFournisseur", method = RequestMethod.GET)
	public String addFournisseur(Model model, HttpSession session) {
		
		Tier ficheFournisseur = (Tier) session.getAttribute("ficheFournisseur");
		
	//	if(ficheFournisseur==null){			
			ficheFournisseur= new Tier();
	//	}
		
		model.addAttribute("ficheFournisseur", ficheFournisseur);
		System.out.println("done!");
	
		return "FicheFournisseur";
	}	
	
	
	@RequestMapping(value = "/FicheFournisseur", method = RequestMethod.POST)
	public String updateFournisseur(@Valid @ModelAttribute("ficheFournisseur") Tier ficheFournisseur, BindingResult result) {
		
	
		
		
		//System.out.println("acronyme: " + ficheFournisseur.getAcronyme());
	         FournServe.save(ficheFournisseur);
		
		
		return "redirect:FicheFournisseur.html";
	}
	

} 