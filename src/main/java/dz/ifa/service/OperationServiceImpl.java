package dz.ifa.service;



import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dz.ifa.model.OperationBudgetaire;
import dz.ifa.model.OperationComptable;
import dz.ifa.model.PieceComptable;
import dz.ifa.repository.OperationBudgetaireRepository;
import dz.ifa.repository.OperationComptableRepository;
import dz.ifa.repository.PieceComptableRepository;


@Service("operationService")
public class OperationServiceImpl implements OperationService {

	@Autowired
	PieceComptableRepository pieceComptableRepository;
	
	@Autowired 
	OperationComptableRepository operationComptableRepository;
	
	@Autowired
	OperationBudgetaireRepository operationBudgetaireRepository;
	
	public PieceComptable getPieceComptableById(long id) {
		return pieceComptableRepository.findOne(id);
	}

	public List<PieceComptable> getListPiecesByTierId(long id) {
		return pieceComptableRepository.findPiecesByTierId(id);
	}
	
	public OperationComptable save(OperationComptable operationComptable){
		return  operationComptableRepository.save(operationComptable);
	}
	
	public List<OperationBudgetaire> getListOperationsBudgetaires(Date date1, Date date2) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	public List<OperationComptable> getListOperationsComptables(Date date1, Date date2) {
		// TODO Auto-generated method stub
		return null;
	}

	public OperationBudgetaire save(OperationBudgetaire operationBudgetaire) {
		return operationBudgetaireRepository.save(operationBudgetaire);
	}
}
