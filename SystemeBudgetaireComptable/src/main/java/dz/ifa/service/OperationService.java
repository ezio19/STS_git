package dz.ifa.service;



import java.util.Date;
import java.util.List;

import dz.ifa.model.OperationBudgetaire;
import dz.ifa.model.OperationComptable;
import dz.ifa.model.PieceComptable;

public interface OperationService {
	//Opération qui concerne les pieces comptable
	public PieceComptable getPieceComptableById(long id);
	public List<PieceComptable> getListPiecesByTierId(long id);
	
	//Les opérations qui concernent les opérations comptables
	public OperationComptable save(OperationComptable operationComptable);
	public List<OperationComptable> getListOperationsComptables(Date date1,Date date2);
	public List<OperationComptable> getAllOperationsComptables();
	public OperationComptable getOperationComptableByNum(String numOperation);
	public List<OperationComptable> getListOperationsBrouillard();
	public void deleteOperationComptById(long id);
	
	
	//Opération qui concerne les opérations budgétaires
	public OperationBudgetaire save(OperationBudgetaire operationBudgetaire);
	public List<OperationBudgetaire> getListOperationsBudgetaires(Date date1,Date date2);
	public List<OperationBudgetaire> getAllOperationsBudgetaires();
	public OperationBudgetaire getOperationBudgetaireByNum(String numOperation);
	
}
