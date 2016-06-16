package dz.ifa.repository;

import dz.ifa.model.nomenclature.Chapitre;
import dz.ifa.model.nomenclature.CompteComptable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ChapitreRepository extends JpaRepository<Chapitre,String> {
	Chapitre save(Chapitre chap);

/*
	@Query("Select new dz.ifa.model.nomenclature.Chapitre(chap.codeChapitre,chap.designation,chap.section,chap.rubriques) "+
			"from Chapitre chap ")
	List<Chapitre> findAllChapitres();
*/

	@Query("Select chap from Chapitre chap ")
	List<Chapitre> findAllChapitres();

	
	
	


	
	
	
}
