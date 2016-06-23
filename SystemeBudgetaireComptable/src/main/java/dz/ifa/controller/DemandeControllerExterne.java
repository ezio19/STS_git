package dz.ifa.controller;

import java.util.List;

import javax.naming.AuthenticationException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import dz.ifa.model.DemandeTransfertExterne;
import dz.ifa.service.DemandeTransfertExterneService;



/************************Demande de transfert externe *****************************/

@Controller
@SessionAttributes("demandeTransfertExterne")
public class DemandeControllerExterne {
	@Autowired
	private DemandeTransfertExterneService demandeTransfertExterneService;
	public String num_demande_T;
	public String montant_T;
	
/*********Ajouter une demande de transfert externe ***********************/

	@RequestMapping(value = "/addDemandeTransfertExterne", method = RequestMethod.GET)
	public String addDemande(Model model, HttpSession session) {
		
		DemandeTransfertExterne demandeTransfertExterne = (DemandeTransfertExterne) session.getAttribute("demandeTransfertExterne");
	
		if(demandeTransfertExterne==null){			
			demandeTransfertExterne= new DemandeTransfertExterne();
		}
		model.addAttribute("demandeTransfertExterne", demandeTransfertExterne);
		
		System.out.println("Demande de transfert Externe Ajoutee!");
	
		return "addDemandeExterne";
	}	
	
	
	@RequestMapping(value = "/addDemandeTransfertExterne", method = RequestMethod.POST)
	public String updateDemande(@Valid @ModelAttribute("demandeTransfertExterne") DemandeTransfertExterne demandeTransfertExterne, BindingResult result) 
	
	{
		
	//	System.out.println("ma demande de transfert Externe numero: " + demandeTransfertExterne.getNum_demande());
		
	
			demandeTransfertExterneService.save(demandeTransfertExterne);
		
		
		return "addDemandeTransfertExterne";
	}
	
	/************************************************************************************/
	
	
	
	
	/*********All demandes transfert externe ***********************/
	
	
	@PreAuthorize("hasAnyAuthority('ROLE_VOIR_DISPONIBIITE_INTER', 'ROLE_ADMIN')")
    @RequestMapping(value="/AllDemandesExterne", method=RequestMethod.GET)
    public ModelAndView listDemandesExterne() {
        
        List <DemandeTransfertExterne> demandesExterne = demandeTransfertExterneService.findAllDemandesExterne();
            return new ModelAndView("listeDemandesExterne", "listeExterne", demandesExterne);
    }
	
    
	@PreAuthorize("hasAnyAuthority('ROLE_VOIR_DISPONIBIITE_INTER', 'ROLE_ADMIN')")
    @RequestMapping(value = "/AllDemandesExterne", method = RequestMethod.POST)
    
	public String deleteGuide3(HttpServletRequest request, HttpSession session)
		    throws AuthenticationException {
   		num_demande_T =  request.getParameter("num_demande");
		System.out.println(request.getParameter("num_rubrique"));
		System.out.println(request.getParameter("montant"));
		System.out.println(request.getParameter("code_monnaie"));
		System.out.println("getDemandeSalutExterne");
		
	//	List<DemandeTransfert> demandeTransfert = demandeTransfertService.findDemandeById(num_demande_T);
	
		
		return "getDemandeExterne";
	}
    
    /**********get  demandes transfert externe ***********************/
	
	
    @PreAuthorize("hasRole('admin')and hasRole('DG')")
    @RequestMapping(value = "/getDemandeExterne", method = RequestMethod.GET)
	public String getDemande(Model model){
    
	
		System.out.println("je suis le numero de demande externe :"+num_demande_T);
		String ch1 = num_demande_T.replaceAll(" ", ""); 
		System.out.println("je suis le numero de demande :"+ch1);
		int foo = Integer.parseInt(ch1);
		System.out.println("je suis le numero de demande :"+foo);
		List<DemandeTransfertExterne> demandeTransfertExterne = demandeTransfertExterneService.findDemandeExterneById(foo);
		System.out.println("DEMANDE TRANSFER EXTERNE SIZE"+demandeTransfertExterne.size());
		model.addAttribute("demandeTransfertExterne", demandeTransfertExterne);
		return "getDemandeTransfertExterne";
		
	}
   
    /************************************************************************************/
    
    /**********Recepteur DG ***********************/
	
    
   // @RequestMapping(value="/RecepteurDG", method=RequestMethod.GET)
    //public ModelAndView listDispoExterne() {
        
      //  List <Rubrique> rubriques = new ArrayList<>() ;
        //System.out.println("Dispo externe size"+rubriques.size());
          //  return new ModelAndView("RecepteurDG", "listeExterne", rubriques);
    //}
    
    
    
    public String getNum_demande_T() {
  		return num_demande_T;
  	}



  	public void setNum_demande_T(String num_demande_T) {
  		this.num_demande_T = num_demande_T;
  	}



  	public String getMontant_T() {
  		return montant_T;
  	}



  	public void setMontant_T(String montant_T) {
  		this.montant_T = montant_T;
  	}
    
    

} 