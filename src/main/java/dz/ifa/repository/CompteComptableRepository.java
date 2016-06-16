package dz.ifa.repository;

import java.util.List;

import dz.ifa.model.nomenclature.Chapitre;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


import dz.ifa.model.GoalReport;
import dz.ifa.model.nomenclature.CompteComptable;
@Repository
public interface CompteComptableRepository extends JpaRepository<CompteComptable,Long> {
	CompteComptable save(CompteComptable cpt);

	/*@Query("Select new dz.ifa.model.nomenclature.CompteComptable(cpt.id,cpt.compteClasse,cpt.libelleCompte,cpt.section,cpt.numCompte,cpt.designationCompte,cpt.typeCompte) "+
			"from CompteComptable cpt where (1=1) ")
	List<CompteComptable> findAllComptesComptables();
*/


	@Query("Select cpt from CompteComptable cpt ")
	List<CompteComptable> findAllComptesComptables();


/*
	@Query("select cpt from ComppteComptable cpt  where cpt.designation = :#{#comptable.designation}")
	List<CompteComptable> findCompteComptableByDesignation(@Param("designation") String designation);

*/






}
