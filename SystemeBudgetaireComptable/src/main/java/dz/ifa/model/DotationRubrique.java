package dz.ifa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.TableGenerator;
@Entity
@Table(name="DotationRubrique")
public class DotationRubrique {
	@TableGenerator(name="DRub",allocationSize=1)
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="DRub")
	@Column(name="Do_Rub_ID")
	private long id;
	@Column(name="NUMERO_DECISION")
	private String numDecision;
	@Column(name="SECTION")
	private String section;
	@Column(name="CHAPITRE")
	private String chapitre;
	@Column(name="RUBRIQUE")
	private String rubrique;
	@Column(name="MONTANT")
	private String montant;
	@Column(name="CODE_MONNAIS")
	private String codeMonnais;
	@ManyToOne
	DecisionDotation deDota;
	public DotationRubrique(){
		
	}
	public DotationRubrique(long id, String numDecision, String section, String chapitre, String rubrique,
			String montant, String codeMonnais) {
		super();
		this.id = id;
		this.numDecision = numDecision;
		this.section = section;
		this.chapitre = chapitre;
		this.rubrique = rubrique;
		this.montant = montant;
		this.codeMonnais = codeMonnais;
	}
	public boolean eq(DotationRubrique d) {
		if (chapitre==d.getChapitre()){
			return true;
		}
		else return false;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getNumDecision() {
		return numDecision;
	}
	public void setNumDecision(String numDecision) {
		this.numDecision = numDecision;
	}
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	public String getChapitre() {
		return chapitre;
	}
	public void setChapitre(String chapitre) {
		this.chapitre = chapitre;
	}
	public String getRubrique() {
		return rubrique;
	}
	public void setRubrique(String rubrique) {
		this.rubrique = rubrique;
	}
	public String getMontant() {
		return montant;
	}
	public void setMontant(String montant) {
		this.montant = montant;
	}
	public String getCodeMonnais() {
		return codeMonnais;
	}
	public void setCodeMonnais(String codeMonnais) {
		this.codeMonnais = codeMonnais;
	}
	
}
