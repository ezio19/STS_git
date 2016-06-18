package dz.ifa.repository;

import dz.ifa.model.nomenclature.Chapitre;
import dz.ifa.model.nomenclature.CompteComptable;
import dz.ifa.model.nomenclature.Rubrique;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RubriqueRepository extends JpaRepository<Rubrique,String> {
	Rubrique save(Rubrique chap);

/*
	@Query("Select new dz.ifa.model.nomenclature.Chapitre(chap.codeChapitre,chap.designation,chap.section,chap.rubriques) "+
			"from Chapitre chap ")
	List<Chapitre> findAllChapitres();
*/

	@Query("Select chap from Rubrique chap ")
	List<Rubrique> findAllRubriques();



	@Query("SELECT c FROM Rubrique c WHERE LOWER(c.codeRubrique) = LOWER(:codeRubrique)")
	public List<Rubrique> getRubriqueByCodeRubrique(@Param("codeRubrique") String codeRubrique);







}
