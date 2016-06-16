package dz.ifa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.TableGenerator;

@Entity
@Table(name="compte")
public class Compte {
@TableGenerator(name="compteGen", allocationSize=1)
	
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="compteGen")
	@Column(name="COMPTE_ID")
	private Long id;

	private String numcpt;
	private String Designation;
	public String getNumcpt() {
		return numcpt;
	}
	
	
	
	
	
	public Compte() {
		super();
	}





	public Compte(String numcpt, String designation) {
		super();
		this.numcpt = numcpt;
		Designation = designation;
	}





	public void setNumcpt(String numcpt) {
		this.numcpt = numcpt;
	}
	public String getDesignation() {
		return Designation;
	}
	public void setDesignation(String designation) {
		Designation = designation;
	}
	
	
}
