package dz.ifa.service;

import java.util.List;

import dz.ifa.model.DecisionDotation;
import dz.ifa.model.DotationRubrique;
import dz.ifa.model.Goal;

public interface DotationRubriqueService {
	Goal save(DotationRubrique desDO);
	List<DotationRubrique> loadAll();
}
