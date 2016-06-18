package dz.ifa.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.TableGenerator;

import org.hibernate.validator.constraints.Range;
@Entity
@Table(name="ficheFournisseur")

public class FicheFournisseur<E> {
	
@TableGenerator(name="fournisseurGen", allocationSize=1)
	

	@GeneratedValue(strategy=GenerationType.TABLE, generator="fournisseurGen")
    @Id
    @Column(name="FICHETRANSFERT_ID")
	private Long id;
    
	@Column(name="acronyme")
	private Long acronyme;

	@Column(name="type")
	private String type;
	
	@Column(name="forme_juridique")
	private String forme_juridique;
	
	@Column(name="nature")
	private String nature;
	
	@Column(name="statut")
	private String statut;
	
	@Column(name="designation")
	private String designation;
	
	@Column(name="adresse")
	private String adresse;
	
	@Column(name="wilaya")
	private String wilaya;
	
	@Column(name="commune")
	private String commune;
	
	@Column(name="cp")
	private int cp;
	
	@Column(name="tel")  //validation num -
	private String tel;
	
	@Column(name="fax")  //validation num -
	private String fax;
	
	@Column(name="email")  //validation num -
	private String email;
	
	//references_fiscales//////////////////////////
	
	@Column(name="registre_commerce")  
	private String registre_commerce;
	
	@Column(name="article_imposition")  
	private String article_imposition;
	
	@Column(name="nif")  
	private String nif;
	
	@Column(name="nis")  
	private String nis;
	
	@Column(name="activ_princ")  
	private String activ_princ;
	//////getterrs et setteres
	
	public Long getAcronyme() {
		return acronyme;
	}

	public void setAcronyme(Long acronyme) {
		this.acronyme = acronyme;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getForme_juridique() {
		return forme_juridique;
	}

	public void setForme_juridique(String forme_juridique) {
		this.forme_juridique = forme_juridique;
	}

	public String getNature() {
		return nature;
	}

	public void setNature(String nature) {
		this.nature = nature;
	}

	public String getStatut() {
		return statut;
	}

	public void setStatut(String statut) {
		this.statut = statut;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getWilaya() {
		return wilaya;
	}

	public void setWilaya(String wilaya) {
		this.wilaya = wilaya;
	}

	public String getCommune() {
		return commune;
	}

	public void setCommune(String commune) {
		this.commune = commune;
	}

	public int getCp() {
		return cp;
	}

	public void setCp(int cp) {
		this.cp = cp;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRegistre_commerce() {
		return registre_commerce;
	}

	public void setRegistre_commerce(String registre_commerce) {
		this.registre_commerce = registre_commerce;
	}

	public String getArticle_imposition() {
		return article_imposition;
	}

	public void setArticle_imposition(String article_imposition) {
		this.article_imposition = article_imposition;
	}

	public String getNif() {
		return nif;
	}

	public void setNif(String nif) {
		this.nif = nif;
	}

	public String getNis() {
		return nis;
	}

	public void setNis(String nis) {
		this.nis = nis;
	}

	public String getActiv_princ() {
		return activ_princ;
	}

	public void setActiv_princ(String activ_princ) {
		this.activ_princ = activ_princ;
	}

	
	
	
	
}
