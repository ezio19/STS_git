package dz.ifa.controller;

import java.util.List;

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
import org.springframework.web.servlet.ModelAndView;



import dz.ifa.model.FicheFournisseur;

import dz.ifa.service.FournisseurService;


@Controller
@SessionAttributes("ficheFournisseur")
public class FournisseurController {
	@Autowired
	private FournisseurService FournServe;
	
	@RequestMapping(value = "/FicheFournisseur", method = RequestMethod.GET)
	public String addFournisseur(Model model, HttpSession session) {
		
		FicheFournisseur ficheFournisseur = (FicheFournisseur) session.getAttribute("ficheFournisseur");
		
	//	if(ficheFournisseur==null){			
			ficheFournisseur= new FicheFournisseur();
	//	}
		
		model.addAttribute("ficheFournisseur", ficheFournisseur);
		System.out.println("done!");
	
		return "FicheFournisseur";
	}	
	
	
	@RequestMapping(value = "/FicheFournisseur", method = RequestMethod.POST)
	public String updateFournisseur(@Valid @ModelAttribute("ficheFournisseur") FicheFournisseur ficheFournisseur, BindingResult result) {
		
	
		
		
		//System.out.println("acronyme: " + ficheFournisseur.getAcronyme());
	         FournServe.save(ficheFournisseur);
		
		
		return "redirect:FicheFournisseur.html";
	}
	
	
	/*
	@RequestMapping(value = "getDemande", method = RequestMethod.GET)
	public String getDemande(Model model, long id){
		List<DemandeTransfert> demandeTransfert = demandeTransfertService.findDemandeById(id);
		model.addAttribute("demandeTransfert", demandeTransfert);
		
		return "getDemande";
	}
    @RequestMapping(value="/AllDemandes", method=RequestMethod.GET)
    public ModelAndView listDemandes() {
        
        List <DemandeTransfert> demandes = demandeTransfertService.findAllDemandes();
            return new ModelAndView("listeDemandes", "demandes", demandes);
    }

*/
} 