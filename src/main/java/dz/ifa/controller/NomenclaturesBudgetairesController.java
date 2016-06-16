
package dz.ifa.controller;

import dz.ifa.model.nomenclature.Chapitre;
import dz.ifa.model.nomenclature.Section;
import dz.ifa.model.nomenclature.Testing;
import dz.ifa.model.utilisateur.Utilisateur;
import dz.ifa.service.nomenclatures.ChapitresService;
import dz.ifa.service.nomenclatures.NomenclatureService;

import java.util.ArrayList;
import java.util.List;

import dz.ifa.service.nomenclatures.SectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class NomenclaturesBudgetairesController {
    @Autowired
    NomenclatureService service;
    @Autowired
     ChapitresService chapitresService;
    @Autowired
    SectionService sectionService;

    List<Section> sections;
    List<Chapitre> chapitres;

    public NomenclaturesBudgetairesController() {
    }


    @RequestMapping(
            value = {"/nomenclatures_rubriques"},
            method = {RequestMethod.GET}
    )
    public String getRubriques(Model model) {
        List<Section> list = this.sectionService.getAllSections();
        if (list == null)
            list = new ArrayList<Section>();// = this.service.getAllSections();
        model.addAttribute("listSections", list);
        return "sections";
    }





    @RequestMapping(
            value = {"/nomenclatures_sections"},
            method = {RequestMethod.GET}
    )
    public String getSections(Model model) {
        List<Section> list = this.sectionService.getAllSections();
        if (list == null)
            list = new ArrayList<Section>();// = this.service.getAllSections();
        model.addAttribute("listSections", list);
        return "sections";
    }






    @RequestMapping(
            value = {"/nomenclatures_chapitres"},
            method = {RequestMethod.GET}
    )

    public String getChapitre(Model model) {
       this.chapitres=chapitresService.getAllChapitres();
        if(this.chapitres==null)
            this.chapitres=new ArrayList<Chapitre>();

        System.out.println("Affichage des chapitres");
        for(int i=0;i<chapitres.size();i++)
            System.out.println("Le Chapitre   "+this.chapitres.get(i).getCodeChapitre());
        model.addAttribute("listChapitres", this.chapitres);
        return "chapitres";
    }

    @RequestMapping(
            value = {"/nomenclatures_chapitre_delete"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String getRemoveChapitre(@RequestParam("code_chapitre") int indexChapitre) {
        System.out.println("l\'index du chapitre :" + indexChapitre);
        System.out.println("le code chapitre :" + ((Chapitre) this.chapitres.get(indexChapitre)).getCodeChapitre());
        return "100";
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
            value = {"/nomenclatures_sections_list.json"},
            method = {RequestMethod.GET}
    )
    public List<Section> getSectionsList() {
        List<Section> lst = sectionService.getAllSections();
        return lst;
    }

    ////Sections
    @RequestMapping(
            value = {"/nomenclatures_section_create"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postCreateSection(@RequestParam("code_section") String codeSection,
                                    @RequestParam("designation_section") String designationSection) {

        Section section = new Section(codeSection, designationSection);

        ///Ici je vais retouné 100 (message Ok) dans la cas ou la section est crée
        /// On peut faire du traitment sur les paramètre par exmple ...
        if (this.sectionService.creerSection(section) != null)
            return "100";
        else
            return "-1"; /// si le retour est null (section n'est pas crée)

    }




    /**___ safa salima _____changement au niveau du model rajout constructeur___ **/


// safa salima comptes budgetaires

    @RequestMapping(
            value = {"/nomenclatures_budget"},
            method = {RequestMethod.GET}
    )
    public String getNomenclature(Model model) {
        Object list = this.service.getAllComptesCompatbles();
        if (list == null) {
            list = new ArrayList();
        }
        model.addAttribute("listComptes", list);
        return "nomenclaturesBudgetaires";
    }



    @RequestMapping(
            value = {"/nomenclatures_budget_create"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postNomenclatureCreate(@RequestParam("classe") Integer classe, @RequestParam("nom") String nom, @RequestParam("chapitre") String chapitre, @RequestParam("section") String section, @RequestParam("rubrique") String rubrique, @RequestParam("numero") String numero, @RequestParam("designagtion") String designation, @RequestParam("type") String type) {
        Testing testing = new Testing();
        testing.setDesignation(designation);
        return this.service.creerTesting(testing) == null ? "444" : "100";
    }

    @RequestMapping(
            value = {"/nomenclatures_budget_edit"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postNomenclatureEdit(Model model) {
        return "100";
    }


/*

    @RequestMapping(
            value = {"/nomenclatures_cptBudgetaires_create"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postCreatecptBudgetaire(@RequestParam("code_cpt") String numCompte,
                                          @RequestParam("designation_compte") String designationCompte,
                                          @RequestParam("type_compte") String typeCompte,
                                          @RequestParam("code_chapitre") String codeChapitre ,
                                          @RequestParam("code_section") String codeSection,
                                          @RequestParam("code_rubrique") String codeRubrique,
                                          @RequestParam("code_classe") Integer numClasse,
                                          @RequestParam("nom_classe") String designationClasse

    ) {

        // verifie si la section existe
        if(service.verifByCodeSec(codeSection)==true)
            return "100";
        Section sect;
        sect = service.secByCode(codeSection);

        //String code=sect.getCodeSection();

        //sect.setCodeSection(codeSection);
        // vrifie si la classe comptable existe :

        if(service.verifclass(numClasse,designationClasse)==true)
            return "100";


        classe_comptable classC;

        classC = service.classByCode(numClasse);







        //	if(service.verifByCodeRub(codeRubrique)==true)
        //return "100";







        CompteBudgetaire budgetaire = new CompteBudgetaire(classC,designationCompte,sect,numCompte,typeCompte);

        ///Ici je vais retouné 100 (message Ok) dans la cas ou la section est crée
        /// On peut faire du traitment sur les paramètre par exmple ...
        if(this.service.creerCompteBudgetaire(budgetaire)!=null)
            return "100";
        else
            return "-1"; /// si le retour est null (section n'est pas crée)

    }

    */














}
