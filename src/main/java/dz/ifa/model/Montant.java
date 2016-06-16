package dz.ifa.model;



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