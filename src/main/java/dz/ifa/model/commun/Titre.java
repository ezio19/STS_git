package dz.ifa.model.commun;

import dz.ifa.model.nomenclature.Section;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.TableGenerator;
import javax.validation.constraints.NotNull;


public class Titre {

	
	
	@TableGenerator(name="titreGen", allocationSize=1)
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="titreGen")
	private String codeTitre;
	
	@Column
	private String designation;
	
	
	private List<Section> m_Section;

	public Titre(){

	}
	public List<Section> getSection(){
		return m_Section;
	}

	
	public void setSection(List<Section> newVal){
		m_Section = newVal;
	}
}//end Titre