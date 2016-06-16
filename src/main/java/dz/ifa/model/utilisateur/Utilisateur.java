package dz.ifa.model.utilisateur;
import java.util.List;

/**
 * @author user
 * @version 1.0
 * @created 07-avr.-2016 16:02:41
 */
public class Utilisateur {

	private String adresse;
	private String eMail;
	private String hashPasswd;
	private String idUtilisateur;
	private String nom;
	private String prenom;
	private String tel;
	private List<Fonctionnalite> m_Fonctionnalite;
	private List<Role> m_Role;
	private List<Notification> m_Notification; 
	public Utilisateur(){

	}
	public List<Fonctionnalite> getFonctionnalite(){
		return m_Fonctionnalite;
	}

	public List<Notification> getNotification(){
		return m_Notification;
	}

	public List<Role> getRole(){
		return m_Role;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setFonctionnalite(List<Fonctionnalite> newVal){
		m_Fonctionnalite = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setNotification(List<Notification> newVal){
		m_Notification = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setRole(List<Role> newVal){
		m_Role = newVal;
	}
}//end Utilisateur