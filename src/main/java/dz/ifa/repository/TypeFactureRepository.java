package dz.ifa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import dz.ifa.model.Guide;
import dz.ifa.model.TypeFacture;

@Repository("typeFactureRepository")

public interface TypeFactureRepository extends JpaRepository<TypeFacture, Long> {
	@Query("Select t from TypeFacture t")
	List<TypeFacture> findAllTypeFacture();
}
