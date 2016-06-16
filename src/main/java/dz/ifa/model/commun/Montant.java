package dz.ifa.model.commun;

/**
 * @author user
 * @version 1.0
 * @created 07-avr.-2016 16:02:56
 */
public class Montant {

	private String idMontant;
	private double valeur;
	private Monnaie m_Monnaie;

	public Montant(){

	}
	public Monnaie getMonnaie(){
		return m_Monnaie;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setMonnaie(Monnaie newVal){
		m_Monnaie = newVal;
	}
}//end Montant