package dz.ifa.service;

import java.util.List;

import dz.ifa.model.DecisionDotation;
import dz.ifa.model.Goal;
import dz.ifa.model.decisionDotationSupp;

public interface DecisionDotationSuppService {
	Goal save(decisionDotationSupp desDO);
	List<decisionDotationSupp> loadAll();
}
