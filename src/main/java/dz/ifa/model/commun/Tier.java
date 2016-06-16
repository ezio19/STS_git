package dz.ifa.model.commun;

import dz.ifa.model.engagement.DossierTier;

/**
 * @author user
 * @version 1.0
 * @created 07-avr.-2016 16:01:54
 */
public class Tier {

	private String acronyme;
	private int activitePrincipal;
	private String adresse;
	private String articImposition;
	private int codePostal;
	private String commune;
	private String designation;
	private String eMail;
	private String fax;
	private String NIF;
	private String NIS;
	private String RegCommerce;
	private String telephone;
	private String wilaya;
	private DossierTier m_DossierTier;
	private FormeJuridique m_FormeJuridique;
	private Nature m_Nature;
	private Statut m_Statut;
	private TypeTier m_TypeTier;

	public Tier(){

	}
	public DossierTier getDossierTier(){
		return m_DossierTier;
	}

	public FormeJuridique getFormeJuridique(){
		return m_FormeJuridique;
	}

	public Nature getNature(){
		return m_Nature;
	}

	public Statut getStatut(){
		return m_Statut;
	}

	public TypeTier getTypeTier(){
		return m_TypeTier;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setDossierTier(DossierTier newVal){
		m_DossierTier = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setFormeJuridique(FormeJuridique newVal){
		m_FormeJuridique = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setNature(Nature newVal){
		m_Nature = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setStatut(Statut newVal){
		m_Statut = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setTypeTier(TypeTier newVal){
		m_TypeTier = newVal;
	}
}//end Tier