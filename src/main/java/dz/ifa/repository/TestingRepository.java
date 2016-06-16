package dz.ifa.repository;

import dz.ifa.model.nomenclature.Chapitre;
import dz.ifa.model.nomenclature.Testing;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TestingRepository extends JpaRepository<Testing,Integer> {
	Testing save(Testing chap);


	
	


	
	
	
}
