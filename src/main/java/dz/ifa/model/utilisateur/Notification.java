package dz.ifa.model.utilisateur;

import dz.ifa.model.commun.JourneeComptable;

/**
 * @author user
 * @version 1.0
 * @created 07-avr.-2016 16:02:37
 */
public class Notification {

	private String contenu;
	private JourneeComptable date;
	private Utilisateur destinataire;
	private Utilisateur expediteur;
	private String id;
	private String objet;
	private Utilisateur m_Utilisateur;

	public Notification(){

	}
	public Utilisateur getUtilisateur(){
		return m_Utilisateur;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setUtilisateur(Utilisateur newVal){
		m_Utilisateur = newVal;
	}
}//end Notification