package dz.ifa.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.TableGenerator;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
//@JsonAutoDetect(fieldVisibility = JsonAutoDetect.Visibility.NONE, getterVisibility = JsonAutoDetect.Visibility.NONE)
public class Tier {
	
	@TableGenerator(name="tierGen",allocationSize=1)
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="tierGen")
	private Long id;
	private String acronyme;
	private String type;
	private String activ_princ;
	private String adresse;
	private String articImposition;
	private int cp;
	private String commune;
	private String designation;
	private String email;
	private String fax;
	private String nif;
	private String nis;
	private String registre_commerce;
	private String tel;
	private String wilaya;
	private String forme_juridique;
	private String nature;
	private String statut;
	private String typeTier;
	private String article_imposition;

	public Tier() {
		super();
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getAcronyme() {
		return acronyme;
	}
	public void setAcronyme(String acronyme) {
		this.acronyme = acronyme;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getActiv_princ() {
		return activ_princ;
	}
	public void setActiv_princ(String activ_princ) {
		this.activ_princ = activ_princ;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getArticImposition() {
		return articImposition;
	}
	public void setArticImposition(String articImposition) {
		this.articImposition = articImposition;
	}
	public int getCp() {
		return cp;
	}
	public void setCp(int cp) {
		this.cp = cp;
	}
	public String getCommune() {
		return commune;
	}
	public void setCommune(String commune) {
		this.commune = commune;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
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
	public String getRegistre_commerce() {
		return registre_commerce;
	}
	public void setRegistre_commerce(String registre_commerce) {
		this.registre_commerce = registre_commerce;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getWilaya() {
		return wilaya;
	}
	public void setWilaya(String wilaya) {
		this.wilaya = wilaya;
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
	public String getTypeTier() {
		return typeTier;
	}
	public void setTypeTier(String typeTier) {
		this.typeTier = typeTier;
	}
	public String getArticle_imposition() {
		return article_imposition;
	}
	public void setArticle_imposition(String article_imposition) {
		this.article_imposition = article_imposition;
	}
}