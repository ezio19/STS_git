package dz.ifa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import dz.ifa.model.FicheFournisseur;
import dz.ifa.model.Goal;
import dz.ifa.repository.FournisseurRepository;
@Service("FournisseurService")
public class FournisseurServicelmpl implements FournisseurService{

	
	
	@Autowired
	private FournisseurRepository fourn;
	
	@Transactional
	public FicheFournisseur save(FicheFournisseur ficheFournisseur) {
		return fourn.save(ficheFournisseur);
	}

	
	public List<FicheFournisseur> loadAll() {
		// TODO Auto-generated method stub
		return fourn.findAll();
	}
	

	/////////////authers/////////////////

	public List<FicheFournisseur> findAll() {
		// TODO Auto-generated method stub
		return null;
	}


	public List<FicheFournisseur> findFournisseurByacronyme(Long acronyme) {
		// TODO Auto-generated method stub
		return null;
	}

}
