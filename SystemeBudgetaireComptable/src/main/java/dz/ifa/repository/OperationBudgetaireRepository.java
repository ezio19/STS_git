package dz.ifa.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import dz.ifa.model.OperationBudgetaire;

@Repository("operationBudgetaireRepository")
public interface OperationBudgetaireRepository extends JpaRepository<OperationBudgetaire,Long>{
	//TODO les opérations entre 2 dates
	
	@Query("select opBdg from OperationBudgetaire opBdg where opBdg.operationComptable.dateOperation between :#{#dateDeb} and :#{#dateFin}")
	List<OperationBudgetaire> findOpBugetaire(@Param("dateDeb") Date dateDeb,@Param("dateFin") Date dateFin);
}
