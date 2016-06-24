package dz.ifa.repository;

import dz.ifa.model.nomenclature.CompteComptable;
import dz.ifa.model.nomenclature.Rubrique;
import dz.ifa.model.nomenclature.Section;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SectionRepository extends JpaRepository<Section,String> {
	//Section save(Section sect);

	/*
	@Query("Select new dz.ifa.model.nomenclature.Section(sect.codeSection,sect.designation,sect.chapitres,sect.compteComptables,sect.compteBudgetaires) "+
			"from Section sect where (1=1) ")
	List<Section> findAllSection();
*/


	@Query("Select sec from Section sec ")
	List<Section> findAllSection();


	@Query("SELECT s FROM Section s WHERE s.codeSection = (:code_section)")
	public List<Section> getSectionByCodeSection(@Param("code_section") String code_section);

/*
	@Query("select sec from Section sec where sec.codeSection=?#{code}")
	List<Section> findSectionByCode(@Param("code_section") String codeSection);
*/



	/**___________________________ safa salima _____________________________ **/
/*
	@Query("select sec from Section sec where sec.codeSection=?#{[0]}")
	List<Section> findSectionByCode(String codeSection);

	// findsectionByCode

	@Query("select sec from Section sec where sec.codeSection=?#{[0]}")
	Section findsectionByCode(String codeSection );

*/





}
