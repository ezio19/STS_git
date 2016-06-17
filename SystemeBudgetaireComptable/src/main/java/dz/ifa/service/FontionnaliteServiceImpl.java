package dz.ifa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dz.ifa.model.Fonctionnalite;
import dz.ifa.repository.FonctionnaliteRepository;

@Service("fonctionnaliteService")
public class FontionnaliteServiceImpl implements FontionnaliteService{
	
	@Autowired
	private FonctionnaliteRepository fonctRepository;
	
	@Transactional
	public Fonctionnalite save(Fonctionnalite fonctionnalite){
		return fonctRepository.save(fonctionnalite);
	}
	@Transactional
	public List<Fonctionnalite> loadAll(){
		return fonctRepository.findAll();
	}

}
