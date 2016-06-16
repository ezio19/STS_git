package dz.ifa.service.nomenclatures;

import dz.ifa.model.nomenclature.Chapitre;
import dz.ifa.repository.ChapitreRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Yazid on 02/06/2016.
 */
@Service("ChapitreService")
public class ChapitresServiceImpl implements ChapitresService {

    @Autowired
    private ChapitreRepository chapitreRepository;

    public Chapitre modifierChapitre(Chapitre chapitre) {
        Chapitre chapitre1=chapitreRepository.findOne(chapitre.getCodeChapitre());
        chapitre1.setRubriques(chapitre.getRubriques());
        chapitre1.setDesignation(chapitre.getDesignation());
        chapitre1.setSection(chapitre.getSection());
        return chapitreRepository.save(chapitre1);
    }

    public boolean isExistChapitre(String id){
        return (chapitreRepository.findOne(id)!=null);
    }

    public Chapitre creerChapitre(Chapitre chapitre){
        return chapitreRepository.save(chapitre);
    }

    public Chapitre getChapitre(String id){
        return chapitreRepository.findOne(id);
    }

    public List<Chapitre> getAllChapitres(){
        return chapitreRepository.findAll();
    }
}
