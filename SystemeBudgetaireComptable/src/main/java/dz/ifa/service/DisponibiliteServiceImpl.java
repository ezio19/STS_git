package dz.ifa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import dz.ifa.model.nomenclature.Rubrique;
import dz.ifa.repository.DisponibiliteRepository;




@Service("disponibiliteService")
public class DisponibiliteServiceImpl implements DisponibiliteService {
	@Autowired
	private DisponibiliteRepository disponibiliteRepository;

	public List<Rubrique> findAllDispo() {
		System.out.println("dans le service!");
		return disponibiliteRepository.findAllDispo();
	}

	public List<Rubrique> findDispoByMontant(double montant) {
		// TODO Auto-generated method stub
		 System.out.println("je suis le montant:");
		 System.out.println(montant);
		return disponibiliteRepository.findDispoByMontant(montant);
	}

	public Rubrique alterDemandeById(double idDem, double montant) {
		// TODO Auto-generated method stub
	//	return disponibiliteRepository.alterDemandeById(idDem,montant);
		return null;
	}


	
	
	

	
	



}
