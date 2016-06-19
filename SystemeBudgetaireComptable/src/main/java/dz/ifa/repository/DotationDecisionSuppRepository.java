package dz.ifa.repository;
import org.springframework.data.jpa.repository.JpaRepository;

import dz.ifa.model.DecisionDotation;
import dz.ifa.model.decisionDotationSupp;

public interface DotationDecisionSuppRepository extends JpaRepository<decisionDotationSupp, Long> {

}
