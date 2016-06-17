package dz.ifa.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="FONCTIONNALITE")
public class Fonctionnalite {
	
	@Id
	@Column(name="DESIGNATION")
	private String designation;
	
	@ManyToMany(mappedBy="foncts")
	private List<Utilisateur> utilisateurs;
	
	public Fonctionnalite() {
	}
	
	
	public List<Utilisateur> getUtilisateurs() {
		return utilisateurs;
	}


	public void setUtilisateurs(List<Utilisateur> utilisateurs) {
		this.utilisateurs = utilisateurs;
	}


	public Fonctionnalite(String designation) {
		this.designation = designation;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}
	

}
