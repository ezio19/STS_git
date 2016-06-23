package dz.ifa.controller.nomenclatures;

import dz.ifa.model.commun.Structure;
import dz.ifa.service.nomenclatures.NomenclatureService;
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
public class StructuresController {


    @Autowired
    private NomenclatureService service;




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



    @RequestMapping(value = "/nomenclatures_get_structure", method = RequestMethod.GET)
    public String getStructure(@RequestParam("code_structure") String code_structure, Model model) {
        List<Structure> structures=service.getStructureByCodeStructure(code_structure);
        if(structures.size()==0){
            System.out.println("compte inexistant");
            return "404";
        }
        System.out.println("Structure Existe   "+structures.get(0).getCodeStructure());
    Structure structure=structures.get(0);
        model.addAttribute("structure", structure);
        return "structures/structure_detail";
    }


    @RequestMapping(
            value = {"/nomenclatures_strcuture_edit"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postEditStructure(@RequestParam("nom_structure") String nom_structure,
                                      @RequestParam("address_strcuture") String address_strcuture,
                                      @RequestParam("code_strcuture") String code_strcuture
    ) {

        System.out.println("Mapping Strcuture Creation ");
        System.out.println("nom_structure :" + nom_structure);
        System.out.println("address_strcuture : " + address_strcuture);
        System.out.println("code_strcuture : " + code_strcuture);

        List<Structure> structures=service.getStructureByCodeStructure(code_strcuture);
        if (structures.size() == 0) {
            System.out.println("Strcuture not Exist");
            return "103";
        }
        Structure structure=structures.get(0);
        structure.setAdresse(address_strcuture);
        //structure.setCodeStructure(code_strcuture);
        structure.setNom(nom_structure);
        if(service.creerStructure(structure)!=null)
            return "100";
        else return "101";

    }





    @RequestMapping(
            value = {"/nomenclatures_structure_remove"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postRemoveStructure(@RequestParam("code_structure") String code_structure ) {

        System.out.println("Utilisateur Remove : ");
        System.out.println("Code Structure:" + code_structure);

        List<Structure> structures= service.getStructureByCodeStructure(code_structure);
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
            value = {"/nomenclatures_structures_list.json"},
            method = {RequestMethod.GET}
    )
    public List<Structure> getStructureList() {
        List<Structure> lst = service.getAllStructures();
        return lst;
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



}
