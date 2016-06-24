package dz.ifa.controller.nomenclatures;

import dz.ifa.model.nomenclature.Chapitre;
import dz.ifa.model.nomenclature.Section;
import dz.ifa.service.nomenclatures.ChapitresService;
import dz.ifa.service.nomenclatures.SectionService;
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
 * Created by Yazid on 22/06/2016.
 */
@Controller
public class ChapitresController {

    @Autowired
    private ChapitresService chapitresService;
    @Autowired
    private SectionService sectionService;



    @RequestMapping(
            value = {"/nomenclatures_chapitre_remove"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postRemoveChapitre(@RequestParam("code_chapitre") String code_chapitre ) {

        System.out.println("Section Remove : ");
        System.out.println("Code Structure:" + code_chapitre);
        List<Chapitre> chapitres=chapitresService.getChapitreByCodeChapitre(code_chapitre);
        if(chapitres.size()==0)
            return "101";
        System.out.println("------------------------");
        System.out.println("------------------------");
        System.out.println("------------------------");
        System.out.println("Suppression du chapitre  "+chapitres.get(0).getCodeChapitre());

        String result=chapitresService.removeChapitre(chapitres.get(0));
        if(result !=null){
            System.out.println("------------------------");
            System.out.println("------------------------");
            System.out.println("------------------------");
            System.out.println("Chapitre Removed "+result);
            return "100";
        }
        else{
            System.out.println("------------------------");
            System.out.println("------------------------");
            System.out.println("------------------------");
            System.out.println("Erreur resultat null");
            return "101";
        }


    }




    @RequestMapping(value = "/nommenclatures_get_chapitre", method = RequestMethod.GET)
    public String getSection(@RequestParam("code_chapitre") String code_chapitre, Model model) {
        //List<Utilisateur> utilisateurs=gestionUtilisateursService.getUtilisateurByIdUtilisateur(id_utilisateur);
        //Section section=sectionService.getSectionByCodeSection(code_section);
        List<Chapitre> chapitreList=chapitresService.getChapitreByCodeChapitre(code_chapitre);
        if(chapitreList.size() ==0){
            System.out.println("code_chapitre inexistant");
            return "404";
        }
        System.out.println("Chapitre Existe   "+chapitreList.get(0).getCodeChapitre());
        model.addAttribute("chapitre", chapitreList.get(0));
        return "chapitres/chapitre_detail";
    }






    @RequestMapping(
            value = {"/nomenclatures_chapitres"},
            method = {RequestMethod.GET}
    )

    public String getChapitre(Model model) {
        List<Chapitre> chapitres=chapitresService.getAllChapitres();
        if(chapitres==null)
            chapitres=new ArrayList<Chapitre>();

        System.out.println("Affichage des chapitres");
        for(int i=0;i<chapitres.size();i++)
            System.out.println("Le Chapitre   "+chapitres.get(i).getCodeChapitre());
        model.addAttribute("listChapitres", chapitres);
        return "chapitres";
    }




    @RequestMapping(
            value = {"/nomenclatures_chapitre_create"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postCreateChapitre(@RequestParam("code_chapitre") String codeChapitre, @RequestParam("designation_chapitre") String designationChapitre, @RequestParam("code_section") String codeSection) {
        System.out.println("Mapping nomenclatures_chapitre_delete ");
        System.out.println("code_chapitre :" + codeChapitre);
        System.out.println("designation_chapitre : " + designationChapitre);
        System.out.println("code Section : " + codeSection);


        Section section=sectionService.getSectionByCodeSection(codeSection);
        if(section!=null){
            Chapitre chapitre=new Chapitre();
            chapitre.setCodeChapitre(codeChapitre);
            chapitre.setDesignation(designationChapitre);
            chapitre.setSection(section);
            if( chapitresService.creerChapitre(chapitre)  !=null )
                return "100";
            else
                return "-1";

        }
        else
            return "-1";

    }




    @RequestMapping(
            value = {"/nomenclatures_chapitres_list.json"},
            method = {RequestMethod.GET}
    )
    public List<Chapitre> getChapitresList() {
        List<Chapitre> lst = chapitresService.getAllChapitres();
        return lst;
    }






}
