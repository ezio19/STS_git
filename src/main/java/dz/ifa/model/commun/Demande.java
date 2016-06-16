package dz.ifa.model.commun;

public abstract class Demande {

	private JourneeComptable date;
	private String justificatif;
	private Montant montant;
	private String numDemande;
	private String objet;
	private EtatDemande m_EtatDemande;

	public Demande(){

	}
	public EtatDemande getEtatDemande(){
		return m_EtatDemande;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setEtatDemande(EtatDemande newVal){
		m_EtatDemande = newVal;
	}
}//end Demande