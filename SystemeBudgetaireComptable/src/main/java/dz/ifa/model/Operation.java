package dz.ifa.model;

import java.util.List;

public class Operation {

	private List<OperationComptable> operationComptable;
	private List<OperationBudgetaire> operationBudgetaire;
	
	
	public Operation(List<OperationComptable>operationComptable, List<OperationBudgetaire>operationBudgetaire) {
		this.operationComptable = operationComptable;
		this.operationBudgetaire = operationBudgetaire;
	}
	public List<OperationComptable> getOperationComptable() {
		return operationComptable;
	}
	public void setOperationComptable(List<OperationComptable> operationComptable) {
		this.operationComptable = operationComptable;
	}
	public List<OperationBudgetaire> getOperationBudgetaire() {
		return operationBudgetaire;
	}
	public void setOperationBudgetaire(List<OperationBudgetaire> operationBudgetaire) {
		this.operationBudgetaire = operationBudgetaire;
	}
	
	
}
