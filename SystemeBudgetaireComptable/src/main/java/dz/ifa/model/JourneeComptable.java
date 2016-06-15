package dz.ifa.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.validator.constraints.Range;

/**
 * @author user
 * @version 1.0
 * @created 07-avr.-2016 15:58:54
 */

@Entity
public class JourneeComptable {
	//Champs statiques 
	//Etat de la journee comptable
	public static final int CREE = 1;
	public static final int ACTIVE = 2;
	public static final int ENVOYEEDG = 3;
	public static final int CLOTUREE = 4;
	
	@Id
	@Range(min=1,max=30)
	private int jour;
	private int etatJournee;
	
	@ManyToOne
	@JoinColumn(name="mois")
	private PeriodeComptable periodeComptable;

	@ManyToOne
	@JoinColumn(name="annee")
	private AnneeComptable anneeComptable;
	
	public JourneeComptable(){

	}
	
	
	//Gettes and setters
	public int getJour() {
		return jour;
	}

	public void setJour(int jour) {
		this.jour = jour;
	}

	public int getEtatJournee() {
		return etatJournee;
	}

	public void setEtatJournee(int etatJournee) {
		this.etatJournee = etatJournee;
	}

	public PeriodeComptable getPeriodeComptable() {
		return periodeComptable;
	}

	public void setPeriodeComptable(PeriodeComptable periodeComptable) {
		this.periodeComptable = periodeComptable;
	}
	
	
	
}