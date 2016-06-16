package dz.ifa.service;

import java.util.List;

import dz.ifa.model.PieceComptable;

public interface PieceComptableService {
	PieceComptable findPieceById(Long id);
	List<PieceComptable> findPiecesByTierId(long tierId);
}
