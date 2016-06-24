package dz.ifa.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.TableGenerator;
import javax.validation.constraints.Null;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonIgnoreType;

@Entity

public class PieceComptable {
	@TableGenerator(name="pieceComptableGen", allocationSize=1)
	
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="pieceComptableGen")
	private Long id;
	
	private double montantGlobal;
	private String numero;
	private String objet;
	@JsonIgnore
	@OneToOne(cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private Tier tier;
	
	public PieceComptable(){

	}

	public double getMontantGlobal() {
		return montantGlobal;
	}

	public void setMontantGlobal(double montantGlobal) {
		this.montantGlobal = montantGlobal;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getObjet() {
		return objet;
	}

	public void setObjet(String objet) {
		this.objet = objet;
	}
	
	public Tier getTier() {
		return tier;
	}

	public void setTier(Tier tier) {
		this.tier = tier;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	
	
	//Getters and setters
	
}