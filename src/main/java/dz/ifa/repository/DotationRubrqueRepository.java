package dz.ifa.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import dz.ifa.model.DecisionDotation;
import dz.ifa.model.DotationRubrique;

public interface DotationRubrqueRepository  extends JpaRepository<DotationRubrique, Long> {

}