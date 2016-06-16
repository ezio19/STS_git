package dz.ifa.model.nomenclature;

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


	@OneToMany(mappedBy = "comptecomptable", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<CompteBudgetaire> compteBudgetaires;



	public  CompteComptable(Long id,
							String libelleCompte,
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