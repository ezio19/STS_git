package dz.ifa.service.nomenclatures;

import dz.ifa.model.nomenclature.Rubrique;
import dz.ifa.repository.RubriqueRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Yazid on 17/06/2016.
 */
@Service("RubriqueService")
public class RubriqueServiceImpl implements RubriqueService{

    @Autowired
    private RubriqueRepository rubriqueRepository;



    public Rubrique getRubrique(String id){
        return rubriqueRepository.findOne(id);
    }

    public List<Rubrique> getAllRubriques() {
        return rubriqueRepository.findAll();
    }


    public List<Rubrique> getRubriqueByCodeRubrique(String code_rubrique) {
        return rubriqueRepository.getRubriqueByCodeRubrique(code_rubrique);
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

}
