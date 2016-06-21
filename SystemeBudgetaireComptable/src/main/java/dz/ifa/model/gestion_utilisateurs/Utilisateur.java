package dz.ifa.model.gestion_utilisateurs;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import dz.ifa.model.commun.Structure;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Entity
@Table(name="UTILISATEUR")
public class Utilisateur {
	
	@Id
	@Column(name="ID_UTILISATEUR")
	private String id;
	
	@Column(name="PASSWD")
	private String passwd;
	
	@Column(name="ACTIF")
	private int actif;

	@Column
	private String adresse;
	@Column
	private String eMail;
	@Column
	private String hashPasswd;

	@Column
	private String nom;
	@Column
	private String prenom;
	@Column
	private String tel;
	@Column
	private String codeStructure;


	@ManyToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY)
	@JoinTable(name="AUTORITE",
    joinColumns = @JoinColumn (name="ID_UTILISATEUR", referencedColumnName="ID_UTILISATEUR"),
        inverseJoinColumns = @JoinColumn(name="designation", referencedColumnName="designation"))
	@JsonManagedReference
	private List<Fonctionnalite> foncts;


	@OneToMany(mappedBy = "utilisateur")
	@JsonBackReference
	private List<Preference> preferences;


	@ManyToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY)
	@JoinTable(name = "users_taches",
			joinColumns = @JoinColumn(name ="ID_UTILISATEUR",referencedColumnName = "ID_UTILISATEUR"),
			inverseJoinColumns = @JoinColumn(name = "idTache",referencedColumnName = "idTache"))
	private List<Tache> taches;



	@ManyToMany(cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	@JoinTable(name = "users_notifications",
			joinColumns = @JoinColumn(name ="ID_UTILISATEUR",referencedColumnName = "ID_UTILISATEUR"),
			inverseJoinColumns = @JoinColumn(name = "idNotification",referencedColumnName = "idNotification"))
	private List<Notification> notifications;


	@ManyToOne
	@JsonManagedReference
	private Structure structure;



	public void prepareList(){
		this.foncts=new ArrayList<Fonctionnalite>();
	}


	public String getCodeStructure() {
		return codeStructure;
	}

	public void setCodeStructure(String codeStructure) {
		this.codeStructure = codeStructure;
	}

	public Structure getStructure() {
		return structure;
	}

	public void setStructure(Structure structure) {
		this.structure = structure;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public int getActif() {
		return actif;
	}

	public void setActif(int actif) {
		this.actif = actif;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String geteMail() {
		return eMail;
	}

	public void seteMail(String eMail) {
		this.eMail = eMail;
	}

	public String getHashPasswd() {
		return hashPasswd;
	}

	public void setHashPasswd(String hashPasswd) {
		this.hashPasswd = hashPasswd;
	}



	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public List<Fonctionnalite> getFoncts() {
		return foncts;
	}

	public void setFoncts(List<Fonctionnalite> foncts) {
		this.foncts = foncts;
	}

	public List<Preference> getPreferences() {
		return preferences;
	}

	public void setPreferences(List<Preference> preferences) {
		this.preferences = preferences;
	}

	public List<Tache> getTaches() {
		return taches;
	}

	public void setTaches(List<Tache> taches) {
		this.taches = taches;
	}

	public List<Notification> getNotifications() {
		return notifications;
	}

	public void setNotifications(List<Notification> notifications) {
		this.notifications = notifications;
	}
}
