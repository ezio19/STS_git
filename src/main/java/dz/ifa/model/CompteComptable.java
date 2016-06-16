package dz.ifa.model;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class CompteComptable {
	@Id
	private String numCompte;
	private String designation;
	
	public CompteComptable(){

	}
	//Getters and setters
	public String getNumCompte() {
		return numCompte;
	}

	public void setNumCompte(String numCompte) {
		this.numCompte = numCompte;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}
	
	
}