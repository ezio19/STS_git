package dz.ifa.repository;

import dz.ifa.model.gestion_utilisateurs.Fonctionnalite;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FonctionnaliteRepository extends JpaRepository<Fonctionnalite,String> {
	Fonctionnalite save(Fonctionnalite fonctionnalite);
}
