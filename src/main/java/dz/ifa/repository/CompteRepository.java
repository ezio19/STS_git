package dz.ifa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import dz.ifa.model.Compte;
import dz.ifa.model.Goal;
import dz.ifa.model.Guide;

@Repository("compteRepository")

public interface CompteRepository extends JpaRepository<Compte, Long>  {
	@Query("Select c from Compte c")
	List<Compte> findAllGuides();
	
	@Query("select c from Compte c where c.numcpt = ?#{[0]}")
	Compte findCptByName(String nom);
	
	

}
