package dz.ifa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import dz.ifa.model.Utilisateur;

@Repository("UtilisateurRepository")
public interface UtilisateurRepository extends JpaRepository<Utilisateur, String> {

}
