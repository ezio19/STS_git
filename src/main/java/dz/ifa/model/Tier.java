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
	//Champs statiques: 
	//Type du tier
	public static final int FOURNISSEUR=1;
	public static final int INVERSTISSEUR=2;
	//Nature 
	public static final int ARTISANAL=1;
	public static final int COMMERCIALE=2;
	public static final int INDUSTRIELLE=3;
	public static final int LIBERALE=4;
	public static final int AGRICOLE=5;
	//FormeJuridique
	public static final int SARL = 1;
	public static final int EIRL = 2;
	public static final int EURL = 3;
	public static final int EI = 4;
	//Status
	public static final int ACTIF=1;
	public static final int INACTIF=2;
	
	
	@TableGenerator(name="tierGen",allocationSize=1)
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="tierGen")
	private Long id;
	private String acronyme;
	private int activitePrincipal=0;
	private String adresse;
	private String articImposition;
	private int codePostal=0;
	private String commune;
	private String designation;
	private String eMail;
	private String fax;
	private String NIF;
	private String NIS;
	private String regCommerce;
	private String telephone;
	private String wilaya;
	private int formeJuridique=0;
	private int nature=0;
	private int statut=0;
	private int typeTier=0;
	public Tier() {
		// TODO Auto-generated constructor stub
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
	public int getActivitePrincipal() {
		return activitePrincipal;
	}
	public void setActivitePrincipal(int activitePrincipal) {
		this.activitePrincipal = activitePrincipal;
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
	public int getCodePostal() {
		return codePostal;
	}
	public void setCodePostal(int codePostal) {
		this.codePostal = codePostal;
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
	public String geteMail() {
		return eMail;
	}
	public void seteMail(String eMail) {
		this.eMail = eMail;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public String getNIF() {
		return NIF;
	}
	public void setNIF(String nIF) {
		NIF = nIF;
	}
	public String getNIS() {
		return NIS;
	}
	public void setNIS(String nIS) {
		NIS = nIS;
	}
	public String getRegCommerce() {
		return regCommerce;
	}
	public void setRegCommerce(String regCommerce) {
		this.regCommerce = regCommerce;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getWilaya() {
		return wilaya;
	}
	public void setWilaya(String wilaya) {
		this.wilaya = wilaya;
	}
	public int getFormeJuridique() {
		return formeJuridique;
	}
	public void setFormeJuridique(int formeJuridique) {
		this.formeJuridique = formeJuridique;
	}
	public int getNature() {
		return nature;
	}
	public void setNature(int nature) {
		this.nature = nature;
	}
	public int getStatut() {
		return statut;
	}
	public void setStatut(int statut) {
		this.statut = statut;
	}
	public int getTypeTier() {
		return typeTier;
	}
	public void setTypeTier(int typeTier) {
		this.typeTier = typeTier;
	}
	
	
	
}