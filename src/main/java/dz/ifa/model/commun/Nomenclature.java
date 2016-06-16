package dz.ifa.model.commun;

import dz.ifa.model.commun.Structure;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.TableGenerator;
import javax.validation.constraints.NotNull;



public abstract class Nomenclature {

	@TableGenerator(name="nomenclatureGen", allocationSize=1)
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="nomenclatureGen")
	private String codeNomenclature;
	@Column
	private String designation;
	private Structure m_Structure;
	
	
	

	
	public Nomenclature(){

	}
	public Structure getStructure(){
		return m_Structure;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setStructure(Structure newVal){
		m_Structure = newVal;
	}
}//end Nomenclature