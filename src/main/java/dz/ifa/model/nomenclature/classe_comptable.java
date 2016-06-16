package dz.ifa.model.nomenclature;

import java.util.List;
import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
public class classe_comptable {


    @TableGenerator(name = "classe_comptableGen", allocationSize = 1)
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "classe_comptableGen")
    private Integer numClasse;

    @Column
    private String designation;

    @OneToMany(mappedBy = "compteClasse", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<CompteComptable> compteComptables;


    @OneToMany(mappedBy = "compteClasse", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<CompteBudgetaire> compteBudgetaires;


    public classe_comptable(Integer numClasse,String designation,List<CompteComptable> compteComptables,List<CompteBudgetaire> compteBudgetaires) {
        this.numClasse=numClasse;
        this.designation=designation;
        this.compteComptables=compteComptables;
        this.compteBudgetaires=compteBudgetaires;
    }


    public classe_comptable() {

    }

    public int getNumClasse() {
        return numClasse;
    }

    public void setNumClasse(int numClasse) {
        this.numClasse = numClasse;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public List<CompteComptable> getCompteComptables() {
        return compteComptables;
    }

    public void setCompteComptables(List<CompteComptable> compteComptables) {
        this.compteComptables = compteComptables;
    }

    public List<CompteBudgetaire> getCompteBudgetaires() {
        return compteBudgetaires;
    }

    public void setCompteBudgetaires(List<CompteBudgetaire> compteBudgetaires) {
        this.compteBudgetaires = compteBudgetaires;
    }












}//end Classe_comptable