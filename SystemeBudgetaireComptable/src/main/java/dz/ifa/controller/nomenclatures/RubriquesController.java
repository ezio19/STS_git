package dz.ifa.controller.nomenclatures;

import dz.ifa.model.nomenclature.Chapitre;
import dz.ifa.model.nomenclature.Rubrique;
import dz.ifa.service.nomenclatures.ChapitresService;
import dz.ifa.service.nomenclatures.RubriqueService;
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
public class RubriquesController {


    @Autowired
    private ChapitresService chapitresService;
    @Autowired
    private RubriqueService rubriqueService;



    @RequestMapping(
            value = {"/nomenclatures_rubrique_create"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postCreateRubrique(@RequestParam("code_rubrique") String codeRubrique,
                                     @RequestParam("designation_rubrique") String designationRubrique,
                                     @RequestParam("code_chapitre") String codeChapitre) {

        System.out.println("-------------------------------------------------------------------- ");
        System.out.println("-------------------------------------------------------------------- ");
        System.out.println("-------------------------------------------------------------------- ");
        System.out.println("-------------------------------------------------------------------- ");
        System.out.println("-------------------------------------------------------------------- ");
        System.out.println("Mapping Rubrique Creation ");
        System.out.println("code_Rubrique :" + codeChapitre);
        System.out.println("designation_Rubrique : " + designationRubrique);
        System.out.println("code Chapitre : " + codeChapitre);

        Chapitre chapitre=chapitresService.getChapitreByCodeChapitre(codeChapitre).get(0);
        if(chapitre!=null){
            if(rubriqueService.getRubriqueByCodeRubrique(codeRubrique).size()>0)
                return "102";
            Rubrique rubrique=new Rubrique();
            rubrique.setCodeRubrique(codeRubrique);
            rubrique.setDesignation(designationRubrique);
            rubrique.setChapitre(chapitre);
            if( rubriqueService.creerRubrique(rubrique) !=null )
                return "100";
            else
                return "101";

        }
        else
            return "101";

    }



    @RequestMapping(value = "/nommenclatures_get_rubrique", method = RequestMethod.GET)
    public String getSection(@RequestParam("code_rubrique") String code_rubrique, Model model) {
        //List<Utilisateur> utilisateurs=gestionUtilisateursService.getUtilisateurByIdUtilisateur(id_utilisateur);
        //Section section=sectionService.getSectionByCodeSection(code_section);
        List<Rubrique> rubriques=rubriqueService.getRubriqueByCodeRubrique(code_rubrique);
        if(rubriques.size() ==0){
            System.out.println("rubrique inexistante");
            return "404";
        }
        System.out.println("Rubrique Existe   "+rubriques.get(0).getCodeRubrique());
        model.addAttribute("rubrique", rubriques.get(0));
        return "rubriques/rubrique_detail";
    }



    @RequestMapping(
            value = {"/nomenclatures_rubriques"},
            method = {RequestMethod.GET}
    )
    public String getRubriques(Model model) {
        List<Rubrique> list = this.rubriqueService.getAllRubriques();
        if(list==null)
            list=new ArrayList<Rubrique>();
        model.addAttribute("listRubriques", list);
        return "rubriques";
    }

    @RequestMapping(
            value = {"/nomenclatures_rubriques_list.json"},
            method = {RequestMethod.GET}
    )
    public List<Rubrique> getRubriquesList() {
        List<Rubrique> lst = rubriqueService.getAllRubriques();
        return lst;
    }




    @RequestMapping(
            value = {"/nomenclatures_rubrique_remove"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postRemoveRubrique(@RequestParam("code_rubrique") String code_rubrique ) {

        System.out.println("Section Remove : ");
        System.out.println("Code Structure:" + code_rubrique);
        List<Rubrique> rubriques=rubriqueService.getRubriqueByCodeRubrique(code_rubrique);
        if(rubriques.size()==0)
            return "101";
        System.out.println("------------------------");
        System.out.println("------------------------");
        System.out.println("------------------------");
        System.out.println("Suppression de la rubrique  "+rubriques.get(0).getCodeRubrique());

        String result=rubriqueService.removeRubrique(rubriques.get(0));
        if(result !=null){
            System.out.println("------------------------");
            System.out.println("------------------------");
            System.out.println("------------------------");
            System.out.println("Rubrique Removed "+result);
            return "100";
        }
        else{
            System.out.println("------------------------");
            System.out.println("------------------------");
            System.out.println("Erreur resultat null");
            return "101";
        }


    }


}
