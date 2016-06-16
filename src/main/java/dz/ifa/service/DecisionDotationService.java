package dz.ifa.service;

import java.util.List;

import dz.ifa.model.DecisionDotation;
import dz.ifa.model.Goal;

public interface DecisionDotationService {
	Goal save(DecisionDotation desDO);
	List<DecisionDotation> loadAll();
}
