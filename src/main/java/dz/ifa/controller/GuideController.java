package dz.ifa.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
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
import dz.ifa.model.TypeFacture;
import dz.ifa.service.CompteService;
import dz.ifa.service.GoalService;
import dz.ifa.service.GuideService;
import dz.ifa.service.TypeFactureService;

@Controller

public class GuideController {
	@Autowired
	private GuideService guideService;

	@Autowired
	private CompteService compteService;
	
	@Autowired
	private TypeFactureService typeFactureService;
	
	
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
			
			
			for (int i=0; i<nbligne+1; i++)
			
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
			
			guide.setListcpt(list);
			guideService.save(guide);
			return "Guide";
		}
	
	@RequestMapping(value="/AllGuides", method=RequestMethod.GET)
	public ModelAndView listGuides() {
		
		List <Guide> guides = guideService.findAllGuides();
	        return new ModelAndView("listeGuides", "guides", guides);
    }
	

	
	
	
	
}
