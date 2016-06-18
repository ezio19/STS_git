package dz.ifa.repository;

import java.util.List;

import dz.ifa.model.nomenclature.CompteComptable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import dz.ifa.model.nomenclature.CompteBudgetaire;

@Repository
public interface CompteBudgetaireRepository extends JpaRepository<CompteBudgetaire,Long> {

	CompteBudgetaire save(CompteBudgetaire chap);


	@Query("SELECT c FROM CompteBudgetaire c WHERE LOWER(c.numCompte) = LOWER(:numero_compte)")
	public List<CompteBudgetaire> getCompteBudgetaireByNumeroCompte(@Param("numero_compte") String numero_compte);
}
