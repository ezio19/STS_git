package dz.ifa.model.nomenclature;

import javax.persistence.*;


@Entity
public class CompteBudgetaire  {

	@TableGenerator(name="compteBudgetaireGen", allocationSize=1)

	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="compteBudgetaireGen")
	private Long id;

	@Column
	private String numCompte;

	@Column
	private String libelleCompte;

	@Column
	private String designationCompte;

	@Column
	private String typeCompte;

	@Column
	private String concatenation;


	@ManyToOne
	private CompteComptable nomenclatureComptable;



	@ManyToOne
	private Rubrique rubrique;




	public  CompteBudgetaire(Long id,
							String libelleCompte,
							String numCompte,
							 Rubrique rubrique,
							 CompteComptable compteComptable,
							String typeCompte){

		this.id=id;
		this.libelleCompte=libelleCompte;
		this.numCompte=numCompte;
		this.designationCompte=designationCompte;
		this.typeCompte=typeCompte;

	}





	/**___________________________ safa salima _____________________________ **/

	public CompteBudgetaire(String libelleCompte, String numCompte,
							String typeCompte) {
		this.libelleCompte = libelleCompte;
		this.numCompte = numCompte;
		this.typeCompte = typeCompte;
	}
	/**________________________________________________________ **/

	/**___________________________ safa salima _____________________________ **/

	public CompteBudgetaire(String libelleCompte, String numCompte) {
		this.libelleCompte = libelleCompte;
		this.numCompte = numCompte;
	}
	/**________________________________________________________ **/



	public CompteBudgetaire() {
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

	public String getDesignationCompte() {
		return designationCompte;
	}

	public void setDesignationCompte(String designationCompte) {
		this.designationCompte = designationCompte;
	}

	public String getTypeCompte() {
		return typeCompte;
	}

	public void setTypeCompte(String typeCompte) {
		this.typeCompte = typeCompte;
	}
}//end CompteBudgetaire