package dz.ifa.controller;

import dz.ifa.model.commun.Structure;
import dz.ifa.model.gestion_utilisateurs.Fonctionnalite;
import dz.ifa.model.gestion_utilisateurs.Utilisateur;
import dz.ifa.model.nomenclature.CompteComptable;
import dz.ifa.service.gestion_utilisateurs.GestionUtilisateursService;
import dz.ifa.service.nomenclatures.NomenclatureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Yazid on 18/06/2016.
 */

@Controller
public class GestionUtilisateurController {


    @Autowired
    private GestionUtilisateursService gestionUtilisateursService;
    @Autowired
    private NomenclatureService nomenclatureService;

    @RequestMapping(
            value = {"/gestion_utilisateurs_fonctionnalites"},
            method = {RequestMethod.GET}
    )
    public String getFonctionnalites(Model model) {
        List<Fonctionnalite> fonctionnalites = gestionUtilisateursService.getAllFonctionnalites();
        if (fonctionnalites == null)
            fonctionnalites = new ArrayList<>();
        model.addAttribute("listFonctionnalites", fonctionnalites);
        return "fonctionnalites";
    }


    @RequestMapping(
            value = {"/gestion_utilisateurs_fonctionnalite_create"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postCreateFonctionnalite(@RequestParam("fonctionnalite_designation") String fonctionnalite_designation) {

        System.out.println("Mapping Fonctionnalite Creation ");
        System.out.println("fonctionnalite_designation : " + fonctionnalite_designation);
        List<Fonctionnalite> fonctionnalites = gestionUtilisateursService.getFonctionnalite(fonctionnalite_designation);
        if (fonctionnalites.size() > 0) {
            return "102";
        }
        Fonctionnalite fonctionnalite = new Fonctionnalite();
        fonctionnalite.setDesignation(fonctionnalite_designation);
        if (gestionUtilisateursService.creerFonctionnalite(fonctionnalite) != null)
            return "100";
        else
            return "101";

    }


    @RequestMapping(
            value = {"/gestion_utilisateurs_fonctionnalites_list.json"},
            method = {RequestMethod.GET}
    )
    public List<Fonctionnalite> getFonctionnalitesList() {
        List<Fonctionnalite> fonctionnalites = gestionUtilisateursService.getAllFonctionnalites();
        if (fonctionnalites == null)
            fonctionnalites = new ArrayList<>();
        return fonctionnalites;
    }






    @RequestMapping(
            value = {"/gestion_utilisateurs_utilisateurs_list.json"},
            method = {RequestMethod.GET}
    )
    public List<Utilisateur> getUtilisateursList() {
        List<Utilisateur> fonctionnalites = gestionUtilisateursService.getAllUtilisateurs();
        List<Utilisateur> users=new ArrayList<>();
        for(int i=0;i<20;i++){
            users.addAll(fonctionnalites);
        }

        if (fonctionnalites == null)
            fonctionnalites = new ArrayList<>();
        return users;
    }


    @RequestMapping(
            value = {"/gestion_utilisateurs_utilisateurs"},
            method = {RequestMethod.GET}
    )
    public String getUtilisateurs(Model model) {
        List<Utilisateur> utilisateurs = gestionUtilisateursService.getAllUtilisateurs();
        if (utilisateurs == null)
            utilisateurs = new ArrayList<>();
        model.addAttribute("listUtilisateurs", utilisateurs);
        return "gestion_utilisateurs";
    }



    @RequestMapping(
            value = {"/gestion_utilisateurs_utilisateur_remove"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postRemoveUtilisateur(@RequestParam("id_utilisateur") String id_utilisateur ) {

        System.out.println("Utilisateur Remove : ");
        System.out.println("id_utilisateur :" + id_utilisateur);

        List<Utilisateur>  utilisateurs= gestionUtilisateursService.getUtilisateurByIdUtilisateur(id_utilisateur);
        if(utilisateurs.size()==0)
            return "102";
        Utilisateur utilisateur=utilisateurs.get(0);
        System.out.println("------------------------");
        System.out.println("------------------------");
        System.out.println("------------------------");
        System.out.println("Suppression de l'utilisateur "+utilisateur.getId());

        String result=gestionUtilisateursService.supprimerUtilisateur(utilisateur);
        if(result !=null){
            System.out.println("Utilisateur Removed "+result);
            return "100";
        }
        else
            return "101";

    }
    @RequestMapping(value = "/gestion_utilisateurs_get_utilisateur.html", method = RequestMethod.GET)
    public String getUtilisateur(@RequestParam("id_utilisateur") String id_utilisateur, Model model) {
        List<Utilisateur> utilisateurs=gestionUtilisateursService.getUtilisateurByIdUtilisateur(id_utilisateur);
        if(utilisateurs.size()==0){
            System.out.println("compte inexistant");
            return "404";
        }
        System.out.println("Compte Existe   "+utilisateurs.get(0).getId());

        model.addAttribute("utilisateur", utilisateurs.get(0));
        return "gestion_utilisateurs_pages/utilisateur_detaill";
    }



    @RequestMapping(
            value = {"/gestion_utilisateurs_utilisateur_create"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postCreateRNomenclatureComptable(@RequestParam("nom") String nom,
                                                   @RequestParam("prenom") String prenom,
                                                   @RequestParam("passwd") String passw,
                                                   @RequestParam("reppassw") String reppasswd,
                                                   @RequestParam(value = "mail", required = false) String mail,
                                                   @RequestParam(value = "addresse", required = false) String addresse,
                                                   @RequestParam("id_utilisateur") String idUtilisateur,
                                                   @RequestParam("code_structure") String code_structure,
                                                   @RequestParam(value = "fonctionnalites[]") List<Integer> fonctionnalites,
                                                   @RequestParam("actif") int actif
    ) {

        System.out.println("Mapping Rubrique Creation ");
        System.out.println("nom :" + nom);
        System.out.println("prenom :" + prenom);
        System.out.println("passwd :" + passw);
        System.out.println("reppassw :" + reppasswd);
        System.out.println("mail :" + mail);
        System.out.println("address:" + addresse);
        System.out.println("id_user:" + idUtilisateur);
        System.out.println("code_structure:" + idUtilisateur);

        if(gestionUtilisateursService.getUtilisateurByIdUtilisateur(idUtilisateur).size()>0)
            return "602";
        if(!passw.equals(reppasswd))
            return "603";
        Utilisateur utilisateur=new Utilisateur();
        utilisateur.setNom(nom);
        utilisateur.setPrenom(prenom);
        utilisateur.setPasswd(BCryptHash(passw));
        if(mail!=null)
            utilisateur.seteMail(mail);
        if(addresse!=null)
        utilisateur.setAdresse(addresse);
        utilisateur.setActif(actif);
        utilisateur.setId(idUtilisateur);
        List<Structure> structures=nomenclatureService.getStructureByCodeStructure(code_structure);
        if(structures.size()==0)
            return "603";
        utilisateur.setStructure(structures.get(0));
        utilisateur.prepareList();
        for (int i = 0; i < fonctionnalites.size(); i++) {
            Fonctionnalite fonctionnalite=gestionUtilisateursService.getFonctionnaliteById(fonctionnalites.get(i)).get(0);
            utilisateur.getFoncts().add(fonctionnalite);
            System.out.println("les FCN sont : " + fonctionnalites.get(i));
        }

        if(gestionUtilisateursService.creerUtilisateur(utilisateur)!=null)
            return "100";
        else
            return "101";

    }



    @RequestMapping(
            value = {"/gestion_utilisateurs_utilisateur_edit"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postEditUtilisateur(@RequestParam("nom") String nom,
                                                   @RequestParam("prenom") String prenom,
                                                   @RequestParam("passwd") String passw,
                                                   @RequestParam("reppassw") String reppasswd,
                                                   @RequestParam(value = "mail", required = false) String mail,
                                                   @RequestParam(value = "addresse", required = false) String addresse,
                                                   @RequestParam("id_utilisateur") String idUtilisateur,
                                                   @RequestParam("code_structure") String code_structure,
                                                   @RequestParam(value = "fonctionnalites[]") List<Integer> fonctionnalites,
                                                   @RequestParam("actif") int actif
    ) {

        System.out.println("Mapping Rubrique Creation ");
        System.out.println("nom :" + nom);
        System.out.println("prenom :" + prenom);
        System.out.println("passwd :" + passw);
        System.out.println("reppassw :" + reppasswd);
        System.out.println("mail :" + mail);
        System.out.println("address:" + addresse);
        System.out.println("id_user:" + idUtilisateur);
        System.out.println("code_structure:" + idUtilisateur);


        List<Utilisateur>utilisateurs=gestionUtilisateursService.getUtilisateurByIdUtilisateur(idUtilisateur);
        if(utilisateurs.size()==0){
            System.out.println("Erreur user n'exite pas");
            return "104";
        }

        if(!passw.equals(reppasswd))
            return "603";
        Utilisateur utilisateur=utilisateurs.get(0);
        utilisateur.setNom(nom);
        utilisateur.setPrenom(prenom);
        utilisateur.setPasswd(BCryptHash(passw));
        if(mail!=null)
            utilisateur.seteMail(mail);
        if(addresse!=null)
            utilisateur.setAdresse(addresse);
        utilisateur.setId(idUtilisateur);
        utilisateur.setActif(actif);
        List<Structure> structures=nomenclatureService.getStructureByCodeStructure(code_structure);
        if(structures.size()==0)
            return "603";
        utilisateur.setStructure(structures.get(0));
        utilisateur.prepareList();
        for (int i = 0; i < fonctionnalites.size(); i++) {
            Fonctionnalite fonctionnalite=gestionUtilisateursService.getFonctionnaliteById(fonctionnalites.get(i)).get(0);
            utilisateur.getFoncts().add(fonctionnalite);
            System.out.println("les FCN sont : " + fonctionnalites.get(i));
        }

        if(gestionUtilisateursService.creerUtilisateur(utilisateur)!=null)
            return "100";
        else{
            System.out.println("service creation retourne null");
            return "101";
        }


    }



    public String BCryptHash(String sequence) {
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String hashedPassword = passwordEncoder.encode(sequence);
        return hashedPassword;
    }


}
