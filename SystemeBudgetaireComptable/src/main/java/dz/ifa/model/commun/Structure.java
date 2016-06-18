package dz.ifa.model.commun;

import com.fasterxml.jackson.annotation.JsonBackReference;
import dz.ifa.model.gestion_utilisateurs.Utilisateur;
import dz.ifa.model.nomenclature.Section;

import javax.persistence.*;
import java.util.List;


/**
 * @author user
 * @version 1.0
 * @created 07-avr.-2016 16:02:58
 */
@Entity
public class Structure {

	@TableGenerator(name="structureGen", allocationSize=1)
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="structureGen")
	private Integer idStructure;


	@Column
	private String adresse;
	@Column(unique = true)
	private String codeStructure;
	@Column
	private String nom;

	/*
	@ManyToMany
	@JoinTable(name = "sections_structures",
			joinColumns = @JoinColumn(name = "idStructure",referencedColumnName = "idStructure"),
			inverseJoinColumns = @JoinColumn(name = "idSection",referencedColumnName = "idSection"))*/
	@OneToMany(mappedBy = "structure",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	@JsonBackReference
	private List<Section> sections;




	@OneToMany(mappedBy = "structure",cascade=CascadeType.ALL, fetch=FetchType.LAZY)
	@JsonBackReference
	private List<Utilisateur> utilisateurs;

	public List<Utilisateur> getUtilisateurs() {
		return utilisateurs;
	}

	public void setUtilisateurs(List<Utilisateur> utilisateurs) {
		this.utilisateurs = utilisateurs;
	}

	public Integer getIdStructure() {
		return idStructure;
	}

	public void setIdStructure(Integer idStructure) {
		this.idStructure = idStructure;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getCodeStructure() {
		return codeStructure;
	}

	public void setCodeStructure(String codeStructure) {
		this.codeStructure = codeStructure;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public List<Section> getSections() {
		return sections;
	}

	public void setSections(List<Section> sections) {
		this.sections = sections;
	}







	public Structure(){

	}

}