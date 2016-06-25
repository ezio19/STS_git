package dz.ifa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dz.ifa.model.Tier;
import dz.ifa.repository.TierRepository;

@Service("tierService")
public class TierServiceImpl implements TierService{
	@Autowired 
	TierRepository tierRepository;
	
	public List<Tier> getAllTiers() {
		// TODO Auto-generated method stub
		return tierRepository.findAll();
	}
	
	public Tier findTier(Long id){
		return tierRepository.findOne(id);
	}
	
	@Transactional
	public Tier save(Tier ficheFournisseur) {
		return tierRepository.save(ficheFournisseur);
	}

	
	public List<Tier> loadAll() {
		// TODO Auto-generated method stub
		return tierRepository.findAll();
	}
	

	/////////////authers/////////////////

	public List<Tier> findAll() {
		// TODO Auto-generated method stub
		return null;
	}


	public List<Tier> findFournisseurByacronyme(Long acronyme) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public List<Tier> getAllFournisseurss() {
		// TODO Auto-generated method stub
		return tierRepository.findAll();
	}


	
}
