package dz.ifa.service;

import java.util.List;

import dz.ifa.model.Tier;

public interface TierService {
	List<Tier> getAllTiers();
	Tier findTier(Long id);
	Tier save(Tier ficheFournisseur);
	List<Tier> loadAll();
	
	List<Tier> findAll();
	List<Tier> findFournisseurByacronyme(Long acronyme);
	List<Tier> getAllFournisseurss();
}
