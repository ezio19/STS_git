package dz.ifa.model.engagement;

import dz.ifa.model.commun.*;
import dz.ifa.model.nomenclature.Rubrique;

/**
 * @author user
 * @version 1.0dz.
 * @created 07-avr.-2016 16:02:22
 */
public class EngagementElementaire {

	private Montant montantEngage;
	private long numero;
	private Rubrique m_Rubrique;
	private Etat m_Etat;

	public EngagementElementaire(){

	}
	public Etat getEtat(){
		return m_Etat;
	}

	public Rubrique getRubrique(){
		return m_Rubrique;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setEtat(Etat newVal){
		m_Etat = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setRubrique(Rubrique newVal){
		m_Rubrique = newVal;
	}
}//end EngagementElementaire