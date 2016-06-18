package dz.ifa.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.TableGenerator;

@Entity
public class EcritureComptableElementaire {
	
	@TableGenerator(name="ecritureComptableGen",allocationSize=1)
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE,generator="ecritureComptableGen")
	private Long id;
	
	@ManyToOne
	private Compte compte;
	private boolean debiteur;
	private float montant;
	
	@ManyToOne
	private OperationComptable operationComptable;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Compte getCompte() {
		return compte;
	}
	public void setCompte(Compte compte) {
		this.compte = compte;
	}
	public boolean isDebiteur() {
		return debiteur;
	}
	public void setDebiteur(boolean debiteur) {
		this.debiteur = debiteur;
	}
	public float getMontant() {
		return montant;
	}
	public void setMontant(float montant) {
		this.montant = montant;
	}
	public OperationComptable getOperationComptable() {
		return operationComptable;
	}
	public void setOperationComptable(OperationComptable operationComptable) {
		this.operationComptable = operationComptable;
	}
	
	
}
