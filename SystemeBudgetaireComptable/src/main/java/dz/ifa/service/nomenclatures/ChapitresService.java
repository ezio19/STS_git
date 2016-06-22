package dz.ifa.service.nomenclatures;

import dz.ifa.model.nomenclature.Chapitre;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Yazid on 02/06/2016.
 */


public interface ChapitresService {

    public Chapitre modifierChapitre(Chapitre chapitre);
    public boolean isExistChapitre(String id);
    public Chapitre creerChapitre(Chapitre chapitre);
    public Chapitre getChapitre(String id);

    List<Chapitre> getAllChapitres();

    List<Chapitre> getChapitreByCodeChapitre(String codeChapitre);
    public String removeChapitre(Chapitre chapitre);
}
