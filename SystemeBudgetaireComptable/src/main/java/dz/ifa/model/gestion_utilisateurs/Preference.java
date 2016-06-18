package dz.ifa.model.gestion_utilisateurs;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.TableGenerator;

import com.fasterxml.jackson.annotation.JsonManagedReference;

/**
 * Created by Yazid on 17/06/2016.
 */
@Entity
public class Preference  {

    @TableGenerator(name = "preferenceGen", allocationSize = 1)
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "preferenceGen")
    private Integer idPreference;

    @Column
    private String designation;

    @Column
    private String valeur;

    @ManyToOne
    @JsonManagedReference
    private dz.ifa.model.gestion_utilisateurs.Utilisateur utilisateur;


    public Preference(){

    }

    public Integer getIdPreference() {
        return idPreference;
    }

    public void setIdPreference(Integer idPreference) {
        this.idPreference = idPreference;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getValeur() {
        return valeur;
    }

    public void setValeur(String valeur) {
        this.valeur = valeur;
    }
}
