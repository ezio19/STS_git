package dz.ifa.service;

import java.util.List;

import dz.ifa.model.Fonctionnalite;

public interface FontionnaliteService {
	
	Fonctionnalite save(Fonctionnalite fonctionnalite);
	
	List<Fonctionnalite> loadAll();
}
