package dz.ifa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dz.ifa.model.DecisionDotation;
import dz.ifa.model.Goal;
import dz.ifa.model.decisionDotationSupp;
import dz.ifa.repository.DotationDecisionRepository;
import dz.ifa.repository.DotationDecisionSuppRepository;
@Service("DecisionDotationSuppImpService")
public class DecisionDotationSuppImpService implements DecisionDotationSuppService{
	@Autowired
	private DotationDecisionSuppRepository dotaDeRe;
	
	
	@Transactional
	public Goal save(decisionDotationSupp desDO) {
		dotaDeRe.save(desDO);
		return null;
	}

	public List<decisionDotationSupp> loadAll() {
		return dotaDeRe.findAll();
	}

}