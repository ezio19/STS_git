package dz.ifa.repository;

import dz.ifa.model.gestion_utilisateurs.Utilisateur;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by Yazid on 17/06/2016.
 */
public interface UtilisateurRepository extends JpaRepository<Utilisateur,String> {
        Utilisateur save(Utilisateur chap);





@Query("SELECT c FROM Utilisateur c WHERE LOWER(c.idUtilisateur) = LOWER(:user_id)")
public List<Utilisateur> getUtilisateurByIdUtilisateur(@Param("user_id") String user_id);









        }