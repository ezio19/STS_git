package dz.ifa.service.nomenclatures;

import dz.ifa.model.nomenclature.*;
import dz.ifa.repository.TestingRepository;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by Yazid on 07/05/2016.
 */
public interface NomenclatureService {

    public List<CompteComptable> getAllComptesCompatbles();

    public CompteComptable modifierCompteComptable(CompteComptable comptable);


    public CompteComptable creerCompteComptable(CompteComptable comptable) ;

    public classe_comptable creerClasseComptable(classe_comptable comptable);


    public classe_comptable modifierClasse(classe_comptable comptable);




    public Rubrique modifierRubrique(Rubrique rubrique);






    public boolean isExistRubrique(String id);


    public Rubrique creerRubrique(Rubrique rubrique);




    public Rubrique getRubrique(String id);


    public classe_comptable getClasse(Integer id);






    public Testing creerTesting(Testing testing);
    public List<Testing> getAllTest();








}
