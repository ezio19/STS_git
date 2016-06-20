package dz.ifa.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.TableGenerator;

@Entity
public class OperationBudgetaire  {

	@TableGenerator(name="operationBudgetaireGen",allocationSize=1)
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE,generator="operationBudgetaireGen")
	private Long id;
	
	@OneToOne(cascade=CascadeType.ALL)
	OperationComptable operationComptable;
	
	@OneToOne(cascade=CascadeType.ALL)
	private Engagement m_Engagement;

	public OperationBudgetaire(){

	}
	public void setDebitCreditCompt(){
    	this.operationComptable.setCreditdebit();
    }
	
	public void setId(Long id) {
		this.id = id;
	}
	public void setM_Engagement(Engagement m_Engagement) {
		this.m_Engagement = m_Engagement;
	}
	public void setOperationComptable(OperationComptable operationComptable) {
		this.operationComptable = operationComptable;
	}
	public Engagement getM_Engagement() {
		return m_Engagement;
	}
	public OperationComptable getOperationComptable() {
		return operationComptable;
	}
	public Long getId() {
		return id;
	}
	
}