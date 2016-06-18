package dz.ifa.repository;

import dz.ifa.model.gestion_utilisateurs.Notification;
import dz.ifa.model.nomenclature.Chapitre;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NotificationRepository extends JpaRepository<Notification,String> {
	Notification save(Notification notification);
}
