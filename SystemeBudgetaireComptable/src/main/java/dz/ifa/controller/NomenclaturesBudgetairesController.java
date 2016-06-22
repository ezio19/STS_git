
package dz.ifa.controller;

import dz.ifa.model.commun.Structure;
import dz.ifa.model.gestion_utilisateurs.Utilisateur;
import dz.ifa.model.nomenclature.*;
import dz.ifa.service.nomenclatures.ChapitresService;
import dz.ifa.service.nomenclatures.NomenclatureService;

import java.util.ArrayList;
import java.util.List;

import dz.ifa.service.nomenclatures.RubriqueService;
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
    @Autowired
    RubriqueService rubriqueService;


    List<Section> sections;
    List<Chapitre> chapitres;



    public NomenclaturesBudgetairesController() {
    }





    @RequestMapping(
            value = {"/nomenclatures_strcutures"},
            method = {RequestMethod.GET}
    )
    public String getStructures(Model model) {
        List<Structure> list =service.getAllStructures();
        System.out.println("----->Nomenclatures");
        if(list==null)
            list=new ArrayList<Structure>();
        model.addAttribute("listStructures", list);
        return "structures";
    }



    @RequestMapping(
            value = {"/nomenclatures_strcuture_create"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postCreateStructure(@RequestParam("nom_structure") String nom_structure,
                                      @RequestParam("address_strcuture") String address_strcuture,
                                      @RequestParam("code_strcuture") String code_strcuture
                                      ) {

        System.out.println("Mapping Strcuture Creation ");
        System.out.println("nom_structure :" + nom_structure);
        System.out.println("address_strcuture : " + address_strcuture);
        System.out.println("code_strcuture : " + code_strcuture);

        if (service.getNomenclatureComptableByNumeroNomenclature(code_strcuture).size() > 0) {
            System.out.println("Strcuture Exist");
            return "602";
        }
        Structure structure=new Structure();
        structure.setAdresse(address_strcuture);
        structure.setCodeStructure(code_strcuture);
        structure.setNom(nom_structure);
        if(service.creerStructure(structure)!=null)
            return "100";
        else return "601";

    }

    @RequestMapping(
            value = {"/nomenclatures_structures_list.json"},
            method = {RequestMethod.GET}
    )
    public List<Structure> getStructureList() {
        List<Structure> lst = service.getAllStructures();
        return lst;
    }





    @RequestMapping(
            value = {"/nomenclatures_comptables"},
            method = {RequestMethod.GET}
    )
    public String getNomenclaturesComptables(Model model) {
        List<CompteComptable> list = this.service.getAllNomenclaturesComptables();
        System.out.println("----->Nomenclatures");
        for(int i=0;i<list.size();i++)
            System.out.println("list nomenclature : "+i+"--> "+list.get(i).getNumCompte());
        if(list==null)
            list=new ArrayList<CompteComptable>();
        model.addAttribute("listNomenclaturesComptables", list);
        return "nomenclatures_comptables";
    }



    @RequestMapping(
            value = {"/nomenclatures_comptable_create"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postCreateRNomenclatureComptable(@RequestParam("numero_nomenclature") String numeroNomenclature,
                                     @RequestParam("designation_nomenclature") String designationNomenclature) {

        System.out.println("Mapping Rubrique Creation ");
        System.out.println("numeroNomenclature :" + numeroNomenclature);
        System.out.println("designationNomenclature : " + designationNomenclature);

        if (service.getNomenclatureComptableByNumeroNomenclature(numeroNomenclature).size() > 0) {
            System.out.println("Compte Exist");
            return "602";
        }
        CompteComptable comptable=new CompteComptable();
        comptable.setNumCompte(numeroNomenclature);
        comptable.setLibelleCompte(designationNomenclature);
        if(service.creerCompteComptable(comptable)!=null)
            return "100";
        else return "601";

    }

    @RequestMapping(
            value = {"/nomenclatures_comptables_list.json"},
            method = {RequestMethod.GET}
    )
    public List<CompteComptable> getNomenclaturesComptablesList() {
        List<CompteComptable> lst = service.getAllNomenclaturesComptables();
        return lst;
    }








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
            value = {"/nomenclatures_section_remove"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postRemoveSection(@RequestParam("code_section") String code_section ) {

        System.out.println("Section Remove : ");
        System.out.println("Code Structure:" + code_section);

        Section  sections= sectionService.getSectionByCodeSection(code_section);
        if(sections==null)
            return "101";
        System.out.println("------------------------");
        System.out.println("------------------------");
        System.out.println("Suppression de la structure "+sections.getCodeSection());

        String result=sectionService.removeSection(sections);
        if(result !=null){
            System.out.println("Section Removed "+result);
            return "100";
        }
        else
            return "101";

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
            value = {"/nomenclatures_chapitres_list.json"},
            method = {RequestMethod.GET}
    )
    public List<Chapitre> getChapitresList() {
        List<Chapitre> lst = chapitresService.getAllChapitres();
        return lst;
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
                                    @RequestParam("designation_section") String designationSection,
                                    @RequestParam("code_structure") String code_structure ) {



        List<Structure> structures=service.getStructureByCodeStructure(code_structure);
        if(structures.size()==0)
            return "80904";
        Structure structure=structures.get(0);



        Section section = new Section(codeSection, designationSection);
        section.setStructure(structure);

        ///Ici je vais retouné 100 (message Ok) dans la cas ou la section est crée
        /// On peut faire du traitment sur les paramètre par exmple ...
        if (this.sectionService.creerSection(section) != null)
            return "100";
        else
            return "801"; /// si le retour est null (section n'est pas crée)

    }


    @RequestMapping(
            value = {"/nomenclatures_structure_remove"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postRemoveStructure(@RequestParam("code_structure") String code_structure ) {

        System.out.println("Utilisateur Remove : ");
        System.out.println("Code Structure:" + code_structure);

        List<Structure>  structures= service.getStructureByCodeStructure(code_structure);
        if(structures.size()==0)
            return "102";
        Structure structure=structures.get(0);
        System.out.println("------------------------");
        System.out.println("------------------------");
        System.out.println("------------------------");
        System.out.println("Suppression de la structure "+structure.getCodeStructure());

        String result=service.removeStrcuture(structure);
        if(result !=null){
            System.out.println("Utilisateur Removed "+result);
            return "100";
        }
        else
            return "101";

    }





    @RequestMapping(
            value = {"/nomenclatures_budgetaires"},
            method = {RequestMethod.GET}
    )
    public String getComptesBudgetaires(Model model) {
        List<CompteBudgetaire> list = this.service.getAllComptesBudgetaires();
        for(int i=0;i<list.size();i++)
            System.out.println("CompteBudget--> "+list.get(i).getLibelleCompte());
        System.out.println("----->Comptes Budgetaires");
        if(list==null)
            list=new ArrayList<CompteBudgetaire>();
        model.addAttribute("listComptesBudgetaires", list);
        return "comptes_budgetaires";
    }



    @RequestMapping(
            value = {"/nomenclatures_budget_edit"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postNomenclatureEdit(Model model) {
        return "100";
    }





    @RequestMapping(
            value = {"/nomenclatures_budgetaires_create"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postCreatecptBudgetaire(@RequestParam("numero_compte") String numCompte,
                                          @RequestParam("designation_compte") String designationCompte,
                                          @RequestParam("type_compte") String typeCompte,
                                          @RequestParam("code_rubrique") String codeRubrique,
                                          @RequestParam("numero_classe") String numClasse

    ) {

        if(service.getCompteBudgetaireByNumeroCompte(numCompte).size()>0)
            return "702";


        List<Rubrique> rubriques=rubriqueService.getRubriqueByCodeRubrique(codeRubrique);
        if(rubriques.size() ==0 )
            return "70804";
        Rubrique rubrique=rubriques.get(0);

        List<CompteComptable> compteComptables=service.getNomenclatureComptableByNumeroNomenclature(numClasse);
        if(compteComptables.size()==0)
            return "70604";
        CompteComptable compteComptable=compteComptables.get(0);

        CompteBudgetaire budgetaire=new CompteBudgetaire(designationCompte,numCompte,rubrique,compteComptable,typeCompte);
        if(service.creerCompteBudgetaire(budgetaire)!=null)
            return "100";
        else
            return  "701";



    }
















}
