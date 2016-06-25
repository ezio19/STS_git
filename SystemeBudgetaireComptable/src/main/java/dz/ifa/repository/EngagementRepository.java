package dz.ifa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import dz.ifa.model.Engagement;

@Repository("engagementRepository")
public interface EngagementRepository extends JpaRepository<Engagement,Long>{
	@Query("select e from Engagement e where e.tier.id = ?#{[0]}")
	Engagement findEngageentByTierId(long idTier);	
	
}
