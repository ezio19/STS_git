package dz.ifa.service;

import java.util.List;

import dz.ifa.model.Utilisateur;

public interface UtilisateurService {
	
	Utilisateur save(Utilisateur fonctionnalite);
	
	List<Utilisateur> loadAll();
}
