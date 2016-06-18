package dz.ifa.service;

import java.util.List;

import org.springframework.data.repository.query.Param;

import dz.ifa.model.FicheFournisseur;
import dz.ifa.model.Goal;
import dz.ifa.model.GoalReport;

public interface FournisseurService {
	FicheFournisseur save(FicheFournisseur ficheFournisseur);
	List<FicheFournisseur> loadAll();
	
	List<FicheFournisseur> findAll();
	List<FicheFournisseur> findFournisseurByacronyme(Long acronyme);

	
}
