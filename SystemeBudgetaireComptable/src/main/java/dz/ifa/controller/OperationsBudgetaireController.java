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
import dz.ifa.model.Engagement;
import dz.ifa.model.Guide;
import dz.ifa.model.LigneGuideTmp;
import dz.ifa.model.OperationBudgetaire;
import dz.ifa.model.OperationComptable;
import dz.ifa.model.PieceComptable;
import dz.ifa.model.Tier;
import dz.ifa.service.CompteService;
import dz.ifa.service.EngagementService;
import dz.ifa.service.GuideService;
import dz.ifa.service.OperationService;
import dz.ifa.service.PieceComptableService;

@Controller
public class OperationsBudgetaireController {
	@Autowired
	OperationService operationService;
	
	@Autowired
	EngagementService engagementService;
	
	@Autowired 
	PieceComptableService pieceComptableService;
	
	@Autowired
	CompteService compteService; 
	
	@Autowired
	private GuideService guideService;
	
	@PreAuthorize("hasAnyAuthority('ROLE_CREER_OPERATION_BUDGETAIRE', 'ROLE_ADMIN')")
	@RequestMapping(value="/opbudg",method=RequestMethod.GET)
	public String afficherOperationsBudgetaires(Model model){
		List<Engagement> listEngagement = engagementService.recupererListEngagements();
		model.addAttribute("listEngagements",listEngagement);
		List <Guide> guides = guideService.findAllGuides();
		model.addAttribute("guides", guides);
		return "operationBudgetaire";
	}
	
	
	@PreAuthorize("hasAnyAuthority('ROLE_CREER_OPERATION_BUDGETAIRE', 'ROLE_ADMIN')")
	@RequestMapping(value="/opbudg",method=RequestMethod.POST)
	public ModelAndView validerOperationBudgetaire(HttpServletRequest requete){
		
		String type= requete.getParameter("typeop");
		
		String dateGuide = null;
		int tailleElementsGuide = 1;
		PieceComptable pieceComptableGuide = new PieceComptable();
		List <LigneGuideTmp> listElementGuide= new ArrayList<LigneGuideTmp>();
		
		
		if ((type.compareTo("guide")!=0) &&  (type.compareTo("validation")!=0))
		{
			

					String nbParams;
					if((nbParams=requete.getParameter("nb_element")).compareTo("")==0) nbParams="1";
					int nombreEcriture = Integer.parseInt(nbParams);
					OperationComptable operationComptable = new OperationComptable();
					OperationBudgetaire operationBudgetaire = new OperationBudgetaire();

					String numOperation = requete.getParameter("numOperation");
					operationComptable.setNumOperation(numOperation);
					try {

						String date = requete.getParameter("dateOperation");
						DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
						Date dateOperation;
						dateOperation = dateFormat.parse(date);
						operationComptable.setDate(dateOperation);
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						System.out.print("date incorrect");
					}
					
					
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
						operationService.save(operationComptable);
						ecritureElementaire.setOperationComptable(operationComptable);
						operationComptable.getEcrituresElementaire().add(ecritureElementaire);
						ecritureElementaire.setOperationComptable(operationComptable);
					}
					
					
		
					long idPiece = Long.parseLong(requete.getParameterValues("pieceSelection")[0]);
					PieceComptable pieceComptable = pieceComptableService.findPieceById(idPiece);
					operationComptable.setPieceComptable(pieceComptable);		
					operationBudgetaire.setOperationComptable(operationComptable);
					long engaId = Long.parseLong(requete.getParameterValues("engaSelection")[0]);
					Engagement engagement = engagementService.findEngagementById(engaId);
					operationBudgetaire.setEngagement(engagement);
					Printer.printObject(operationBudgetaire);
					operationService.save(operationBudgetaire);
					
					 ModelAndView m= new ModelAndView("redirect:/opbudg.html");
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
		
					
					
					//R�cup�ration du montant total
					String montantglo = requete.getParameter("montantglobal");
					montantglo = montantglo.replaceAll(" ", "");
					Long montantglobal= Long.parseLong(montantglo);
					
					//R�cup�ration de l'engement  
					String nomEngagement =requete.getParameter("engaSelection");
					System.out.println("le nom est" + nomEngagement);
					
					//R�cup�ration de l'id du guide
					String idGuide= requete.getParameter("idguideselected");
					
					//Envoie du model
					 ModelAndView m= new ModelAndView("operationBudgetaireGuide", "date", dateGuide);
					 m.addObject("idPiece", idPiece);
					 m.addObject("montantglo",montantglo);
					 m.addObject("nomEngagement",nomEngagement);
					
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
					System.out.println("la taille " + tailleElementsGuide);
					
					m.addObject("taille",guide.getListcpt().size() );
					m.addObject("list", listElementGuide);
					 
					 return m;
			 
				
		}
			else
			{


					String nbParams;
					if((nbParams=requete.getParameter("nb_element")).compareTo("")==0) nbParams="1";
					int nombreEcriture = Integer.parseInt(nbParams);
					OperationComptable operationComptable = new OperationComptable();
					OperationBudgetaire operationBudgetaire = new OperationBudgetaire();

					String numOperation = requete.getParameter("numOperation");
					operationComptable.setNumOperation(numOperation);
					try {

						String date = requete.getParameter("dateOperation");
						DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
						Date dateOperation;
						dateOperation = dateFormat.parse(date);
						operationComptable.setDate(dateOperation);
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						System.out.print("date incorrect");
					}
					
					
					for(int i=0;i<nombreEcriture;i++){
						String numCompte = requete.getParameter("idCompte"+i);
						String typeCompte = requete.getParameter("type"+i);
						String montant = requete.getParameter("montant"+i);
						EcritureComptableElementaire ecritureElementaire = new EcritureComptableElementaire();


						if(typeCompte.startsWith("D")) ecritureElementaire.setDebiteur(true); 
						else ecritureElementaire.setDebiteur(false);
						//Montant 
						ecritureElementaire.setMontant(Float.parseFloat(montant));
						operationService.save(operationComptable);
						ecritureElementaire.setOperationComptable(operationComptable);
						operationComptable.getEcrituresElementaire().add(ecritureElementaire);
						ecritureElementaire.setOperationComptable(operationComptable);
					}
					long idPiece = Long.parseLong(requete.getParameterValues("pieceSelection")[0]);
					PieceComptable pieceComptable = pieceComptableService.findPieceById(idPiece);
					operationComptable.setPieceComptable(pieceComptable);		
					operationBudgetaire.setOperationComptable(operationComptable);
					long engaId = Long.parseLong(requete.getParameterValues("engaSelection")[0]);
					Engagement engagement = engagementService.findEngagementById(engaId);
					operationBudgetaire.setEngagement(engagement);
					Printer.printObject(operationBudgetaire);
					operationService.save(operationBudgetaire);

					 ModelAndView m= new ModelAndView("redirect:/opbudg.html");
					 return m; 
				}
	}
}
	