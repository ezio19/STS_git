package dz.ifa.service;

import java.util.List;

import dz.ifa.model.Engagement;
import dz.ifa.model.Tier;

public interface EngagementService {
	Tier findTierByPieceId(long idPiece);
	Engagement findEngagementByTierId(long idTier);
	List<Engagement> recupererListEngagements();

}
