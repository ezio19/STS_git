package dz.ifa.controller.nomenclatures;

import dz.ifa.model.commun.Structure;
import dz.ifa.model.nomenclature.Section;
import dz.ifa.service.nomenclatures.NomenclatureService;
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
public class SectionsController {


    @Autowired
    private SectionService sectionService;
    @Autowired
    private NomenclatureService service;


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
                                    @RequestParam("code_structure") String code_structure) {


        List<Structure> structures = service.getStructureByCodeStructure(code_structure);
        if (structures.size() == 0)
            return "80904";

        List<Section> sections=sectionService.getListSectionByCodeSection(codeSection);//  getSectionByCodeSection(codeSection);
        if(sections.size()>0)
            return "103";

        Structure structure = structures.get(0);


        Section section = new Section(codeSection, designationSection);
        section.setStructure(structure);

        ///Ici je vais retouné 100 (message Ok) dans la cas ou la section est crée
        /// On peut faire du traitment sur les paramètre par exmple ...
        if (this.sectionService.creerSection(section) != null)
            return "100";
        else
            return "801"; /// si le retour est null (section n'est pas crée)

    }




    ////Sections
    @RequestMapping(
            value = {"/nomenclatures_section_edit"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postEditSection(@RequestParam("code_section") String codeSection,
                                    @RequestParam("designation_section") String designationSection,
                                    @RequestParam("code_structure") String code_structure) {

        System.out.println("Edit Section");
        System.out.println("Code Section :: "+codeSection);
        System.out.println("Code Section :: "+codeSection);

        //List<Section> sections = sectionService.getListSectionByCodeSection(codeSection);
        Section section=sectionService.getSectionByCodeSection(codeSection);
        /*if (sections.size()==0)
            return "101";*/

        if(section==null){
            System.out.println("Section Not Found");
            return "101";
        }

        List<Structure> structures=service.getStructureByCodeStructure(code_structure);
        if(structures.size()==0)
            return "102";



        //Section section=sections.get(0);
        section.setDesignation(designationSection);
        section.setStructure(structures.get(0));

        ///Ici je vais retouné 100 (message Ok) dans la cas ou la section est crée
        /// On peut faire du traitment sur les paramètre par exmple ...
        if (this.sectionService.creerSection(section) != null)
            return "100";
        else
            return "801"; /// si le retour est null (section n'est pas crée)

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
    public String postRemoveSection(@RequestParam("code_section") String code_section) {

        System.out.println("Section Remove : ");
        System.out.println("Code Structure:" + code_section);

        Section sections = sectionService.getSectionByCodeSection(code_section);
        if (sections == null)
            return "101";
        System.out.println("------------------------");
        System.out.println("------------------------");
        System.out.println("Suppression de la structure " + sections.getCodeSection());

        String result = sectionService.removeSection(sections);
        if (result != null) {
            System.out.println("Section Removed " + result);
            return "100";
        } else
            return "101";

    }



    @RequestMapping(value = "/nommenclatures_get_section.html", method = RequestMethod.GET)
    public String getSection(@RequestParam("code_section") String code_section, Model model) {
        //List<Utilisateur> utilisateurs=gestionUtilisateursService.getUtilisateurByIdUtilisateur(id_utilisateur);
        Section section=sectionService.getSectionByCodeSection(code_section);
        if(section ==null){
            System.out.println("Section inexistante");
            return "404";
        }
        System.out.println("Compte Existe   "+section.getCodeSection());
        model.addAttribute("section", section);
        return "sections/section_detail";
    }















}
