package dz.ifa.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import dz.ifa.model.DecisionDotation;

public interface DotationDecisionRepository  extends JpaRepository<DecisionDotation, Long> {

}
