
package dz.ifa.controller;

import dz.ifa.model.Compte;
import dz.ifa.model.commun.Structure;
import dz.ifa.model.gestion_utilisateurs.Utilisateur;
import dz.ifa.model.nomenclature.*;
import dz.ifa.repository.CompteRepository;
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

    @Autowired
    CompteRepository compteRepository;

    public NomenclaturesBudgetairesController() {
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
        else return "101";

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
        try{if(typeCompte.toLowerCase().compareTo("analytique")==0) {
            Compte compte = new Compte();
            compte.setNumcpt(numCompte);
            compte.setDesignation(designationCompte);
            compteRepository.save(compte);}}catch(Exception e){}
        CompteBudgetaire budgetaire=new CompteBudgetaire(designationCompte,numCompte,rubrique,compteComptable,typeCompte);
        if(service.creerCompteBudgetaire(budgetaire)!=null)
            return "100";
        else
            return  "701";



    }



    @RequestMapping(value = "/nommenclatures_get_compte_budgetaire", method = RequestMethod.GET)
    public String getCompteBudgetaire(@RequestParam("numero_compte") String numero_compte, Model model) {

        List<CompteBudgetaire>  compteBudgetaires=service.getCompteBudgetaireByNumeroCompte(numero_compte);

        if(compteBudgetaires.size() ==0){
            System.out.println("compte inexistant");
            return "404";
        }
        System.out.println("compte budgetaire Existe   "+compteBudgetaires.get(0).getNumCompte());
        model.addAttribute("compte", compteBudgetaires.get(0));
        return "comptes_budgetaires/compte_budgetaire_detail";
    }



    @RequestMapping(
            value = {"/nomenclatures_comptes_budgetaires_remove"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postRemoveSection(@RequestParam("num_compte") String num_compte ) {

        System.out.println("Section Remove : ");
        System.out.println("Code Structure:" + num_compte);

        List<CompteBudgetaire> compteBudgetaires=service.getCompteBudgetaireByNumeroCompte(num_compte);
        if(compteBudgetaires.size()==0)
            return "101";
        System.out.println("------------------------");
        System.out.println("------------------------");
        System.out.println("Suppression du Compte "+compteBudgetaires.get(0).getNumCompte());

        String result=service.removeCompteBudgetaire(compteBudgetaires.get(0));
        if(result !=null){
            System.out.println("Section Removed "+result);
            return "100";
        }
        else
            return "101";

    }















}
