package dz.ifa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import dz.ifa.model.DemandeTransfert;
import dz.ifa.model.Goal;
import dz.ifa.model.Intermediaire;



@Repository("demandeTransfertRepository")
public interface DemandeTransfertRepository extends JpaRepository<DemandeTransfert, Long>{

	@Query("select d from DemandeTransfert d where d.id = ?#{[0]}")
	List<DemandeTransfert> findDemandeById(long id);

	@Query("select d from DemandeTransfert d")
	List<DemandeTransfert> findAllDemandes();





}
