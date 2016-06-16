package dz.ifa.model.utilisateur;

import java.util.List;

/**
 * @author user
 * @version 1.0
 * @created 07-avr.-2016 16:02:39
 */
public class Role {

	private String designation;
	private String id_role;
	private List<Fonctionnalite> m_Fonctionnalite;

	public Role(){

	}
	public List<Fonctionnalite> getFonctionnalite(){
		return m_Fonctionnalite;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setFonctionnalite(List<Fonctionnalite> newVal){
		m_Fonctionnalite = newVal;
	}
}//end Role