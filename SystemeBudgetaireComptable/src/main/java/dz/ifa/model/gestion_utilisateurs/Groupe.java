package dz.ifa.model.gestion_utilisateurs;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Yazid on 17/06/2016.
 */

public class Groupe {
   /* @TableGenerator(name = "preferenceGen", allocationSize = 1)
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "preferenceGen")
    private Integer idNotification;


    @OneToMany(mappedBy = "groupeUser")
    @JsonBackReference
    private List<Utilisateur> utilisateurs;




    @ManyToMany
    private List<Notification> notifications;

*/
}
