package dz.ifa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dz.ifa.model.DecisionDotation;
import dz.ifa.model.Goal;
import dz.ifa.repository.DotationDecisionRepository;
@Service("decisionDotationService")
public class DecisionDotationServiceImpl implements DecisionDotationService{
	@Autowired
	private DotationDecisionRepository dotaDeRe;
	
	
	@Transactional
	public Goal save(DecisionDotation desDO) {
		dotaDeRe.save(desDO);
		return null;
	}

	public List<DecisionDotation> loadAll() {
		
		
		return dotaDeRe.findAll();
	}

}
