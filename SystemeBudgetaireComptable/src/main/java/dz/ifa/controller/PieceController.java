package dz.ifa.controller;

import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.naming.AuthenticationException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dz.ifa.model.PieceComptable;
import dz.ifa.model.Tier;
import dz.ifa.service.PieceComptableService;
import dz.ifa.service.TierService;
import dz.ifa.service.TierServiceImpl;



@Controller

public class PieceController {
	
	@Autowired
	private PieceComptableService pieceComptableService;
	@Autowired
	private TierService tierService;
	
	@RequestMapping(value ="/newpiece",method=RequestMethod.GET)
	public String getPiece(Model model){
		
		List<Tier> listTiers = tierService.getAllTiers();
		model.addAttribute("listTiers",listTiers);
		return"newpiece";
	}
	
	@RequestMapping(value = "/newpiece", method=RequestMethod.POST)
	public ModelAndView ajoutPiece(HttpServletRequest request,HttpSession session)
		    throws AuthenticationException {
		PieceComptable pieceComptable = new PieceComptable();
		String numPiece =request.getParameter("numPiece");
		String montant =request.getParameter("montantPiece");
		String objet = request.getParameter("objetPiece");
		Tier tier = tierService.findTier(Long.parseLong(request.getParameter("tier")));
		pieceComptable.setMontantGlobal(Double.parseDouble(montant));
		pieceComptable.setNumero(numPiece);
		pieceComptable.setTier(tier);
		pieceComptable.setObjet(objet);
		
		pieceComptableService.save(pieceComptable);
		List<Tier> listTiers = tierService.getAllTiers();
		
		return new ModelAndView("newpiece","listTiers",listTiers);
	}

	
}
