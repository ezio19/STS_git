package dz.ifa.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import dz.ifa.model.OperationComptable;

@Repository("operationComptableRepository")
public interface OperationComptableRepository extends JpaRepository<OperationComptable, Long>{
	 
	/**@Query("select o from OperationComptable o where o.dateOperation>=?#{[0 ]} and o.dateOperation<=?#{[1]}")
	List<OperationComptable> getListOperationsComptables(Date date1,Date date2);**/
	
}
