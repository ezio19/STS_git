package dz.ifa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import dz.ifa.model.PieceComptable;
import dz.ifa.service.CompteService;
import dz.ifa.service.PieceComptableService;

@RestController
public class OpBudgWebServiceController {
	@Autowired
	private PieceComptableService pieceComptableService;
	
	@Autowired
	private CompteService compteService;
	
	@RequestMapping(value = "/findPieces", method = RequestMethod.GET)
	public List<PieceComptable> findPieceByTierId(@RequestParam(name="tierId") long tierId) {
		return  pieceComptableService.findPiecesByTierId(tierId);
	}
	
	@RequestMapping(value = "/compteExists", method = RequestMethod.GET)
	public boolean compteExistsByNum(@RequestParam(name="num") String num) {
		if(compteService.findCptByName(num)!=null) return true;
		else return false;
	}

}
