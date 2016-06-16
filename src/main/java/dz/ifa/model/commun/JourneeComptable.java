package dz.ifa.model.commun;

/**
 * @author user
 * @version 1.0
 * @created 07-avr.-2016 15:58:54
 */
public class JourneeComptable {

	private byte jour;
	private EtatJournee m_EtatJournee;

	public JourneeComptable(){

	}
	public EtatJournee getEtatJournee(){
		return m_EtatJournee;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setEtatJournee(EtatJournee newVal){
		m_EtatJournee = newVal;
	}
}//end JourneeComptable