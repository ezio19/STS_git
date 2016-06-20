package dz.ifa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;



import dz.ifa.model.DemandeTransfert;
import dz.ifa.model.Intermediaire;
import dz.ifa.repository.DemandeTransfertRepository;
import dz.ifa.repository.GoalRepository;




@Service("demandeTransfertService")
public class DemandeTransfertServiceImpl implements DemandeTransfertService {
	@Autowired
	private DemandeTransfertRepository demandeTransfertRepository;
	
	@Transactional
	public DemandeTransfert save(DemandeTransfert demandetransfert) {
		// TODO Auto-generated method stub
		return demandeTransfertRepository.save(demandetransfert);
	}

	public List<DemandeTransfert> findDemandeById(long id) {
		return demandeTransfertRepository.findDemandeById(id);
	}
	public List<DemandeTransfert> findAllDemandes(){
		return demandeTransfertRepository.findAllDemandes();
	}





	

	
	



}
