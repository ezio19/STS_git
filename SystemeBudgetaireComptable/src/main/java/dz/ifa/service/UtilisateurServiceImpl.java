package dz.ifa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dz.ifa.model.Utilisateur;
import dz.ifa.repository.UtilisateurRepository;

@Service("utilisateurService")
public class UtilisateurServiceImpl implements UtilisateurService {
	
	@Autowired
	private UtilisateurRepository userRepo;
	
	@Override
	public Utilisateur save(Utilisateur user) {
		return userRepo.save(user);
	}

	@Override
	public List<Utilisateur> loadAll() {
		return userRepo.findAll();
	}

}
