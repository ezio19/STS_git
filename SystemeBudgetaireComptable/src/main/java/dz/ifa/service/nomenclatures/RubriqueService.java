package dz.ifa.service.nomenclatures;

import dz.ifa.model.nomenclature.Rubrique;

import java.util.List;

/**
 * Created by Yazid on 17/06/2016.
 */
public interface RubriqueService {

    public Rubrique modifierRubrique(Rubrique rubrique);
    public boolean isExistRubrique(String id);
    public Rubrique creerRubrique(Rubrique rubrique);
    public Rubrique getRubrique(String id);
    public List<Rubrique> getAllRubriques();
    public List<Rubrique> getRubriqueByCodeRubrique(String code_rubrique);


}
