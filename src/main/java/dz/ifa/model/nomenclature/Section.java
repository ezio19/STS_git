package dz.ifa.model.nomenclature;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import org.springframework.data.annotation.*;

import java.util.List;

import javax.persistence.*;
import javax.persistence.Id;

@Entity
public class Section {


    @TableGenerator(name="sectionGen", allocationSize=1)
    @Id
    @GeneratedValue(strategy=GenerationType.TABLE, generator="sectionGen")
    private Long id;

    @Column
    private String codeSection;

    @Column
    private String designation;

    @OneToMany(mappedBy="section", cascade=CascadeType.ALL, fetch=FetchType.EAGER)
    @JsonManagedReference
    private List<Chapitre> chapitres;

    public Section(String code,String designation){
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

