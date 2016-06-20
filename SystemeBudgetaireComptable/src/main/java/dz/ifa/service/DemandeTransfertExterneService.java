package dz.ifa.service;

import java.util.List;
import dz.ifa.model.DemandeTransfertExterne;


public interface DemandeTransfertExterneService {
	
	//List<Activity> findAllActivities();
	
		DemandeTransfertExterne save(DemandeTransfertExterne demandeTransfertExterne);
        List<DemandeTransfertExterne> findAllDemandesExterne();
		List<DemandeTransfertExterne> findDemandeExterneById(long num);

		


}