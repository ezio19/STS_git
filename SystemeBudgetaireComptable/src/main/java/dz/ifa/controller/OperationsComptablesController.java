package dz.ifa.controller;




import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dz.ifa.model.EcritureComptableElementaire;
import dz.ifa.model.Guide;
import dz.ifa.model.LigneGuideTmp;
import dz.ifa.model.OperationBudgetaire;
import dz.ifa.model.OperationComptable;
import dz.ifa.model.PieceComptable;
import dz.ifa.model.Tier;
import dz.ifa.service.CompteService;
import dz.ifa.service.GuideService;
import dz.ifa.service.OperationService;
import dz.ifa.service.PieceComptableService;
import dz.ifa.service.TierService;


@Controller
public class OperationsComptablesController {
	
	@Autowired 
	PieceComptableService pieceComptableService;
	
	@Autowired 
	OperationService operationService;
	
	@Autowired
	CompteService compteService; 
	
	@Autowired
	TierService tierService;
	
	@Autowired
	private GuideService guideService;
	
	@PreAuthorize("hasAnyAuthority('ROLE_CREER_OPERATION_COMPTABLE', 'ROLE_ADMIN')")
	@RequestMapping(value="/opcomptguide",method=RequestMethod.GET)
	public String afficherOperationsGuideComptables(Model model){
		Printer.printObject(pieceComptableService.findPiecesByTierId(1));
		List<Tier> listeTiers = tierService.getAllTiers();
		model.addAttribute("listTiers", listeTiers);
		List <Guide> guides = guideService.findAllGuides();
		model.addAttribute("guides", guides);
		return "operationComptableGuide";
	}
	
	
	
    //Methodes de traitement
	@PreAuthorize("hasAnyAuthority('ROLE_CREER_OPERATION_COMPTABLE', 'ROLE_ADMIN')")
	@RequestMapping(value="/opcompt",method=RequestMethod.GET)
	public String afficherOperationsComptables(Model model){
		Printer.printObject(pieceComptableService.findPiecesByTierId(1));
		//R�cup�ration de la liste des pieces selon le ID du tier
		List<Tier> listeTiers = tierService.getAllTiers();
		model.addAttribute("listTiers", listeTiers);
		List <Guide> guides = guideService.findAllGuides();
		model.addAttribute("guides", guides);
		return "oprationComptable";
	}
	@PreAuthorize("hasAnyAuthority('ROLE_CREER_OPERATION_COMPTABLE', 'ROLE_ADMIN')")
	@RequestMapping(value="/opcompt",method=RequestMethod.POST)
	public ModelAndView validerOperationComptable(HttpServletRequest requete){
		
		String type= requete.getParameter("typeop");
		
		String dateGuide = null;
		int tailleElementsGuide = 1;
		PieceComptable pieceComptableGuide = new PieceComptable();
		List <LigneGuideTmp> listElementGuide= new ArrayList<LigneGuideTmp>();
		
		
		
		if ((type.compareTo("guide")!=0) &&  (type.compareTo("validation")!=0))
		{
			//Saisie manuelle
		
		String nbParams;
		if((nbParams=requete.getParameter("nb_element")).compareTo("")==0) nbParams="1";
		int nombreEcriture = Integer.parseInt(nbParams);
		OperationComptable operationComptable = new OperationComptable();
		String numOperation = requete.getParameter("numOperation");
		operationComptable.setNumOperation(numOperation);
		try {
			//Date de l'op�ration
			String date = requete.getParameter("dateOperation");
			System.out.println("le nombre de ligne est:" + date);

			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date dateOperation;
			dateOperation = dateFormat.parse(date);
			operationComptable.setDate(dateOperation);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			System.out.print("date incorrect");
		}
		


		long idPiece = Long.parseLong(requete.getParameterValues("pieceSelection")[0]);
		PieceComptable pieceComptable = pieceComptableService.findPieceById(idPiece);
		operationComptable.setPieceComptable(pieceComptable);
			

		//Récupération du montant total
		String montantglo = requete.getParameter("montantglobal");
		Long montantglobal= Long.parseLong(montantglo);
		
		
		
		for(int i=0;i<nombreEcriture;i++){
			String numCompte = requete.getParameter("idCompte"+i);
			String typeCompte = requete.getParameter("type"+i);
			String montant = requete.getParameter("montant"+i);
			EcritureComptableElementaire ecritureElementaire = new EcritureComptableElementaire();


			ecritureElementaire.setCompte(compteService.findCptByName(numCompte));

			if(typeCompte.startsWith("D")) ecritureElementaire.setDebiteur(true); 
			else ecritureElementaire.setDebiteur(false);
			//Montant 
			ecritureElementaire.setMontant(Float.parseFloat(montant));
			ecritureElementaire.setOperationComptable(operationComptable);
			operationComptable.getEcrituresElementaire().add(ecritureElementaire);
			ecritureElementaire.setOperationComptable(operationComptable);
		}
		operationComptable.setCreditdebit();
		operationService.save(operationComptable);
		
		 ModelAndView m= new ModelAndView("redirect:/brouillard.html");
		 return m; 
		}
		
		
		
		else
			if (type.compareTo("guide")==0)
		{	//Utilisation du guide
		   //Recuperation de la date
			 dateGuide = requete.getParameter("dateOperation");
			
			

			//Recuperation de la pieceComptable
			long idPiece = Long.parseLong(requete.getParameterValues("pieceSelection")[0]);
			pieceComptableGuide = pieceComptableService.findPieceById(idPiece);

			
			//Récupération du montant total
			String montantglo = requete.getParameter("montantglobal");
			montantglo = montantglo.replaceAll(" ", "");
			Long montantglobal= Long.parseLong(montantglo);
			
			//Récupération du fournisseur 
			Long idfournisseur =pieceComptableGuide.getTier().getId();
			
			//Récupération de l'id du guide
			String idGuide= requete.getParameter("idguideselected");
			
			//Envoie du model
			 ModelAndView m= new ModelAndView("operationComptableGuide", "date", dateGuide);
			 m.addObject("idPiece", idPiece);
			 m.addObject("montantglo",montantglo);
			 m.addObject("idfournisseur",idfournisseur);
			
			String idguide= requete.getParameter("idguideselected");
			idguide = idguide.replaceAll(" ", "");
			Guide guide= guideService.findGuidebyId(Long.parseLong(idguide));
			
			    
			for (int i=0; i<guide.getListcpt().size(); i++)
			    {
			    	LigneGuideTmp ligne = new LigneGuideTmp();
			    	ligne.setCpt(guide.getListcpt().get(i).getCpt());
			    	String chaine= guide.getListcpt().get(i).getRolecpt();
			    	ligne.setRolecpt(chaine);
			    	ligne.setPourcentage(guide.getListcpt().get(i).getPourcentage() * montantglobal / 100);
			    	listElementGuide.add(ligne);
			    }
			tailleElementsGuide = guide.getListcpt().size();
			Printer.printObject(listElementGuide);
			m.addObject("taille",guide.getListcpt().size() );
			m.addObject("list", listElementGuide);
			 
			 return m;
			 
				
		}
			else
			{
				//Validation apres utilisation du guide
				

				String nbParams;
				if((nbParams=requete.getParameter("nb_element")).compareTo("")==0) nbParams="1";
				int nombreEcriture = Integer.parseInt(nbParams);

				OperationComptable operationComptable = new OperationComptable();

				String numOperation = requete.getParameter("numOperation");
				operationComptable.setNumOperation(numOperation);
			
				try {

					String date = requete.getParameter("dateOperation");

					DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
					Date dateOperation;
					dateOperation = dateFormat.parse(date);
					operationComptable.setDate(dateOperation);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					System.out.print("date incorrect");
				}
				
				long idPiece = Long.parseLong(requete.getParameter("pieceSelection"));

				PieceComptable pieceComptable = pieceComptableService.findPieceById(idPiece);
				operationComptable.setPieceComptable(pieceComptable);

				for(int i=0;i<nombreEcriture;i++){
					String numCompte = requete.getParameter("idCompte"+i);
					String typeCompte = requete.getParameter("type"+i);
					String montant = requete.getParameter("montant"+i);
					EcritureComptableElementaire ecritureElementaire = new EcritureComptableElementaire();

					
					ecritureElementaire.setCompte(compteService.findCptByName(numCompte));

					if(typeCompte.startsWith("D")) ecritureElementaire.setDebiteur(true); 
					else ecritureElementaire.setDebiteur(false);
					//Montant 
					ecritureElementaire.setMontant(Float.parseFloat(montant));
					
					operationComptable.getEcrituresElementaire().add(ecritureElementaire);
					ecritureElementaire.setOperationComptable(operationComptable);
				}
				operationComptable.setCreditdebit();
				operationService.save(operationComptable);
				
				 ModelAndView m= new ModelAndView("redirect:/brouillard.html");
				 return m; 

			}
			
	} 
	@RequestMapping(value="operations",method=RequestMethod.GET)
	public String afficherOperationsComptables(HttpServletRequest requete){
		List<OperationComptable> operationsComptables = operationService.getValideOperations();
		requete.setAttribute("listOperations", operationsComptables);
		return "listOperationsComptables";
	}
	
	@RequestMapping(value="operationsBudgetaires",method=RequestMethod.GET)
	public String afficherOperationsBudgetaires(HttpServletRequest requete){
		List<OperationBudgetaire> operationsBudgetaires = operationService.getAllOperationsBudgetairesValides();
		requete.setAttribute("listOperations", operationsBudgetaires);
		return "listOperationsBudgetaires";
	}
	

	@RequestMapping(value="brouillard",method=RequestMethod.GET)
	public String afficherBrouillardOperations(HttpServletRequest requete){
		requete.setAttribute("listOperations", operationService.getListOperationsBrouillard());
		return "brouillard";
	}
	
}
	
