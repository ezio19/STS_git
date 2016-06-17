package dz.ifa.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.naming.AuthenticationException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dz.ifa.model.Compte;
import dz.ifa.model.Exercise;
import dz.ifa.model.Goal;
import dz.ifa.model.Guide;
import dz.ifa.model.LigneGuide;
import dz.ifa.model.LigneGuideTmp;
import dz.ifa.model.TypeFacture;
import dz.ifa.service.CompteService;
import dz.ifa.service.GoalService;
import dz.ifa.service.GuideService;
import dz.ifa.service.LigneGuideService;
import dz.ifa.service.TypeFactureService;
import java.util.regex.*;
@Controller

public class GuideController {
	@Autowired
	private GuideService guideService;

	@Autowired
	private CompteService compteService;
	
	@Autowired
	private TypeFactureService typeFactureService;
	
	@Autowired
	private LigneGuideService ligneGuideService;

	
	
	@RequestMapping(value="/NewGuide", method=RequestMethod.GET)
	public ModelAndView getGuide(HttpServletRequest request, HttpSession session)  {
		List <TypeFacture> listtype = typeFactureService.findAllTypeFacture();
	    return new ModelAndView("Guide", "listtype", listtype);
	}
	  

	@RequestMapping(value="/OperationBudgetaire", method=RequestMethod.GET)
	public ModelAndView operationBudgetaire(HttpServletRequest request, HttpSession session)  {
	
		List <Guide> guides = guideService.findAllGuides();
        return new ModelAndView("operationBudgetaire", "guides", guides);
	}

	@RequestMapping(value="/ModifierGuide", method=RequestMethod.GET)
	@ResponseBody
	public String editGuide(HttpServletRequest request, HttpSession session,@RequestParam("id") int id)  {
			Guide guide= guideService.findGuidebyId(id);
			System.out.println(guide.getNom_guide());
			System.out.println(guide.getType_facture());

			for (int i=0; i<guide.getListcpt().size(); i++)
			{
			System.out.println(guide.getListcpt().get(i).getCpt());
			}
			
			//return new ModelAndView("ModifGuide", "guide", guide);
			return "modif";
		}
		
	
	
	
	@RequestMapping(value = "/NewGuide", params="addguide", method = RequestMethod.POST)
	public String handleLogin(HttpServletRequest request, HttpSession session)
		    throws AuthenticationException {
			int nbligne=0;
			String nb= request.getParameter("nb_element");
			
			if (nb.compareTo("")!=0) nbligne= Integer.parseInt(nb);

			String name = request.getParameter("nameguide");
			String type = request.getParameter("type_facture");
			String desc = request.getParameter("descriptionguide");
			String type2 = request.getParameter("type");
			Calendar c = Calendar.getInstance ();
			Date Date = c.getTime ();
			
			List <LigneGuide> list= new ArrayList<LigneGuide>();
			
			
			Guide guide= new Guide();
			guide.setNom_guide(name);
			
			
			guide.setDescriptionguide(desc);
			guide.setDate(Date);
			if (type2!=null)
			{ guide.setType_facture(type2);
			TypeFacture fac= new TypeFacture(type2);
			typeFactureService.save(fac);}
			else guide.setType_facture(type);
			
			System.out.println("le nombre de ligne est: " + nbligne);
			
			for (int i=0; i<nbligne+1; i++)
			
			{
				if ((request.getParameter("listcpt["+i+"].nomcpt") !=null) && (request.getParameter("listcpt["+i+"].rolecpt") !=null) && (request.getParameter("listcpt["+i+"].pourcentage") != null))
				{	
					String namecpt= request.getParameter("listcpt["+i+"].nomcpt");
					String typecpt= request.getParameter("listcpt["+i+"].rolecpt");
					String pourcentage= request.getParameter("listcpt["+i+"].pourcentage");
		
					LigneGuide ligne = new LigneGuide();
					ligne.setCpt(namecpt);
					ligne.setRolecpt(typecpt);
					if (pourcentage.compareTo("")!=0) ligne.setPourcentage(Float.parseFloat(pourcentage));
					else ligne.setPourcentage(0);
					ligne.setGuide(guide);
					list.add(ligne);
				}
			}
			
			guide.setListcpt(list);
			guideService.save(guide);
			return "Guide";
		}
	
	@RequestMapping(value="/AllGuides", method=RequestMethod.GET)
	public ModelAndView listGuides() {
		List <Guide> guides = guideService.findAllGuides();
	        return new ModelAndView("listeGuides", "guides", guides);
    }
	
	

	
	@RequestMapping(value = "/AllGuides", method = RequestMethod.POST)
	public ModelAndView deleteGuide2(HttpServletRequest request, HttpSession session)
		    throws AuthenticationException {
		
			/*System.out.println(request.getParameter("iddeleted"));
			System.out.println(request.getParameter("namedeleted"));
			System.out.println(request.getParameter("typeGuidedeleted"));
			System.out.println(request.getParameter("desciptiondeleted"));
			System.out.println(request.getParameter("datedeleted"));*/
			
			String type= request.getParameter("typeop");
			if(type.compareTo("modification")==0)
					{
						System.out.println("ha nmodifiyi");
						String id = request.getParameter("iddeleted");
						id = id.replaceAll(" ", "");
						Long idlong= Long.parseLong(id);
						Guide guide= guideService.findGuidebyId(idlong);
						List <TypeFacture> listtype = typeFactureService.findAllTypeFacture();
					    ModelAndView m= new ModelAndView("GuideUpdate", "listtype", listtype);
					    m.addObject("guide", guide);
					    List <LigneGuideTmp> list= new ArrayList<LigneGuideTmp>();
					    
					    for (int i=0; i<guide.getListcpt().size(); i++)
					    {
					    	LigneGuideTmp ligne = new LigneGuideTmp();
					    	ligne.setPos(i+1);
					    	ligne.setCpt(guide.getListcpt().get(i).getId());
					    	ligne.setRolecpt(guide.getListcpt().get(i).getRolecpt() );
					    	ligne.setPourcentage(guide.getListcpt().get(i).getPourcentage());
					    	list.add(ligne);
					    }
					    System.out.println("la taille est "  + list.size());
					    m.addObject("list", list);

						return m;
					    

					}
			else 
					{
						System.out.println("ha nsupprimi");
						String id = request.getParameter("iddeleted");
						id = id.replaceAll(" ", "");
						Long idlong= Long.parseLong(id);
						guideService.deleteGuideById(idlong);
						List <Guide> guides = guideService.findAllGuides();
				        return new ModelAndView("listeGuides", "guides", guides);
				
					}

	     }
	
	@RequestMapping(value = "/modifierGuide", method = RequestMethod.GET)
	public ModelAndView mogify(HttpServletRequest request, HttpSession session)
		    throws AuthenticationException {
		
		int nbligne=0;
		String nb= request.getParameter("nb_element");
		
	//	if (nb.compareTo("")!=0) nbligne= Integer.parseInt(nb);
		String id= request.getParameter("idguide");
		String name = request.getParameter("nameguide");
		String type = request.getParameter("type_facture");
		String desc = request.getParameter("descriptionguide");
		String type2 = request.getParameter("type");
		Calendar c = Calendar.getInstance ();
		Date Date = c.getTime ();
		
		System.out.println("l id= " +id);
		System.out.println("l id= " +name);

		/*List <LigneGuide> list= new ArrayList<LigneGuide>();
		
		
		Guide guide= new Guide();
		//guide.setId(Long.parseLong(id));
		guide.setNom_guide(name);
		
		
		guide.setDescriptionguide(desc);
		guide.setDate(Date);
		if (type2!=null)
		{ guide.setType_facture(type2);
		TypeFacture fac= new TypeFacture(type2);
		typeFactureService.save(fac);}
		else guide.setType_facture(type);
		
		System.out.println("le nombre de ligne est: " + nbligne);
		
		for (int i=0; i<nbligne+1; i++)
		
		{
			if ((request.getParameter("listcpt["+i+"].nomcpt") !=null) && (request.getParameter("listcpt["+i+"].rolecpt") !=null) && (request.getParameter("listcpt["+i+"].pourcentage") != null))
			{	
				String namecpt= request.getParameter("listcpt["+i+"].nomcpt");
				String typecpt= request.getParameter("listcpt["+i+"].rolecpt");
				String pourcentage= request.getParameter("listcpt["+i+"].pourcentage");
	
				LigneGuide ligne = new LigneGuide();
				ligne.setCpt(namecpt);
				ligne.setRolecpt(typecpt);
				if (pourcentage.compareTo("")!=0) ligne.setPourcentage(Float.parseFloat(pourcentage));
				else ligne.setPourcentage(0);
				ligne.setGuide(guide);
				list.add(ligne);
			}
		}
		
		guide.setListcpt(list);
		guideService.save(guide);
		*/
		
		
		List <Guide> guides = guideService.findAllGuides();

        return new ModelAndView("listeGuides", "guides", guides);

	}
	
	
	
	
	
	
	
	
	
	

	
	
	
	
}
