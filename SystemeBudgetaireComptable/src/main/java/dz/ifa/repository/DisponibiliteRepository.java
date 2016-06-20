package dz.ifa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import dz.ifa.model.DemandeTransfert;
import dz.ifa.model.Goal;
import dz.ifa.model.nomenclature.Rubrique;



@Repository("disponibiliteRepository")
public interface DisponibiliteRepository extends JpaRepository<Rubrique, Long>{

	@Query("select r from Rubrique r")
	List<Rubrique> findAllDispo();
	
	
	
	@Query("select r from Rubrique r where r.montant >= ?#{[0]}")
	List<Rubrique> findDispoByMontant(double montant);


	//@Query("update r from Rubrique r")
//	Rubrique alterDemandeById(double idDem, double montant);





}

