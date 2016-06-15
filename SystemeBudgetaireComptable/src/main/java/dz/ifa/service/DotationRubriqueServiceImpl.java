package dz.ifa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dz.ifa.model.DecisionDotation;
import dz.ifa.model.DotationRubrique;
import dz.ifa.model.Goal;
import dz.ifa.repository.DotationDecisionRepository;
import dz.ifa.repository.DotationRubrqueRepository;
@Service("dotationRubriqueService")
public class DotationRubriqueServiceImpl implements DotationRubriqueService{
	@Autowired
	private DotationRubrqueRepository dotaDeRe;
	
	public Goal save(DotationRubrique desDo) {
		dotaDeRe.save(desDo);
		return null;
	}
	

	public List<DotationRubrique> loadAll() {
		return dotaDeRe.findAll();
	}
}