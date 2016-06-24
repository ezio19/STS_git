package dz.ifa.model.nomenclature;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import java.util.List;


import javax.persistence.*;
import javax.validation.constraints.NotNull;
@Entity
public class Rubrique {





    @TableGenerator(name = "rubriqueGen", allocationSize = 1)
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "rubriqueGen")
    private Integer idRubrique;

    @Column(unique = true)
    private String codeRubrique;

    @Column
    private String designation;

    public Integer getIdRubrique() {
        return idRubrique;
    }

    public void setIdRubrique(Integer idRubrique) {
        this.idRubrique = idRubrique;
    }

    public String getCode_monnaie() {
        return code_monnaie;
    }

    public void setCode_monnaie(String code_monnaie) {
        this.code_monnaie = code_monnaie;
    }

    public List<CompteBudgetaire> getCompteBudgetaires() {
        return compteBudgetaires;
    }

    public void setCompteBudgetaires(List<CompteBudgetaire> compteBudgetaires) {
        this.compteBudgetaires = compteBudgetaires;
    }

    @Column
    private Double montant;

    @Column
    private String code_monnaie;


    @ManyToOne
    @JsonManagedReference
    private Chapitre chapitre;

    @OneToMany(mappedBy = "rubrique",cascade = CascadeType.ALL)
    @JsonBackReference
    private List<CompteBudgetaire> compteBudgetaires;




    public Rubrique() {
    }

    public String getCodeRubrique() {
        return codeRubrique;
    }

    public void setCodeRubrique(String codeRubrique) {
        this.codeRubrique = codeRubrique;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public Double getMontant() {
        return montant;
    }

    public void setMontant(Double montant) {
        this.montant = montant;
    }

    public Chapitre getChapitre() {
        return chapitre;
    }

    public void setChapitre(Chapitre chapitre) {
        this.chapitre = chapitre;
    }




    public Rubrique(String codeRubrique,String designation,Double montant,Chapitre chapitre){
        this.codeRubrique=codeRubrique;
        this.designation=designation;
        this.montant=montant;
        this.chapitre=chapitre;
    }


}//end Rubrique