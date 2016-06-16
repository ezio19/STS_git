package dz.ifa.service;

import java.util.List;


import dz.ifa.model.Compte;

public interface CompteService {
	
	Compte save(Compte cpt);

	List<Compte> findAllGuides();
	
	Compte findCptByName(String nom);
	
}
