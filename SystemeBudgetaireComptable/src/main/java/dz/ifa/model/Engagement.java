package dz.ifa.model;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.TableGenerator;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Engagement {
	@TableGenerator(name="engagementGen",allocationSize=1)
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator="engagementGen")
	private Long id;
	private String nom;
	@Column(name="date")
	private Date date;
	@Column(name="numero")
	private long numero;
	@ManyToOne
	@JsonIgnore
	private Tier tier;
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public long getNumero() {
		return numero;
	}
	public void setNumero(long numero) {
		this.numero = numero;
	}
	public List<EngagementElementaire> getEngagementsElementaires() {
		return engagementsElementaires;
	}
	public void setEngagementsElementaires(List<EngagementElementaire> engagementsElementaires) {
		this.engagementsElementaires = engagementsElementaires;
	}
	@OneToMany(cascade=CascadeType.ALL)
	private List<EngagementElementaire> engagementsElementaires;
	
	
	public Engagement() {
		// TODO Auto-generated constructor stub
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public Tier getTier() {
		return tier;
	}
	public void setTier(Tier tier) {
		this.tier = tier;
	}

}