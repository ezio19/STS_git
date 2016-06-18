package dz.ifa.model.nomenclature;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.util.List;

@Entity
public class CompteComptable {

	@TableGenerator(name="compteComptableGen", allocationSize=1)

	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="compteComptableGen")
	private Long id;

	@Column
	private String libelleCompte;

	@Column
	private String numCompte;

	//nomenclatureComptable comptecomptable
	@OneToMany(mappedBy = "nomenclatureComptable", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JsonBackReference
	private List<CompteBudgetaire> compteBudgetaires;



	public  CompteComptable(String libelleCompte,
							String numCompte
							){


		this.libelleCompte=libelleCompte;
		this.numCompte=numCompte;

	}

	public CompteComptable() {
	}


	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}



	public String getLibelleCompte() {
		return libelleCompte;
	}

	public void setLibelleCompte(String libelleCompte) {
		this.libelleCompte = libelleCompte;
	}

	public String getNumCompte() {
		return numCompte;
	}

	public void setNumCompte(String numCompte) {
		this.numCompte = numCompte;
	}









	

	
}