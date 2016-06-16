package dz.ifa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import dz.ifa.model.PieceComptable;
import dz.ifa.model.Tier;

@Repository("pieceComptableRepository")
public interface PieceComptableRepository extends JpaRepository<PieceComptable,Long>{
	
	@Query("select p from PieceComptable p where p.tier.id=?#{[0]}")
	List<PieceComptable> findPiecesByTierId(long TierID);
	
}
