package dz.ifa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import dz.ifa.model.DecisionDotation;
import dz.ifa.model.DotationRubrique;
import dz.ifa.model.Goal;

public interface DotationRubrqueRepository  extends JpaRepository<DotationRubrique, Long> {

	/*@Query("select r from dotationrubrique r where r.numero_decision = ?#{[0]}")
	List<DotationRubrique> findDotationRubriqueByNumero(String decision);*/
}