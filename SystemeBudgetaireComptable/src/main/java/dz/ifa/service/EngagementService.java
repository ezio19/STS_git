package dz.ifa.service;

import java.util.List;

import dz.ifa.model.Engagement;
import dz.ifa.model.PieceComptable;
import dz.ifa.model.Tier;

public interface EngagementService {
	Tier findTierByPieceId(long idPiece);
	Engagement findEngagementByTierId(long idTier);
	Engagement findEngagementById(long engaId);
	List<Engagement> recupererListEngagements();
	List<PieceComptable> findPicesByEngaId(long engaId);
	public Engagement save(Engagement ebgagement);
	

}
