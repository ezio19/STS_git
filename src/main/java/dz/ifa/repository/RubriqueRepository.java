package dz.ifa.repository;

import dz.ifa.model.nomenclature.CompteComptable;
import dz.ifa.model.nomenclature.Rubrique;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RubriqueRepository extends JpaRepository<Rubrique,String> {
	Rubrique save(Rubrique cpt);
/*
	@Query("Select new dz.ifa.model.nomenclature.Rubrique(rub.codeRubrique,rub.designation,rub.montant,rub.chapitre) "+
			"from Rubrique rub where (1=1)")
	List<Rubrique> findAllRubriques();
*/

/*

	@Query("select rub from Rubrique rub where rub.codeRubrique=?#{[0]}")
	List<Rubrique> findRubriqueByCodeRub(String codeRubrique);
*/







}
