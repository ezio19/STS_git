package dz.ifa.repository;

import dz.ifa.model.commun.Structure;
import dz.ifa.model.gestion_utilisateurs.Tache;
import dz.ifa.model.nomenclature.Chapitre;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Yazid on 18/06/2016.
 */
@Repository
public interface StructureRepository extends JpaRepository<Structure,String> {
    Structure save(Structure structure);

    @Query("SELECT c FROM Structure c WHERE LOWER(c.codeStructure) = LOWER(:codeStructure)")
    public List<Structure> getStructureByCodeStructure(@Param("codeStructure") String codeStructure);
}
