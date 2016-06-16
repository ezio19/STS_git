package dz.ifa.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.validator.constraints.Range;

@Entity
public class PeriodeComptable {

	@Id
	@Range(min=1,max=12)
	private int mois;
	
	private boolean cloturee;
	/**
	@OneToMany(mappedBy="periodeComptable",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<JourneeComptable>journeesComptable;
	**/
	@ManyToOne
	@JoinColumn(name="annee")
	private AnneeComptable anneeComptable;

	public PeriodeComptable(){

	}
	
	
	//Gettes and setters

	public int getMois() {
		return mois;
	}

	public void setMois(int mois) {
		this.mois = mois;
	}

	public boolean isCloturee() {
		return cloturee;
	}

	public void setCloturee(boolean cloturee) {
		this.cloturee = cloturee;
	}


	public AnneeComptable getAnneeComptable() {
		return anneeComptable;
	}

	public void setAnneeComptable(AnneeComptable anneeComptable) {
		this.anneeComptable = anneeComptable;
	}
	
	
}