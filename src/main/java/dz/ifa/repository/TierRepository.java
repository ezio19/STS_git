package dz.ifa.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import dz.ifa.model.Tier;

public interface TierRepository extends JpaRepository<Tier,Long>{
	
}
