package dz.ifa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dz.ifa.model.Engagement;
import dz.ifa.model.Tier;
import dz.ifa.repository.EngagementRepository;
import dz.ifa.repository.PieceComptableRepository;

@Service("engagementService")
public class EngagementServiceImpl implements EngagementService{
	@Autowired
	EngagementRepository engagementRepository;
	
	@Autowired
	PieceComptableRepository pieceRepository;
	
	public Tier findTierByPieceId(long idPiece) {
		return  pieceRepository.findOne(idPiece).getTier();
	} 
	
	public Engagement findEngagementByTierId(long idTier) {
		return engagementRepository.findEngageentByTierId(idTier);	
	}
	
	public List<Engagement> recupererListEngagements() {
		return engagementRepository.findAll();
	}
}
