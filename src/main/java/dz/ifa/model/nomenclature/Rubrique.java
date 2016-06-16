package dz.ifa.model.nomenclature;

import com.fasterxml.jackson.annotation.JsonBackReference;

import java.util.List;


import javax.persistence.*;
import javax.validation.constraints.NotNull;
@Entity
public class Rubrique {


    @TableGenerator(name = "rubriqueGen", allocationSize = 1)
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "rubriqueGen")
    private Long idRubrique;

    @Column(unique = true)
    private String codeRubrique;

    @Column
    private String designation;
    @Column
    private Double montant;

    @ManyToOne
    @JsonBackReference
    private Chapitre chapitre;

    @OneToMany(mappedBy = "rubrique")
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