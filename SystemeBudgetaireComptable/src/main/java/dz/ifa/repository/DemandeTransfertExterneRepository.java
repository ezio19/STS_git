package dz.ifa.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import dz.ifa.model.DemandeTransfertExterne;



@Repository("demandeTransfertExterneRepository")
public interface DemandeTransfertExterneRepository extends JpaRepository<DemandeTransfertExterne, Long>{

	@Query("select d from DemandeTransfertExterne d where d.id = (:idDmdExt)")
	List<DemandeTransfertExterne> findDemandeExterneById(@Param("idDmdExt") long id);

	@Query("select d from DemandeTransfertExterne d")
	List<DemandeTransfertExterne> findAllDemandesExterne();


}
