package dz.ifa.service.nomenclatures;

import dz.ifa.model.commun.Structure;
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
    private StructureRepository structureRepository;
    @Autowired
    private NomenclatureComptableRepository nomenclatureComptableRepository;
    @Autowired
    private CompteBudgetaireRepository compteBudgetaireRepository;


    public CompteComptable creerCompteComptable(CompteComptable comptable) {
        return nomenclatureComptableRepository.save(comptable);

    }

    public List<CompteComptable> getAllNomenclaturesComptables(){
        return nomenclatureComptableRepository.findAll();
    }

    public List<CompteComptable> getNomenclatureComptableByNumeroNomenclature(String num_nomenclature){
        return nomenclatureComptableRepository.getNomenclatureComptableByNumeroNomenclature(num_nomenclature);
    }

    public List<CompteBudgetaire> getAllComptesBudgetaires() {
        return compteBudgetaireRepository.findAll() ;
    }

    public List<CompteBudgetaire> getCompteBudgetaireByNumeroCompte(String num_nomenclature) {
        return compteBudgetaireRepository.getCompteBudgetaireByNumeroCompte(num_nomenclature);
    }

    @Override
    public CompteBudgetaire creerCompteBudgetaire(CompteBudgetaire compteBudgetaire) {
        return this.compteBudgetaireRepository.save(compteBudgetaire);
    }

    @Override
    public List<Structure> getAllStructures() {
        return structureRepository.findAll();
    }

    @Override
    public Structure creerStructure(Structure structure) {
        return structureRepository.save(structure);
    }

    @Override
    public List<Structure> getStructureByCodeStructure(String code_structure) {
        return structureRepository.getStructureByCodeStructure(code_structure);
    }


    public CompteComptable modifierCompteComptable(CompteComptable comptable) {
        CompteComptable compte = nomenclatureComptableRepository.findOne(comptable.getNumCompte());
        compte.setLibelleCompte(comptable.getLibelleCompte());
        compte.setNumCompte(comptable.getNumCompte());
        return nomenclatureComptableRepository.save(compte);
    }


    @Autowired
    private TestingRepository testingRepository;

    public Testing creerTesting(Testing testing) {
        return testingRepository.save(testing);
    }

    public List<Testing> getAllTest() {
        return testingRepository.findAll();
    }





}
