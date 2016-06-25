package dz.ifa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dz.ifa.model.Engagement;
import dz.ifa.model.PieceComptable;
import dz.ifa.model.Tier;
import dz.ifa.repository.EngagementRepository;
import dz.ifa.repository.PieceComptableRepository;

@Service("engagementService")
public class EngagementServiceImpl implements EngagementService{
	@Autowired
	EngagementRepository engagementRepository;
	
	@Autowired
	PieceComptableRepository piecesRepository;
	
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
	
	@Override
	public List<PieceComptable> findPicesByEngaId(long engaId) {
		Engagement engagement = engagementRepository.findOne(engaId);
		long tierId = engagement.getTier().getId();
		return pieceRepository.findPiecesByTierId(tierId);
	}
	@Override
	public Engagement save(Engagement engagement) {
		// TODO Auto-generated method stub
		return engagementRepository.save(engagement);
	}
	
	@Override
	public Engagement findEngagementById(long engaId) {
		// TODO Auto-generated method stub
		return engagementRepository.findOne(engaId);
	}
}
