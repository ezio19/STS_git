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
import dz.ifa.repository.DotationDecisionRepository;
import dz.ifa.service.DecisionDotationService;
import dz.ifa.service.DotationRubriqueService;
@Controller
public class DecisionDotationController {
	@Autowired
	private DecisionDotationService dotaDecRep;
	private DecisionDotation des=null;
	int val=0;
	@RequestMapping(value = "/addDecision", method = RequestMethod.GET)
	public String addDotationDecision(@ModelAttribute("dD") DecisionDotation descisionDotation) {
	
		return "addDecision";
	}
	
	@RequestMapping(value = "/addDecision", method = RequestMethod.POST)
	public String updateGoal(@Valid @ModelAttribute("dD") DecisionDotation descisionDotation, BindingResult result,Model model) {
		
		if(result.hasErrors()) {
			System.out.println("il ya un problemme");
			return "addDecision";
		}
	
		List<DecisionDotation> l = dotaDecRep.loadAll();
		
		model.addAttribute("l", l);
		System.out.println("c'est la merde quoi mon pote");
		System.out.println(descisionDotation.getObjet());
		System.out.println(descisionDotation.getDate());
		System.out.println("result has errors: " + result.hasErrors());
		des=descisionDotation;
	
		return "addDecision";
	
		
	}
	/*------------------------------------------------------------*/
	@RequestMapping(value = "/AjoutDecision", method = RequestMethod.GET)
	public String addDecisionRubrique1() {
		 
		return "AjoutDecision";
	}
	
	
	/*------------------------------------------------------------*/
	@RequestMapping(value = "/formu", method = RequestMethod.GET)
	public String addDecisionRubrique(@ModelAttribute("aa") DotationRubrique dotationRubrique) {
		if(val==0){
		des=new DecisionDotation();
		val++;
		}
		return "formu";
	}
	
	@RequestMapping(value = "/formu", method = RequestMethod.POST)
	public String updateGoal(@Valid @ModelAttribute("aa") DotationRubrique dotationRubrique, BindingResult result,Model model) {
		if(result.hasErrors()) {
			return "formu";
		}
	
		
		System.out.println(dotationRubrique.getChapitre());
		System.out.println(dotationRubrique.getCodeMonnais());
		
		System.out.println("result has errors: " + result.hasErrors());
		
		System.out.println("------------------------------------------------------");
		
		des.ajouterDansList(dotationRubrique);
		System.out.println(des.getListeRubrique().size());
		return "formu";
	}
	@RequestMapping(value = "/Valider", method = RequestMethod.GET)
	public String Valider() {
	
		dotaDecRep.save(des);
		return "decisionRubrique";
	}
	/*******************************************************************/
	@PreAuthorize("hasRole('AJOUTER_DOTATION') and hasPermission(#goal, 'createGoal')")
	@RequestMapping(value = "/index0", method = RequestMethod.GET)
	public String addIndex(Model model) {
		if(des==null)
		{
			return "index0";
		}
		else{
			model.addAttribute("liste",des.getListeRubrique());
		return "index0";
		}
	}
	
	
	@RequestMapping(value = "/searchActivities.json", method = RequestMethod.POST)
	public @ResponseBody void findActivitiesByCreteria(@RequestBody Criteria cr) {
		
	}
/****************************************************/
	@RequestMapping(value = "/searchA.json", method = RequestMethod.POST)
	public @ResponseBody void findActivit(@RequestBody DecisionDotation De) {
		
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
	}
/***************************************************************/
	@RequestMapping(value = "/searchSupp.json", method = RequestMethod.POST)
	public @ResponseBody void findActivities3(@RequestBody DotationRubrique De) {
		Iterator i = des.getListeRubrique().iterator();
		int j=0;
		while(i.hasNext()&&!((DotationRubrique)i.next()).equals(De))
		{
			des.getListeRubrique().remove(j);
			j++;
		}
		System.out.println("la supp marche");		
	}
	
}
