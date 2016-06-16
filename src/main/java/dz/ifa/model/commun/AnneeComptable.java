package dz.ifa.model.commun;

import java.util.List;

/**
 * @author user
 * @version 1.0
 * @created 07-avr.-2016 15:58:33
 */
public class AnneeComptable {

	private int annee;
	private boolean cloturee;
	private List<PeriodeComptable> m_PeriodeComptable;

	public AnneeComptable(){

	}
	public List<PeriodeComptable> getPeriodeComptable(){
		return m_PeriodeComptable;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setPeriodeComptable(List<PeriodeComptable> newVal){
		m_PeriodeComptable = newVal;
	}
}//end AnneeComptable