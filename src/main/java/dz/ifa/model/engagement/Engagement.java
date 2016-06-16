package dz.ifa.model.engagement;
import java.util.List;

import dz.ifa.model.commun.Etat;
import dz.ifa.model.commun.JourneeComptable;
import dz.ifa.model.commun.Montant;
import dz.ifa.model.commun.Tier;

/**
 * @author user
 * @version 1.0
 * @created 07-avr.-2016 16:02:17
 */
public class Engagement {

	private JourneeComptable date;
	private Tier fournisseur;
	private String justificatif;
	private Montant montant;
	private String nomOperationGlobale;
	private long numEngagement;
	private List<EngagementElementaire> m_EngagementElementaire;
	private Etat m_Etat;

	public Engagement(){

	}
	public List<EngagementElementaire> getEngagementElementaire(){
		return m_EngagementElementaire;
	}

	public Etat getEtat(){
		return m_Etat;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setEngagementElementaire(List<EngagementElementaire> newVal){
		m_EngagementElementaire = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setEtat(Etat newVal){
		m_Etat = newVal;
	}
}//end Engagement