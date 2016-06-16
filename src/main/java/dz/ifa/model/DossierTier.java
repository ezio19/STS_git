package dz.ifa.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.TableGenerator;

import org.hibernate.annotations.GeneratorType;

@Entity
public class DossierTier {
	@TableGenerator(name="dossierFournisseurGen",allocationSize=1)
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE,generator="dossierFournisseurGen")
	private String codeDossier;
	private String designation;
	
	public DossierTier(){

	}
}