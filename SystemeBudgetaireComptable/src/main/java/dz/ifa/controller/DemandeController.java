package dz.ifa.controller;

import java.util.Iterator;
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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import dz.ifa.model.DemandeTransfert;
import dz.ifa.model.Exercise;
import dz.ifa.model.Goal;
import dz.ifa.model.Intermediaire;
import dz.ifa.service.DemandeTransfertService;

@Controller
@SessionAttributes("demandeTransfert")
public class DemandeController {
	@Autowired
	private DemandeTransfertService demandeTransfertService;
	public String num_demande_T;
	
	public String montant_T;

	
	

	@RequestMapping(value = "/addDemandeTransfert", method = RequestMethod.GET)
	public String addDemande(Model model, HttpSession session) {
		
		DemandeTransfert demandeTransfert = (DemandeTransfert) session.getAttribute("demandeTransfert");
	
		if(demandeTransfert==null){			
			demandeTransfert= new DemandeTransfert();
		}
		model.addAttribute("demandeTransfert", demandeTransfert);
	//	System.out.println("done!");
	
		return "addDemande";
	}	
	
	
	
	@RequestMapping(value = "/addDemandeTransfert", method = RequestMethod.POST)
	public String updateDemande(@Valid @ModelAttribute("demandeTransfert") DemandeTransfert demandeTransfert, BindingResult result) 
	
	{
		
	
			demandeTransfertService.save(demandeTransfert);
		
		
		return "addDemande";
	}
	
	
	
	
	
	
	@PreAuthorize("hasAnyAuthority('ROLE_VOIR_DISPONIBIITE_INTRA', 'ROLE_ADMIN')")
    @RequestMapping(value="/AllDemandes", method=RequestMethod.GET)
    public ModelAndView listDemandes() {
        
        List <DemandeTransfert> demandes = demandeTransfertService.findAllDemandes();
            return new ModelAndView("listeDemandes", "liste", demandes);
    }
    
	
	
	@PreAuthorize("hasAnyAuthority('ROLE_VOIR_DISPONIBIITE_INTRA', 'ROLE_ADMIN')")
    @RequestMapping(value = "/AllDemandes", method = RequestMethod.POST)
	public String deleteGuide2(HttpServletRequest request, HttpSession session)
		    throws AuthenticationException {
		num_demande_T =  request.getParameter("num_demande");
		montant_T =request.getParameter("montant");

		System.out.println(request.getParameter("montant"));
	//	System.out.println(request.getParameter("code_monnaie"));
	
		
		return "redirect:getDemande.html";
	}


	@PreAuthorize("hasAnyAuthority('ROLE_VOIR_DISPONIBIITE_INTRA', 'ROLE_ADMIN')")
	@RequestMapping(value = "/getDemande", method = RequestMethod.GET)
	public String getDemande(Model model){
	//	System.out.println("je suis le numero de demande :"+num_demande_T);
		String ch1 = num_demande_T.replaceAll(" ", ""); 
		//System.out.println("je suis le numero de demande :"+ch1);
		int foo = Integer.parseInt(ch1);
		System.out.println("je suis le numero de demande :"+foo);
		List<DemandeTransfert> demandeTransfert = demandeTransfertService.findDemandeById(foo);
		System.out.println("DEMANDE TRANSFER"+demandeTransfert.size());
		model.addAttribute("demandeTransfert", demandeTransfert);
		return "getDemandeTransfert";
	}

    
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

	@RequestMapping(value = "/addDemandePlusieursCompte", method = RequestMethod.GET)
	public String addDemande1(Model model, HttpSession session) {
		
		DemandeTransfert demandeTransfert =new DemandeTransfert();//= (DemandeTransfert) session.getAttribute("demandeTransfert");
	
		if(demandeTransfert==null){			
			demandeTransfert= new DemandeTransfert();
		}
		model.addAttribute("demandeTransfert", demandeTransfert);
	//	System.out.println("done!");
	
		return "addDemandePlusieursCompte";
	}	
	
	
	
	@RequestMapping(value = "/addDemandePlusieursCompte", method = RequestMethod.POST)
	public String updateDemande1(@Valid @ModelAttribute("demandeTransfert") DemandeTransfert demandeTransfert, BindingResult result) 
	
	{
		
	//	System.out.println("ma demande numero: " + demandeTransfert.getNum_demande());
		
	
			demandeTransfertService.save(demandeTransfert);
		
		
		return "addDemandePlusieursCompte";
	}

} 