package dz.ifa.service.nomenclatures;

import dz.ifa.model.commun.Structure;
import dz.ifa.model.nomenclature.*;
import dz.ifa.repository.TestingRepository;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by Yazid on 07/05/2016.
 */
public interface NomenclatureService {


    public CompteComptable modifierCompteComptable(CompteComptable comptable);


    public CompteComptable creerCompteComptable(CompteComptable comptable) ;


    public List<CompteComptable> getAllNomenclaturesComptables();
    public List<CompteComptable> getNomenclatureComptableByNumeroNomenclature(String num_nomenclature);

    public List<CompteBudgetaire> getAllComptesBudgetaires();
    public List<CompteBudgetaire> getCompteBudgetaireByNumeroCompte(String num_nomenclature);


    public CompteBudgetaire creerCompteBudgetaire(CompteBudgetaire compteBudgetaire);


    public List<Structure> getAllStructures();
    public Structure creerStructure(Structure structure);
    public List<Structure> getStructureByCodeStructure(String code_structure);
    public String removeStrcuture(Structure structure);





    public String removeCompteComptable(CompteComptable compteComptable);
    public String removeCompteBudgetaire(CompteBudgetaire compteBudgetaire);





    public Testing creerTesting(Testing testing);
    public List<Testing> getAllTest();








}
