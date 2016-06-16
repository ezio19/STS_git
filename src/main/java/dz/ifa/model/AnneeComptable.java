package dz.ifa.model;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

/**
 * @author user
 * @version 1.0
 * @created 07-avr.-2016 15:58:33
 */
@Entity
public class AnneeComptable {
	@Id
	private int annee;
	private boolean cloturee;
	/**
	@OneToMany(mappedBy="anneeComptable",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<PeriodeComptable> periodesComptable;
	**/
	public AnneeComptable(){

	}
	
	//Gettes and setters

	public int getAnnee() {
		return annee;
	}

	public void setAnnee(int annee) {
		this.annee = annee;
	}

	public boolean isCloturee() {
		return cloturee;
	}

	public void setCloturee(boolean cloturee) {
		this.cloturee = cloturee;
	}


	
	
	

}