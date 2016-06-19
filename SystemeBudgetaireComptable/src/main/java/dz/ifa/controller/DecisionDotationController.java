package dz.ifa.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
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
import dz.ifa.repository.DotationDecisionSuppRepository;
import dz.ifa.service.DecisionDotationService;
import dz.ifa.service.DecisionDotationSuppService;
import dz.ifa.service.DotationRubriqueService;
@Controller

public class DecisionDotationController {
	@Autowired
	private DecisionDotationService dotaDecRep;
	@Autowired
	private DotationRubriqueService dotRub;
	@Autowired
	private DecisionDotationSuppService dotaSupp;
	private DecisionDotation des=null;
	List<DotationRubrique> liste;
	List<DecisionDotation> list =new ArrayList<DecisionDotation>();

	int val=0;
	@RequestMapping(value = "/AfficherDecisionIntiale", method = RequestMethod.GET)
	public String aficherDecision(@ModelAttribute("dD") DecisionDotation descisionDotation,Model model) {
		list =new ArrayList<DecisionDotation>();
		List<DecisionDotation> listeDotation=null;
		if(listeDotation==null){
		listeDotation=dotaDecRep.loadAll();
		}
		model.addAttribute("lis",listeDotation);
		return "index111";	
	}
	//-------------------------------------------------------------------------//
	@RequestMapping(value = "/formu2", method = RequestMethod.GET)
	public String modifierDotationRubriques (Model model,@RequestParam String section,
			@RequestParam String chapitre,@RequestParam String rubrique,@RequestParam String montant
			,@RequestParam String codeMonnais) {
		System.out.println(section);
		System.out.println(chapitre);
		System.out.println(rubrique);
		System.out.println(montant);
		System.out.println(codeMonnais);
		model.addAttribute("numDecision", section);
		model.addAttribute("chapitre", chapitre);
		model.addAttribute("rubrique", rubrique);
		model.addAttribute("montant", montant);
		model.addAttribute("codeMonnais", codeMonnais);
		return "formu2";
	}
	//-------------------------------------------------------------------------//
	@RequestMapping(value = "/AfficherListeRubriques", method = RequestMethod.GET)
	public String afficherDotationRubrique(Model model,@RequestParam String numero) {
		System.out.println("le numero est: "+ numero);
		List<DotationRubrique> liste1= new ArrayList<DotationRubrique>();
		if(liste==null){
		liste = dotRub.loadAll();
		}
		Iterator i = liste.iterator();
		DotationRubrique x;
		while(i.hasNext())
		{
			x=(DotationRubrique)i.next();
			if(x.getNumDecision().equals((String)numero)){
				liste1.add(x);
			}
		}
		 model.addAttribute("lis",liste1);
		 i=liste.iterator();
		 while(i.hasNext()){
			 x=(DotationRubrique)i.next();
			// System.out.println(x.getNumDecision());
		 }
		return "index222";
	}
	
	//-----------------------------------------------------------------------------//
	@RequestMapping(value = "/AfficherDecisionSupp", method = RequestMethod.GET)
	public String aficherDecisionSupp(@ModelAttribute("dD") DecisionDotation descisionDotation,Model model) {
		
		List<decisionDotationSupp> listeDotation=null;
		if(listeDotation==null){
		listeDotation=dotaSupp.loadAll();
		}
		model.addAttribute("lis",listeDotation);
		return "index333";	
	}
	//-----------------------------------------------------------------------------//
	@RequestMapping(value = "/AjoutDecisi", method = RequestMethod.GET)
	public String afficheDotationRub(Model model)
	{
		 		return "AjoutDecisi";
	}
	//--------------------------------------------------------------------------//
	
	@RequestMapping(value = "/addDecision", method = RequestMethod.POST)
	public String updateGoal(@Valid @ModelAttribute("dD") DecisionDotation descisionDotation, BindingResult result,Model model) {
		
		if(result.hasErrors()) {
			System.out.println("il ya un problemme");
			return "addDecision";
		}
	
		List<DecisionDotation> l = dotaDecRep.loadAll();
		
		model.addAttribute("l", l);
		
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
		return "AfficherDecisionIntiale";
	}
/***************************************************************/
	@RequestMapping(value = "/searchSupp.json", method = RequestMethod.POST)
	public @ResponseBody void suppLigne(@RequestBody DotationRubrique De) {
		List<DotationRubrique> l =des.getListeRubrique();
		Iterator i = l.iterator();
		DotationRubrique d1,d2;
		int j=0;
		while(i.hasNext())
		{
			d2=(DotationRubrique)i.next();
			if(d2.getRubrique().equals(De.getRubrique())&&d2.getChapitre().equals(De.getChapitre())){ 
				l.remove(j);
			}
			j++;
		}
		while(i.hasNext())
		{
			d1=(DotationRubrique)i.next();
		}
		des.setListeRubrique(l);
	}
}
