package dz.ifa.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import dz.ifa.model.Criteria;
import dz.ifa.model.DecisionDotation;
import dz.ifa.model.DotationRubrique;
import dz.ifa.model.Goal;
import dz.ifa.model.decisionDotationSupp;
import dz.ifa.repository.DotationDecisionRepository;
import dz.ifa.service.DecisionDotationService;
import dz.ifa.service.DecisionDotationSuppService;
import dz.ifa.service.DotationRubriqueService;
@Controller

public class DecistionDotatioSuppController {
	@Autowired
	private DecisionDotationSuppService dotaDecRep;
	private decisionDotationSupp des=null;
	int val=0;
	@PreAuthorize("hasAnyAuthority('ROLE_AJOUTER_DOTATION_SUPP', 'ROLE_ADMIN')")
	@RequestMapping(value = "/formu1", method = RequestMethod.GET)
	public String addDecisionRubrique1(@ModelAttribute("aa") DotationRubrique dotationRubrique) {
		if(val==0){
		des=new decisionDotationSupp();
		val++;
		}
		return "formu1";
	}
	//------------------------------------------------------------//
	@PreAuthorize("hasAnyAuthority('ROLE_AJOUTER_DOTATION_SUPP', 'ROLE_ADMIN')")
	@RequestMapping(value = "/formu1", method = RequestMethod.POST)
	public String updateGoal(@Valid @ModelAttribute("aa") DotationRubrique dotationRubrique, BindingResult result,Model model) {
		if(result.hasErrors()) {
			return "formu1";
		}
		
		
		System.out.println("result has errors: " + result.hasErrors());
		
		System.out.println("------------------------------------------------------");
		
		des.ajouterDansList(dotationRubrique);
		System.out.println(des.getListeRubrique().size());
		return "formu1";
	}
	//-----------------------------------------------------------------------------------------//
	@PreAuthorize("hasAnyAuthority('ROLE_AJOUTER_DECISION_SUPP', 'ROLE_ADMIN')")
	@RequestMapping(value = "/index11", method = RequestMethod.GET)
	public String addIndex(Model model) {
		if(des==null)
		{
			return "index11";
		}
		else{
			model.addAttribute("liste",des.getListeRubrique());
		return "index11";
		}
	}
//------------------------------------------------------------------------------------------------//
	@PreAuthorize("hasAnyAuthority('ROLE_AJOUTER_DECISION_SUPP', 'ROLE_ADMIN')")
	@RequestMapping(value = "/searchA1.json", method = RequestMethod.POST)
	public @ResponseBody String findActivit(@RequestBody DecisionDotation De) {
		
		des.setDate(De.getDate());
		des.setNumDecision(De.getNumDecision());
		des.setObjet(De.getObjet());
		des.setObservation(De.getObservation());
		List<DotationRubrique> l= new ArrayList<DotationRubrique>();
		Iterator i = des.getListeRubrique().iterator();
		DotationRubrique x;
		while(i.hasNext())
		{
			x=(DotationRubrique)(i.next());
			x.setNumDecision(De.getNumDecision());
			l.add(x);
		}
		des.setListeRubrique(l);
		dotaDecRep.save(des);
		val= 0;
		des=null;
		return "AfficherDecisionSupp";
	}
	//--------------------------------------------------------------------------------------------//
	@PreAuthorize("hasAnyAuthority('ROLE_SUPPRIMER_RUBRIQUE_SUPP', 'ROLE_ADMIN')")
	@RequestMapping(value = "/searchSupp1.json", method = RequestMethod.POST)
	public @ResponseBody void suppLigne(@RequestBody DotationRubrique De) {
		List<DotationRubrique> l =des.getListeRubrique();
		Iterator i = l.iterator();
		DotationRubrique d1,d2;
		int j=0;
		while(i.hasNext())
		{
			d2=(DotationRubrique)i.next();
			
			/*System.out.println("le chapitre est : "+ d2.getChapitre());
			System.out.println("De chapitre est:"+ De.getChapitre());
			System.out.println("le Section est : "+ d2.getSection());
			System.out.println("De Section est:"+ De.getSection());*/
			if(d2.getRubrique().equals(De.getRubrique())&&d2.getChapitre().equals(De.getChapitre())){ 
				l.remove(j);
				//System.out.println("rahou yssup");
			}
			//System.out.println("rana nedkhlou la boucle ");
			j++;
		}
		while(i.hasNext())
		{
			d1=(DotationRubrique)i.next();
			//System.out.println(d1.getChapitre());
		}
		des.setListeRubrique(l);
		//System.out.println("la supp marche");		
	}
	
	
}

	


