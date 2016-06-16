package dz.ifa.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Rubrique {

	@Id
	private String codeRubrique;
	private String designation;

	public Rubrique(){

	}

	public String getCodeRubrique() {
		return codeRubrique;
	}

	public void setCodeRubrique(String codeRubrique) {
		this.codeRubrique = codeRubrique;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	
}