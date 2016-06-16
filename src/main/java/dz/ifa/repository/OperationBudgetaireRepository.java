package dz.ifa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import dz.ifa.model.OperationBudgetaire;

@Repository("operationBudgetaireRepository")
public interface OperationBudgetaireRepository extends JpaRepository<OperationBudgetaire,Long>{
	//TODO les opérations entre 2 dates
	
}
