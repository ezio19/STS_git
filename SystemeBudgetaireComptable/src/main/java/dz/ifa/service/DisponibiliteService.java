package dz.ifa.service;

import java.util.List;


import dz.ifa.model.Activity;
import dz.ifa.model.DemandeTransfert;
import dz.ifa.model.Exercise;
import dz.ifa.model.nomenclature.Rubrique;


public interface DisponibiliteService {
	
	List<Rubrique> findAllDispo();
	List<Rubrique> findDispoByMontant(double montant);
	Rubrique alterDemandeById(double idDem, double montant);

	


}