package dz.ifa.service.nomenclatures;

import dz.ifa.model.nomenclature.Section;

import java.util.List;

/**
 * Created by Yazid on 02/06/2016.
 */
public interface SectionService {

    public boolean isExistSection(String idSection);

    public Section creerSection(Section section);

    public Section getSection(String id);
    public Section getSectionByCodeSection(String code_section);

    public List<Section> getAllSections();

}
