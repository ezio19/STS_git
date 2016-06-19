package dz.ifa.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.TableGenerator;
@Entity
@Table(name="decisionDotationSupp")
public class decisionDotationSupp {
	@TableGenerator(name="dDe",allocationSize=1)
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="dDe")
	@Column(name="Decision_Supp_ID")
	private long id;
	@Column(name="DATE")
	private String  date;
	@Column(name="NUMERO_DECISION")
	private String numDecision;
	@Column(name="OBJET")
	private String objet;
	@Column(name="OBSERVATION")
	private String observation; 
	@OneToMany(mappedBy="deDota" , cascade=CascadeType.ALL, fetch=FetchType.LAZY)
	private List<DotationRubrique> listeRubrique=new ArrayList<DotationRubrique>();
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public List<DotationRubrique> getListeRubrique() {
		return listeRubrique;
	}
	public void setListeRubrique(List<DotationRubrique> listeRubrique) {
		this.listeRubrique = listeRubrique;
	
	}
	public String getNumDecision() {
		return numDecision;
	}
	public void setNumDecision(String numDecision) {
		this.numDecision = numDecision;
	}
	public String getObjet() {
		return objet;
	}
	public void setObjet(String objet) {
		this.objet = objet;
	}
	public String getObservation() {
		return observation;
	}
	public void setObservation(String observation) {
		this.observation = observation;
	}
	public void ajouterDansList(DotationRubrique ds)
	{
		listeRubrique.add(ds);
	}

}
