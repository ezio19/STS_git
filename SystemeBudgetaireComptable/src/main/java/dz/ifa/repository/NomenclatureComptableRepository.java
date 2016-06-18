package dz.ifa.repository;

import dz.ifa.model.nomenclature.Chapitre;
import dz.ifa.model.nomenclature.CompteComptable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NomenclatureComptableRepository extends JpaRepository<CompteComptable,String> {
	CompteComptable save(CompteComptable chap);



	@Query("Select chap from CompteComptable chap ")
	List<CompteComptable> findAllNomenclaturesComptables();



	@Query("SELECT c FROM CompteComptable c WHERE LOWER(c.numCompte) = LOWER(:numero_compte)")
	public List<CompteComptable> getNomenclatureComptableByNumeroNomenclature(@Param("numero_compte") String numero_compte);

	
	
	


	
	
	
}
