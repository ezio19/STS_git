package dz.ifa.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.naming.AuthenticationException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

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
	private static final int BUFFER_SIZE = 256;

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


	
	
	
	@RequestMapping(value = "/NewGuide", params="addguide", method = RequestMethod.POST)
	public ModelAndView handleLogin(HttpServletRequest request, HttpSession session)
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
			List <Guide> guides = guideService.findAllGuides();
	        return new ModelAndView("redirect:/AllGuides.html", "guides", guides);
		}

	@RequestMapping(value="/AllGuides", method=RequestMethod.GET)
	public ModelAndView listGuides(@RequestParam(value="nameSearch",required=false, defaultValue="")String nameSearch)  {
		List <Guide> guides= new ArrayList<>();
		if(nameSearch.isEmpty()){
			guides = guideService.findAllGuides();

		}
		else
		{
			if (guideService.fingGuideByName(nameSearch)!=null)
				guides.add(guideService.fingGuideByName(nameSearch));
		}

		return new ModelAndView("listeGuides", "guides", guides);
	}
	
	
	
	
	@RequestMapping(value = "/AllGuides", method = RequestMethod.POST)
	public ModelAndView deleteGuide2(HttpServletRequest request, HttpSession session)
		    throws AuthenticationException {
		
			String type= request.getParameter("typeop");
			System.out.println(type);
			if (type!= null) {
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
					    	ligne.setId(guide.getListcpt().get(i).getId());
					    	ligne.setCpt(guide.getListcpt().get(i).getCpt());
					    	ligne.setRolecpt(guide.getListcpt().get(i).getRolecpt() );
					    	ligne.setPourcentage(guide.getListcpt().get(i).getPourcentage());
					    	list.add(ligne);
					    }
					    System.out.println("la taille est "  + list.size());
					    m.addObject("list", list);

						return m;
					    

					}
			else 
				if(type.compareTo("suppression")==0)
					{
						System.out.println("ha nsupprimi");
						String id = request.getParameter("iddeleted");
						id = id.replaceAll(" ", "");
						Long idlong= Long.parseLong(id);
						guideService.deleteGuideById(idlong);
						
						List <Guide> guides = guideService.findAllGuides();
				        return new ModelAndView("listeGuides", "guides", guides);
						
					}
				else  
				
				{
					System.out.println("ha nupdater");
					
					int nbligne=0;
					String nb= request.getParameter("nb_element");
					
					if (nb.compareTo("")!=0) nbligne= Integer.parseInt(nb);
					String id= request.getParameter("idguide");
					String name = request.getParameter("nameguide");
					String typefact = request.getParameter("type_facture");
					String desc = request.getParameter("descriptionguide");
					String type2 = request.getParameter("type");
					Calendar c = Calendar.getInstance ();
					Date Date = c.getTime ();
					
					System.out.println("l id= " +id);
					System.out.println("l id= " +name);

					List <LigneGuide> list= new ArrayList<LigneGuide>();
					
					id = id.replaceAll(" ", "");
					
					guideService.deleteGuideById(Long.parseLong(id));
					
					Guide guide= new Guide();
					
					guide.setId(Long.parseLong(id));
					guide.setNom_guide(name);
					
					
					guide.setDescriptionguide(desc);
					guide.setDate(Date);
					if (type2!=null)
					{ guide.setType_facture(type2);
					TypeFacture fac= new TypeFacture(type2);
					typeFactureService.save(fac);}
					else guide.setType_facture(typefact);
					
					System.out.println("le nombre de ligne est: " + nbligne);
					
					
				
					
					for (int i=0; i<nbligne+1; i++)
					
					{
						if ((request.getParameter("listcpt["+i+"].nomcpt") !=null) && (request.getParameter("listcpt["+i+"].rolecpt") !=null) && (request.getParameter("listcpt["+i+"].pourcentage") != null))
						{	
							String namecpt= request.getParameter("listcpt["+i+"].nomcpt");
							String typecpt= request.getParameter("listcpt["+i+"].rolecpt");
							String pourcentage= request.getParameter("listcpt["+i+"].pourcentage");
							String idligne= request.getParameter("listcpt["+i+"].idligne");
							System.out.println(idligne);

				
							LigneGuide ligne = new LigneGuide();
							
							if (idligne.compareTo("")!=0) 
							{idligne = idligne.replaceAll(" ", "");
							ligne.setId(Long.parseLong(idligne));}
							
							
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
					
					
					
					List <Guide> guides = guideService.findAllGuides();

			        return new ModelAndView("listeGuides", "guides", guides);

				}
			
				}
	
				else
				{
					List <TypeFacture> listtype = typeFactureService.findAllTypeFacture();
				    return new ModelAndView("redirect:/NewGuide.html", "listtype", listtype);
				}

	     }
		
	@RequestMapping(value = "/download" , method = RequestMethod.GET) public void doDownload(HttpServletRequest request, HttpServletResponse response) throws IOException {
			ServletContext context = request.getSession().getServletContext();
			   String appPath = context.getRealPath("");
			   

			   // construct the complete absolute path of the file
			   String fullPath = appPath + "Cahier.pdf";       
			   File downloadFile = new File(fullPath);
			   FileInputStream inputStream = new FileInputStream(downloadFile);

			   // get MIME type of the file
			   String mimeType = context.getMimeType(fullPath);
			   if (mimeType == null) {
			       // set to binary type if MIME mapping not found
			       mimeType = "application/pdf";
			   }
			   System.out.println("MIME type: " + mimeType);


			   String headerKey = "Content-Disposition";

			   response.setContentType("application/pdf");

			   // get output stream of the response
			   OutputStream outStream = response.getOutputStream();

			   byte[] buffer = new byte[BUFFER_SIZE];
			   int bytesRead = -1;

			   // write bytes read from the input stream into the output stream
			   while ((bytesRead = inputStream.read(buffer)) != -1) {
			       outStream.write(buffer, 0, bytesRead);
			   }

			   inputStream.close();
			   outStream.close();
		}
		
	
	
	
	

	
	
	
	
}
