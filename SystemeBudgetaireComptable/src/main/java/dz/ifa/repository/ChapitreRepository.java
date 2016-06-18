package dz.ifa.repository;

import dz.ifa.model.nomenclature.Chapitre;
import dz.ifa.model.nomenclature.CompteComptable;
import dz.ifa.model.nomenclature.Section;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
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



	@Query("SELECT c FROM Chapitre c WHERE LOWER(c.codeChapitre) = LOWER(:code_chapitre)")
	public List<Chapitre> getChapitreByCodeChapitre(@Param("code_chapitre") String code_chapitre);

	
	
	


	
	
	
}
