package dz.ifa.model.nomenclature;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import dz.ifa.model.commun.Structure;
import org.springframework.data.annotation.*;

import java.util.List;

import javax.persistence.*;
import javax.persistence.Id;

@Entity
public class Section {


    public Long getIdSection() {
        return idSection;
    }

    public void setIdSection(Long idSection) {
        this.idSection = idSection;
    }

    @TableGenerator(name="sectionGen", allocationSize=1)
    @Id
    @GeneratedValue(strategy=GenerationType.TABLE, generator="sectionGen")
    private Long idSection;

    @Column
    private String codeSection;

    @Column
    private String designation;





    @OneToMany(mappedBy="section", cascade=CascadeType.ALL, fetch=FetchType.LAZY)
    @JsonBackReference
    private List<Chapitre> chapitres;


    @ManyToOne
    @JsonManagedReference
    private Structure structure;


    public Structure getStructure() {
        return structure;
    }

    public void setStructure(Structure structure) {
        this.structure = structure;
    }

    public Section(String code, String designation){
        this.codeSection=code;
        this.designation=designation;
    }

    public Section() {
    }

    public String getCodeSection() {
        return codeSection;
    }

    public void setCodeSection(String codeSection) {
        this.codeSection = codeSection;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }




   public List<Chapitre> getChapitres() {
        return chapitres;
    }

    public void setChapitres(List<Chapitre> chapitres) {
        this.chapitres = chapitres;
    }


    public Section(String codeSection, String designation, List<Chapitre> chapitres) {
        this.codeSection = codeSection;
        this.designation = designation;
        this.chapitres = chapitres;
    }



}//end Section

