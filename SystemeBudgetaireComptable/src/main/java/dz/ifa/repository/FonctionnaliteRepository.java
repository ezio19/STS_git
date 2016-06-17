package dz.ifa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import dz.ifa.model.Fonctionnalite;

@Repository("fonctionnaliteRepository")
public interface FonctionnaliteRepository extends JpaRepository<Fonctionnalite, String>{

}
