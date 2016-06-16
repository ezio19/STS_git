package dz.ifa.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.TableGenerator;


import dz.ifa.model.LigneGuide;






@Entity
@Table(name="guide")
public class Guide {
	
	@TableGenerator(name="guideGen", allocationSize=1)
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="guideGen") 
	@Column(name="GUIDE_ID")
	private Long id;
	
	
	private String nom_guide;
	
	private String type_facture;
	private String descriptionguide;
	private Date date;
	
	
	

	
	@OneToMany(mappedBy="guide", cascade=CascadeType.ALL, fetch=FetchType.LAZY)
	private List<LigneGuide> listcpt= new ArrayList <LigneGuide>();	



	 
	
		public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
		public String getDescriptionguide() {
		return descriptionguide;
	}
	public void setDescriptionguide(String descriptionguide) {
		this.descriptionguide = descriptionguide;
	}
		public List<LigneGuide> getListcpt() {
		return listcpt;
	}
	public void setListcpt(List<LigneGuide> listcpt) {
		this.listcpt = listcpt;
	}
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getType_facture() {
		return type_facture;
	}
	public void setType_facture(String type_facture) {
		this.type_facture = type_facture;
	}
	public String getNom_guide() {
		return nom_guide;
	}
	public void setNom_guide(String nom_guide) {
		this.nom_guide = nom_guide;
	}

	
	
	
	

	
	

}
