package dz.ifa.service.nomenclatures;

import dz.ifa.model.nomenclature.Section;
import dz.ifa.repository.SectionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Yazid on 02/06/2016.
 */
@Service("SectionService")
public class SectionServiceImpl implements SectionService{


    @Autowired
    private SectionRepository sectionRepository;


    public boolean isExistSection(String idSection){
        return (sectionRepository.findOne(idSection)!=null);
    }





    public Section creerSection(Section section){
        return  sectionRepository.save(section);
    }
    public Section getSection(String id){
        return sectionRepository.findOne(id);
    }

    public Section getSectionByCodeSection(String code_section) {
        return sectionRepository.getSectionByCodeSection(code_section).get(0);
    }

    public List<Section> getAllSections() {
        return this.sectionRepository.findAllSection();
    }

}
