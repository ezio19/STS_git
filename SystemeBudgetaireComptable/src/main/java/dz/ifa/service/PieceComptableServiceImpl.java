package dz.ifa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dz.ifa.model.PieceComptable;
import dz.ifa.repository.PieceComptableRepository;

@Service("pieceComptableService")
public class PieceComptableServiceImpl implements PieceComptableService{
	@Autowired 
	PieceComptableRepository pieceComptableRepository;
	
	public PieceComptable findPieceById(long id) {
		return pieceComptableRepository.findOne(id);
	}

	public List<PieceComptable> findPiecesByTierId(long tierId) {
		// TODO Auto-generated method stub
		return pieceComptableRepository.findPiecesByTierId(tierId);
	}


	public PieceComptable save(PieceComptable pieceComptable) {
		// TODO Auto-generated method stub
		return pieceComptableRepository.save(pieceComptable);
	}
}
