package dz.ifa.service.gestion_utilisateurs;

import dz.ifa.model.gestion_utilisateurs.Fonctionnalite;
import dz.ifa.model.gestion_utilisateurs.Notification;
import dz.ifa.model.gestion_utilisateurs.Tache;
import dz.ifa.model.gestion_utilisateurs.Utilisateur;
import dz.ifa.repository.FonctionnaliteRepository;
import dz.ifa.repository.NotificationRepository;
import dz.ifa.repository.TacheRepository;
import dz.ifa.repository.UtilisateurRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Yazid on 18/06/2016.
 */
@Service("gestionUtilisateurService")
public class GestionUtilisateursImpl implements GestionUtilisateursService {

    @Autowired
    private UtilisateurRepository utilisateurRepository;
    @Autowired
    private FonctionnaliteRepository fonctionnaliteRepository;
    @Autowired
    private NotificationRepository notificationRepository;
    @Autowired
    private TacheRepository tacheRepository;



    public List<Utilisateur> getAllUtilisateurs() {
        return this.utilisateurRepository.findAll();
    }

    public Utilisateur creerUtilisateur(Utilisateur utilisateur) {
        return utilisateurRepository.save(utilisateur);
    }

    public List<Fonctionnalite> getAllFonctionnalites() {
        return fonctionnaliteRepository.findAll();
    }

    public Fonctionnalite creerFonctionnalite(Fonctionnalite fonctionnalite) {
        return fonctionnaliteRepository.save(fonctionnalite);
    }

    public List<Notification> getAllNotifications() {
        return notificationRepository.findAll();
    }

    public Notification creerNotification(Notification notification) {
        return notificationRepository.save(notification);
    }

    public List<Tache> getAllTaches() {
        return tacheRepository.findAll();
    }

    public Tache creerTache(Tache tache) {
        return tacheRepository.save(tache);
    }
}
