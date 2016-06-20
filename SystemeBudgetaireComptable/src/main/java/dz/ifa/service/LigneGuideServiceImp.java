package dz.ifa.service;

import java.util.List;

import org.springframework.stereotype.Service;

import dz.ifa.model.LigneGuide;
import dz.ifa.repository.LigneGuideRepository;

@Service("ligneGuideService")

public class LigneGuideServiceImp implements LigneGuideService{

	private LigneGuideRepository ligneRepository;

	
	public void supprimerLignesGuide(long id) {
		ligneRepository.supprimerLignesGuide(id);

	}
	

	public void deleteLigneById(Long id)
	{
		ligneRepository.delete(id);
		//ligneRepository.delete(ligne);
	}
   

}
