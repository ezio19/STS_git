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
	
	@OneToOne(cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private PieceComptable pieceComptable;
	
	@OneToMany(mappedBy="operationComptable",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<EcritureComptableElementaire> ecrituresElementaire = new ArrayList<EcritureComptableElementaire>();
	
	
	public OperationComptable(){

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
	
	

}