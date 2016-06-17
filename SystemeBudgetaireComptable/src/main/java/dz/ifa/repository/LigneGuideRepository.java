package dz.ifa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import dz.ifa.model.Guide;
import dz.ifa.model.LigneGuide;

@Repository("ligneGuideRepository")

public interface LigneGuideRepository extends JpaRepository<LigneGuide, Long>  {
	
	@Query("Select l from LigneGuide l")
	List<LigneGuide> findAllLignesGuides();
	
	@Query("delete From LigneGuide where guide_GUIDE_ID=?#{[0]}")
	void supprimerLignesGuide(long id);
	
	
	
  
}
