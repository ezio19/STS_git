package dz.ifa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import dz.ifa.model.nomenclature.CompteBudgetaire;
import dz.ifa.model.nomenclature.Section;
import dz.ifa.model.nomenclature.classe_comptable;

// safa salima 
@Repository
public interface CompteBudgetaireRepository extends JpaRepository<CompteBudgetaire,Long> {
	
	
	
	/**___________________________ safa salima _____________________________ **/
	
	@Query("Select cptB from CompteBudgetaire cptB ")
	List<CompteBudgetaire> findAllComptesBudgetaires();
}
