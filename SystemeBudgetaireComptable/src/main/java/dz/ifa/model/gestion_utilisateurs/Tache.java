package dz.ifa.model.gestion_utilisateurs;

import javax.persistence.*;

/**
 * Created by Yazid on 17/06/2016.
 */
@Entity
public class Tache {

    @TableGenerator(name = "tacheGen", allocationSize = 1)
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "tacheGen")
    private Integer idTache;

    @OneToOne
    private Utilisateur commandant;

    @Column
    private String message;

    @Column
    private String etat;





}
