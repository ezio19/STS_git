package dz.ifa.model.commun;

import java.util.List;

import dz.ifa.model.utilisateur.Utilisateur;

/**
 * @author user
 * @version 1.0
 * @created 07-avr.-2016 16:02:58
 */
public class Structure {

	private String adresse;
	private String codeStructure;
	private String nom;
	private List<Nomenclature> m_Nomenclature;
	private List<Utilisateur> m_Utilisateur;

	public Structure(){

	}
	public List<Nomenclature> getNomenclature(){
		return m_Nomenclature;
	}

	public List<Utilisateur> getUtilisateur(){
		return m_Utilisateur;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setNomenclature(List<Nomenclature> newVal){
		m_Nomenclature = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setUtilisateur(List<Utilisateur> newVal){
		m_Utilisateur = newVal;
	}
}//end Structure