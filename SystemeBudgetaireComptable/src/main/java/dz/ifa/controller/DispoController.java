package dz.ifa.controller;

import java.util.Iterator;
import java.util.List;

import javax.naming.AuthenticationException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import dz.ifa.service.nomenclatures.RubriqueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import dz.ifa.model.DemandeTransfert;

import dz.ifa.model.nomenclature.Rubrique;
import dz.ifa.service.DemandeTransfertService;
import dz.ifa.service.DisponibiliteService;
import dz.ifa.service.ExerciseService;
import dz.ifa.service.GoalService;

@Controller
@SessionAttributes("demandeTransfert")
public class DispoController {
	@Autowired
	private DisponibiliteService disponibiliteService;
	@Autowired
	private RubriqueService rubriqueService;


	
	public String montantInsuff= "10";
	public String montant_TT= "50";
	public String idRubInsuff="1";
	public String idRubrique="1";	
	public String montantRubrique="50";
    
    @RequestMapping(value="/RecepteurStructureInterne", method=RequestMethod.GET)
    public ModelAndView listDispo() {
	    List <Rubrique> rubriques =rubriqueService.getAllRubriques();// disponibiliteService.findDispoByMontant(50);
        System.out.println("Dispo size"+rubriques.size());
        return new ModelAndView("RecepteurStructureInterne", "rubriques", rubriques); 
	
}  
	
	    @RequestMapping(value = "/RecepteurStructureInterne", method = RequestMethod.POST)
		public String affect(HttpServletRequest request, HttpSession session)
		throws AuthenticationException {
	   //idRbrique Dispo et son montant 	
	      System.out.println("ani hna01");	
		  idRubrique =  request.getParameter("idRubrique");
		  System.out.println("id de la rubrique:");
		  System.out.println(idRubrique);
	   
	   montantRubrique =  request.getParameter("montant");
	   System.out.println("montant de la rubrique:");
	   System.out.println(montantRubrique);
	   
	 return "disponibilite";
		

		}
	    
	    @RequestMapping(value="/RecepteurDG", method=RequestMethod.GET)
	    public ModelAndView listDispoExt() {
		    List <Rubrique> rubriques = rubriqueService.getAllRubriques();//disponibiliteService.findDispoByMontant(50);
	        System.out.println("Dispo size"+rubriques.size());
	        return new ModelAndView("RecepteurDG", "rubriques", rubriques); 
		
	}



	@RequestMapping(value="/addDemandePlusieursCompt", method=RequestMethod.GET)
	public ModelAndView listDispoPlusier() {
		Rubrique rubrique=new Rubrique();
		return new ModelAndView("addDemandePlusieursCompte", "rubriques", rubrique);

	}


	@RequestMapping(value = "/RecepteurDG", method = RequestMethod.POST)
			public String affectExt(HttpServletRequest request, HttpSession session)
			throws AuthenticationException {
		   //idRbrique Dispo et son montant 	
		      System.out.println("ani hna01");	
			  idRubrique =  request.getParameter("idRubrique");
			  System.out.println("id de la rubrique:");
			  System.out.println(idRubrique);
		   
		   montantRubrique =  request.getParameter("montant");
		   System.out.println("montant de la rubrique:");
		   System.out.println(montantRubrique);
		   
		 return "redirect:disponibilite.html";
			

			}
	    

	    
	    
	    @RequestMapping(value = "/disponibilite", method = RequestMethod.GET)
		public String getDispo(Model model){
	        	 System.out.println("ani hna00");	
	    		String ch1 = montant_TT.replaceAll(" ", ""); 
	    		int ajout = Integer.parseInt(ch1);
	    		 
	    		System.out.println("Voici le montant Ajouteeeeee"+ajout);
	        	String ch2 = idRubInsuff.replaceAll(" ", ""); 
	    		int idRubIns = Integer.parseInt(ch2);
	    		System.out.println("Voici le id_rubtiqueIns"+idRubIns);
	    		String ch3 = montantInsuff.replaceAll(" ", ""); 
	    		int montIns = Integer.parseInt(ch2);
	    		System.out.println("Voici le montantInsuff"+montantInsuff);
	    		String ch4 = idRubrique.replaceAll(" ", ""); 
	    		int idRub = Integer.parseInt(ch4);
	    		
	    		System.out.println("Voici le idRub"+idRub);
	    		
	    		String ch5 = montantRubrique.replaceAll(".", ""); 
	    		System.out.println("Voici le montANTCH5"+ch5);
	    		String ch6 = ch5.replaceAll(" ", ""); 
	    		System.out.println("Voici le montANTCH6"+ch6);
	    		int mont = Integer.parseInt(ch6);   
	    		System.out.println("Voici le mont"+mont);
	    		
	    		 
	            montIns= montIns + ajout;
	            mont= mont - ajout;
	                
	            
	            
	       //     disponibiliteService.alterDemandeById(idRubIns,montIns);
	     //       disponibiliteService.alterDispoById(idRub,mont);
	    	
			return "disponibilite";
		}

	
  
	
    
} 