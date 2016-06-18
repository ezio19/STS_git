package dz.ifa.controller;

import dz.ifa.model.gestion_utilisateurs.Utilisateur;
import dz.ifa.model.nomenclature.CompteComptable;
import dz.ifa.service.gestion_utilisateurs.GestionUtilisateursService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Yazid on 18/06/2016.
 */

@Controller
public class GestionUtilisateurController {


    @Autowired
    private GestionUtilisateursService gestionUtilisateursService;




    @RequestMapping(
            value = {"/gestion_utilisateurs_utilisateurs"},
            method = {RequestMethod.GET}
    )
    public String getUtilisateurs(Model model) {
        List<Utilisateur> utilisateurs=gestionUtilisateursService.getAllUtilisateurs();
        if(utilisateurs==null)
            utilisateurs=new ArrayList<>();
        model.addAttribute("listUtilisateurs", utilisateurs);
        return "gestion_utilisateurs";
    }



    @RequestMapping(
            value = {"/gestion_utilisateurs_utilisateur_create"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postCreateRNomenclatureComptable(@RequestParam("numero_nomenclature") String numeroNomenclature,
                                                   @RequestParam("designation_nomenclature") String designationNomenclature) {

        System.out.println("Mapping Rubrique Creation ");
        System.out.println("numeroNomenclature :" + numeroNomenclature);
        System.out.println("designationNomenclature : " + designationNomenclature);
        return "100";

    }

    @RequestMapping(
            value = {"/nomenclatures_fonctionnalites_list.json"},
            method = {RequestMethod.GET}
    )
    public List<CompteComptable> getNomenclaturesComptablesList() {
        return null;
    }


}
