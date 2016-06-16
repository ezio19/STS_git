package dz.ifa.service.nomenclatures;

import dz.ifa.model.nomenclature.*;
import dz.ifa.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Yazid on 07/05/2016.
 */

@Service("NomenclatureService")
public class NomenclatureServiceImpl implements NomenclatureService {

    @Autowired
    private CompteComptableRepository compteComptableRepository;


    @Autowired
    private RubriqueRepository rubriqueRepository;

    @Autowired
    private ClasseComptableRepository classeComptableRepository;







    public CompteComptable creerCompteComptable(CompteComptable comptable) {
        return compteComptableRepository.save(comptable);
    }

    public classe_comptable creerClasseComptable(classe_comptable comptable) {
        return classeComptableRepository.save(comptable);
    }

    public List<CompteComptable> getAllComptesCompatbles() {
        return compteComptableRepository.findAll();
    }


    public classe_comptable modifierClasse(classe_comptable comptable) {
        classe_comptable cls=classeComptableRepository.findOne(comptable.getNumClasse());
        cls.setCompteComptables(comptable.getCompteComptables());
        cls.setDesignation(comptable.getDesignation());
        cls.setCompteBudgetaires(comptable.getCompteBudgetaires());
        return classeComptableRepository.save(cls);
    }


    //TODO last:modifierCompteComptable
    public CompteComptable modifierCompteComptable(CompteComptable comptable) {
        CompteComptable compte = compteComptableRepository.findOne(comptable.getId());
        compte.setLibelleCompte(comptable.getLibelleCompte());
        /*compte.setCompteClasse(comptable.getCompteClasse());
        compte.setDesignationCompte(comptable.getDesignationCompte());
        compte.setNumCompte(comptable.getNumCompte());
        compte.setSection(comptable.getSection());
        compte.setTypeCompte(comptable.getTypeCompte());*/
        return compteComptableRepository.save(compte);
    }



    public Rubrique modifierRubrique(Rubrique rubrique) {
        Rubrique rubrique1=rubriqueRepository.findOne(rubrique.getCodeRubrique());
        rubrique1.setChapitre(rubrique.getChapitre());
        rubrique1.setMontant(rubrique.getMontant());
        rubrique1.setDesignation(rubrique.getDesignation());

        return rubriqueRepository.save(rubrique1);
    }







    public boolean isExistRubrique(String id){
        return (rubriqueRepository.findOne(id)!=null);
    }

    public Rubrique creerRubrique(Rubrique rubrique){
        return rubriqueRepository.save(rubrique);
    }






    public Rubrique getRubrique(String id){
        return rubriqueRepository.findOne(id);
    }

    public classe_comptable getClasse(Integer id){
        return classeComptableRepository.findOne(id);

    }




    @Autowired
    private TestingRepository testingRepository;

    public Testing creerTesting(Testing testing) {
        return testingRepository.save(testing);
    }

    public List<Testing> getAllTest() {
        return testingRepository.findAll();
    }




    /**___________________________ safa salima _____________________________ **/

/*
    public boolean verifByCodeSec(String codeSection){

        return (sectionRepository.findSectionByCode(codeSection)!=null);
    }


    public Section secByCode(String codeSection){

        return (sectionRepository.findsectionByCode(codeSection));
    }

    public boolean verifByCodeRub(String codeRubrique){
        return (rubriqueRepository.findRubriqueByCodeRub(codeRubrique)!=null);
    }


    public boolean verifclass(Integer n_class,String nom_class){
        return (classeComptableRepository.findclassbyCode(n_class)!=null &&  classeComptableRepository.findclassbyNom(nom_class)!=null );

    }





    public classe_comptable classByCode(Integer numclass){



        return (classeComptableRepository.findclassbyCode(numclass));
    }

*/






}
