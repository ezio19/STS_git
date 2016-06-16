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
import dz.ifa.model.OperationComptable;
import dz.ifa.model.PieceComptable;
import dz.ifa.model.Tier;
import dz.ifa.service.CompteService;
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
	
	
    //Methodes de traitement
	@RequestMapping(value="/opcompt",method=RequestMethod.GET)
	public String afficherOperationsComptables(Model model){
		Printer.printObject(pieceComptableService.findPiecesByTierId(1));
		//R�cup�ration de la liste des pieces selon le ID du tier
		List<Tier> listeTiers = tierService.getAllTiers();
		model.addAttribute("listTiers", listeTiers);
		return "oprationComptable";
	}
	
	@RequestMapping(value="/opcompt",method=RequestMethod.POST)
	public String validerOperationComptable(HttpServletRequest requete){
		
		//TODO r�cup�rer le compte � partir de la base de donn�es
		String nbParams;
		if((nbParams=requete.getParameter("nb_element")).compareTo("")==0) nbParams="1";
		int nombreEcriture = Integer.parseInt(nbParams);
		OperationComptable operationComptable = new OperationComptable();
		//Num�ro de l'op�ration
		operationComptable.setNumOperation("");
		operationComptable.setDate(Calendar.getInstance().getTime());
		try {
			//Date de l'op�ration
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
			
			operationComptable.getEcrituresElementaire().add(ecritureElementaire);
		}

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
		
		operationService.save(operationComptable);
		
	   return "oprationComptable";
	}  
}
