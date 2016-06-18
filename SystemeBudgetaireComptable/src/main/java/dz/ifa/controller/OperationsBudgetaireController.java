package dz.ifa.controller;


import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dz.ifa.model.EcritureComptableElementaire;
import dz.ifa.model.Engagement;
import dz.ifa.model.OperationBudgetaire;
import dz.ifa.model.OperationComptable;
import dz.ifa.model.PieceComptable;
import dz.ifa.model.Tier;
import dz.ifa.service.CompteService;
import dz.ifa.service.EngagementService;
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
	
	@RequestMapping(value="/opbudg",method=RequestMethod.GET)
	public String afficherOperationsBudgetaires(Model model){
		List<Engagement> listEngagement = engagementService.recupererListEngagements();
		model.addAttribute("listEngagements",listEngagement);
		
		return "operationBudgetaire";
	}
	@RequestMapping(value="/opbudg",method=RequestMethod.POST)
	public String validerOperationBudgetaire(HttpServletRequest requete){
		
		//TODO récupérer le compte à partir de la base de données
		String nbParams;
		if((nbParams=requete.getParameter("nb_element")).compareTo("")==0) nbParams="1";
		int nombreEcriture = Integer.parseInt(nbParams);
		OperationComptable operationComptable = new OperationComptable();
		OperationBudgetaire operationBudgetaire = new OperationBudgetaire();
		//Numéro de l'opération
		operationComptable.setNumOperation("");
		operationComptable.setDate(Calendar.getInstance().getTime());
		try {
			//Date de l'opération
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

			//Récupération du compte de la base de données
			ecritureElementaire.setCompte(compteService.findCptByName(numCompte));
			//Débiteur ou créditeur ?
			if(typeCompte.startsWith("D")) ecritureElementaire.setDebiteur(true); 
			else ecritureElementaire.setDebiteur(false);
			//Montant 
			ecritureElementaire.setMontant(Float.parseFloat(montant));
			operationService.save(operationComptable);
			ecritureElementaire.setOperationComptable(operationComptable);
			operationComptable.getEcrituresElementaire().add(ecritureElementaire);
		}
		//Récupération de la pieceComptable
		long idPiece = Long.parseLong(requete.getParameterValues("pieceSelection")[0]);
		PieceComptable pieceComptable = pieceComptableService.findPieceById(idPiece);
		operationComptable.setPieceComptable(pieceComptable);
		//Affichage de l'objet
		/**try {
			ObjectWriter ow = new ObjectMapper().writer().withDefaultPrettyPrinter();
			String json = ow.writeValueAsString(operationComptable);
			System.out.print(json);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}**/
		
		
		operationBudgetaire.setOperationComptable(operationComptable);
		Tier tier = engagementService.findTierByPieceId(idPiece);
		Engagement engagement = engagementService.findEngagementByTierId(tier.getId());
		operationBudgetaire.setM_Engagement(engagement);
		Printer.printObject(operationBudgetaire);
		operationService.save(operationBudgetaire);
		return "operationBudgetaire";
	}
}
	

