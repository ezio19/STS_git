package dz.ifa.model.commun;

import java.util.List;
/**
 * @author user
 * @version 1.0
 * @created 07-avr.-2016 15:58:58
 */
public class PeriodeComptable {

	private boolean cloture;
	private byte mois;
	private List<JourneeComptable> m_JourneeComptable;

	public PeriodeComptable(){

	}
	public List<JourneeComptable> getJourneeComptable(){
		return m_JourneeComptable;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setJourneeComptable(List<JourneeComptable> newVal){
		m_JourneeComptable = newVal;
	}
}//end PeriodeComptable