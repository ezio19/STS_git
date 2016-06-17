package dz.ifa.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.JoinColumn;

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
	
	@ManyToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY)
	@JoinTable(name="AUTORITE",
    joinColumns = @JoinColumn (name="ID_UTILISATEUR", referencedColumnName="ID_UTILISATEUR"),
        inverseJoinColumns = @JoinColumn(name="FONCTIONNALITE", referencedColumnName="DESIGNATION"))
	private List<Fonctionnalite> foncts;
	
	
	
	public int isActif() {
		return actif;
	}

	public void setActif(int actif) {
		this.actif = actif;
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

	public List<Fonctionnalite> getFoncts() {
		return foncts;
	}

	public void setFoncts(List<Fonctionnalite> foncts) {
		this.foncts = foncts;
	}
	
	

}
