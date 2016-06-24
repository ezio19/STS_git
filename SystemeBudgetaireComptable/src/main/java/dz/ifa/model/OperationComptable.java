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
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.TableGenerator;

@Entity
public class OperationComptable {

	@TableGenerator(name="operationComptableGen",allocationSize=1)
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE,generator="operationComptableGen")
	private Long id;
	
	private Date dateOperation;
	private String numOperation;
	// new code juba
	private float debit=0;
	private float credit=0;
		
	///---------------------
	
	@OneToOne(cascade={CascadeType.PERSIST,CascadeType.DETACH},fetch=FetchType.LAZY)
	private PieceComptable pieceComptable;
	
	@OneToMany(mappedBy="operationComptable",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<EcritureComptableElementaire> ecrituresElementaire = new ArrayList<EcritureComptableElementaire>();
	
	boolean valide=false;
	
	public OperationComptable(){

	}
	public void setCreditdebit(){
		this.debit=0;
		this.credit=0;
		for (EcritureComptableElementaire ecritureComptableElementaire : ecrituresElementaire) {
			if (ecritureComptableElementaire.isDebiteur()){
				this.debit+=ecritureComptableElementaire.getMontant();
				System.out.println(this.debit+"---------------->debit");
			}else
				this.credit+=ecritureComptableElementaire.getMontant();
				System.out.println(this.credit+"---------------->credit");
			}
		}
	

	public Date getJourneeComptable() {
		return dateOperation;
	}



	public void setDate(Date date) {
		this.dateOperation = date;
	}



	public String getNumOperation() {
		return numOperation;
	}

	public void setNumOperation(String numOperation) {
		this.numOperation = numOperation;
	}

	public PieceComptable getPieceComptable() {
		return pieceComptable;
	}

	public void setPieceComptable(PieceComptable pieceComptable) {
		this.pieceComptable = pieceComptable;
	}



	public List<EcritureComptableElementaire> getEcrituresElementaire() {
		return ecrituresElementaire;
	}



	public void setEcrituresElementaire(List<EcritureComptableElementaire> ecrituresElementaire) {
		this.ecrituresElementaire = ecrituresElementaire;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Date getDateOperation() {
		return dateOperation;
	}
	public void setDateOperation(Date dateOperation) {
		this.dateOperation = dateOperation;
	}
	public float getDebit() {
		return debit;
	}
	public void setDebit(float debit) {
		this.debit = debit;
	}
	public float getCredit() {
		return credit;
	}
	public void setCredit(float credit) {
		this.credit = credit;
	}
	
	public void setValide(boolean valide) {
		this.valide = valide;
	}
	
	public boolean isValide() {
		return valide;
	}
	

}