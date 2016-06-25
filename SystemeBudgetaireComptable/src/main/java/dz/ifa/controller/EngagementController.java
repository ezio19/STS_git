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
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dz.ifa.model.Engagement;
import dz.ifa.model.EngagementElementaire;
import dz.ifa.model.Tier;
import dz.ifa.model.nomenclature.Chapitre;
import dz.ifa.model.nomenclature.Rubrique;
import dz.ifa.model.nomenclature.Section;
import dz.ifa.repository.TierRepository;
import dz.ifa.service.EngagementService;
import dz.ifa.service.TierService;
import dz.ifa.service.nomenclatures.ChapitresService;
import dz.ifa.service.nomenclatures.RubriqueService;
import dz.ifa.service.nomenclatures.SectionService;



@Controller
public class EngagementController {
	
	@Autowired
	private EngagementService engagementService;
	
	@Autowired
	private TierService tierService;
	
	@Autowired
	private TierService fournisseurService;
	
	@Autowired
	private SectionService sectionService;
	
	@Autowired
	private TierRepository fournRep;
	
	@Autowired
	private ChapitresService chapitreService;
	
	@Autowired
	private RubriqueService rubriqueService;
	
    @RequestMapping(value = {"/eng"},method = {RequestMethod.GET})
    public String getUtilisateurs(Model model) {
    	
    	List<Tier> listeTiers =tierService.loadAll();
		model.addAttribute("listTiers", listeTiers);
  
		List<Section> listSections = sectionService.getAllSections();
    	model.addAttribute("listSections", listSections);
    	
    	
    	List<Chapitre> listChapitres = chapitreService.getAllChapitres();
    	model.addAttribute("listChapitres", listChapitres);
    	
    	
    	
    	List<Rubrique> listRubriques = rubriqueService.getAllRubriques();
    	model.addAttribute("listRubriques", listRubriques);
    	
   
        return "fiche_engagement";
    }

    @RequestMapping(value="/eng",method=RequestMethod.POST)
    	public String addEngagement(HttpServletRequest requete){
    		try{
    		//TODO récupérer le compte à partir de la base de données
    	 List<EngagementElementaire> eng = new ArrayList<EngagementElementaire>();
    	    String nbParams;
    		if((nbParams=requete.getParameter("nb_element")).compareTo("")==0) nbParams="1";
    		int nombreEngagement = Integer.parseInt(requete.getParameter("nb_element"));
    		Engagement engagement = new Engagement();
    		
    		//Numéro de l'opération
    		engagement.setNumero(0);
    		engagement.setDate(Calendar.getInstance().getTime());
    		try {
    			//Date de l'opération
    			String date = requete.getParameter("dateOperation");
    			long numeng = Integer.parseInt(requete.getParameter("numeng"));
    			DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
    			Date dateOperation;
    			dateOperation = dateFormat.parse(date);
    			engagement.setDate(dateOperation);
    			engagement.setNumero(numeng);
    			System.out.println("date"+dateOperation+"numero"+numeng);
    		} catch (ParseException e) {
    			// TODO Auto-generated catch block
    			System.out.print("There is a problem");
    		}
    		Long idfourn = Long.parseLong(requete.getParameterValues("tierSelection")[0]);
    		System.out.print("idfourn");
    		
    		Tier fourn=fournRep.findOne(idfourn);
    		engagement.setTier(fourn);
    		engagement.setNom(requete.getParameter("nomEnga"));
    		
    		
    		
    		for(int i=0;i<nombreEngagement;i++){
    			String montant;
    			if((montant=requete.getParameter("finaldyn"+ i)).compareTo("")==0) montant="0";
        		Float montantfinal = Float.parseFloat(requete.getParameter("finaldyn"+ i));
    			System.out.println("heo"+i+montantfinal);
        		String idRubrique = requete.getParameterValues("rubriqueSelection"+i)[0];
        		System.out.println("Rubrique"+idRubrique);
        		String[] devided=idRubrique.split("montant");
        		
        		String Rubistr=devided[0];
    
    			EngagementElementaire engagementElementaire = new EngagementElementaire();
    			System.out.println("hyaaaa Rubrique + modd"+idRubrique+" puis" + Rubistr);
    			
    			engagementElementaire.setMontant(montantfinal);
    			System.out.println("IL EST LAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
    			Printer.printObject(rubriqueService.getRubriqueByCodeRubrique(Rubistr).get(0));
    			
    			engagementElementaire.setM_Rubrique(rubriqueService.getRubriqueByCodeRubrique(Rubistr).get(0));
    			System.out.println("LHamdliAllah");	
    			Printer.printObject(rubriqueService.getRubriqueByCodeRubrique(Rubistr).get(0));
    			eng.add(engagementElementaire);
    			System.out.println("Doneee w fret");	
    			
    			
    		}
    		engagement.setEngagementsElementaires(eng);
    		engagementService.save(engagement);
    	
    	
    		}catch(Exception e){}		
		return "fiche_engagement";
	}
    
    
    

}
