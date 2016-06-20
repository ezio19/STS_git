package dz.ifa.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import dz.ifa.model.DemandeTransfertExterne;
import dz.ifa.repository.DemandeTransfertExterneRepository;





@Service("demandeTransfertExterneService")
public class DemandeTransfertExterneServiceImpl implements DemandeTransfertExterneService {

	@Qualifier("demandeTransfertExterneRepository")
	@Autowired
	private DemandeTransfertExterneRepository demandeTransfertExterneRepository;
	
	@Transactional
	public DemandeTransfertExterne save(DemandeTransfertExterne demandetransfertExterne) {
		// TODO Auto-generated method stub
		return demandeTransfertExterneRepository.save(demandetransfertExterne);
	}

	public List<DemandeTransfertExterne> findDemandeExterneById(long id) {
		 System.out.println("je suis le id:");
		 System.out.println(id);
		return demandeTransfertExterneRepository.findDemandeExterneById(id);
	}
	
	public List<DemandeTransfertExterne> findAllDemandesExterne(){
		return demandeTransfertExterneRepository.findAllDemandesExterne();
	}



	
	}


	
