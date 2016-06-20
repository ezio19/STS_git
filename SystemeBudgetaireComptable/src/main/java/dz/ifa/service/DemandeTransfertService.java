package dz.ifa.service;

import java.util.List;


import dz.ifa.model.Activity;
import dz.ifa.model.DemandeTransfert;
import dz.ifa.model.Exercise;
import dz.ifa.model.Intermediaire;



public interface DemandeTransfertService {
	
	//List<Activity> findAllActivities();
	
		DemandeTransfert save(DemandeTransfert demandetransfert);
		
		List<DemandeTransfert> findAllDemandes();
		List<DemandeTransfert> findDemandeById(long num);


	
		


}