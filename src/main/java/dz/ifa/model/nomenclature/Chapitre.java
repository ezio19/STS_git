package dz.ifa.model.nomenclature;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.TableGenerator;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonBackReference;
import org.hibernate.validator.constraints.Range;

import dz.ifa.model.Goal;


@Entity
public class Chapitre {


    @TableGenerator(name = "chapitreGen", allocationSize = 1)
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "chapitreGen")
    private Long idChapitre;


    @Column
    private String codeChapitre;

    @Column
    private String designation;


    @ManyToOne
    @JsonBackReference
    private Section section;

    @OneToMany(mappedBy = "chapitre", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Rubrique> rubriques;



    public Chapitre(String codeChapitre, String designation,Section section, List<Rubrique> rubriqu) {
        this.codeChapitre = codeChapitre;
        this.designation = designation;
        this.section = section;
        this.rubriques = rubriqu;
    }

    public Chapitre() {
    }


    public String getCodeChapitre() {
        return codeChapitre;
    }

    public void setCodeChapitre(String codeChapitre) {
        this.codeChapitre = codeChapitre;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public Section getSection() {
        return section;
    }

    public void setSection(Section section) {
        this.section = section;
    }

    public List<Rubrique> getRubriques() {
        return rubriques;
    }

    public void setRubriques(List<Rubrique> rubriques) {
        this.rubriques = rubriques;
    }
}//end Chapitre