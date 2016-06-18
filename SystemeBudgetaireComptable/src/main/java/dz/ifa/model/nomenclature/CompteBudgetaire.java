package dz.ifa.model.nomenclature;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;


@Entity
public class CompteBudgetaire  {

	@TableGenerator(name="compteBudgetaireGen", allocationSize=1)

	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="compteBudgetaireGen")
	private Long id;

	@Column(unique = true)
	private String numCompte;

	@Column
	private String libelleCompte;


	@Column
	private String typeCompte;

	@Column
	private String concatenation;


	@ManyToOne
	@JsonManagedReference
	private CompteComptable nomenclatureComptable;

	@ManyToOne
	@JsonManagedReference
	private Rubrique rubrique;




	public  CompteBudgetaire(String libelleCompte,
							String numCompte,
							 Rubrique rubrique,
							 CompteComptable compteComptable,
							String typeCompte){

		this.libelleCompte=libelleCompte;
		this.numCompte=numCompte;
		this.typeCompte=typeCompte;
		this.rubrique=rubrique;
		this.nomenclatureComptable=compteComptable;
		this.typeCompte=typeCompte;
		String codeChapitre=rubrique.getChapitre().getCodeChapitre();
		String codeSection=rubrique.getChapitre().getSection().getCodeSection();
		this.concatenation=codeSection.concat(".").concat(codeChapitre.concat(".").concat(rubrique.getCodeRubrique()));

	}

	public CompteBudgetaire() {
	}


	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNumCompte() {
		return numCompte;
	}

	public void setNumCompte(String numCompte) {
		this.numCompte = numCompte;
	}

	public String getLibelleCompte() {
		return libelleCompte;
	}

	public void setLibelleCompte(String libelleCompte) {
		this.libelleCompte = libelleCompte;
	}

	public String getTypeCompte() {
		return typeCompte;
	}

	public void setTypeCompte(String typeCompte) {
		this.typeCompte = typeCompte;
	}

	public String getConcatenation() {
		return concatenation;
	}

	public void setConcatenation(String concatenation) {
		this.concatenation = concatenation;
	}

	public CompteComptable getNomenclatureComptable() {
		return nomenclatureComptable;
	}

	public void setNomenclatureComptable(CompteComptable nomenclatureComptable) {
		this.nomenclatureComptable = nomenclatureComptable;
	}

	public Rubrique getRubrique() {
		return rubrique;
	}

	public void setRubrique(Rubrique rubrique) {
		this.rubrique = rubrique;
	}
}//end CompteBudgetaire