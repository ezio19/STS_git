package dz.ifa.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.TableGenerator;

import org.springframework.beans.factory.annotation.Autowired;

import dz.ifa.model.nomenclature.Rubrique;

@Entity
public class EngagementElementaire {
	@TableGenerator(name="engagementElemGen",allocationSize=1)
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator="engagementElemGen")
	private long id;
	@ManyToOne
	private Rubrique rubrique;
	private float Montant;
	public EngagementElementaire(){

	}

	public Rubrique getM_Rubrique() {
		return rubrique;
	}

	public void setM_Rubrique(Rubrique m_Rubrique) {
		this.rubrique = m_Rubrique;
	}

	public float getMontant() {
		return Montant;
	}

	public void setMontant(float montant) {
		Montant = montant;
	}
	
	
}