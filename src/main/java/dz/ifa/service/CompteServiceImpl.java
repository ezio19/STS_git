package dz.ifa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dz.ifa.model.Compte;
import dz.ifa.model.Guide;
import dz.ifa.repository.CompteRepository;

@Service("compteService")
public class CompteServiceImpl implements CompteService{
	@Autowired
	private CompteRepository compteRepository;
	
	@Transactional
	public Compte save(Compte compte) {
		// TODO Auto-generated method stub
		return compteRepository.save(compte);
		
	}

	public List<Compte> findAllGuides() {
		// TODO Auto-generated method stub
		return compteRepository.findAllGuides();
	}

	public Compte findCptByName(String nom) {
		// TODO Auto-generated method stub
		return compteRepository.findCptByName(nom) ;
	}
	

	


}
