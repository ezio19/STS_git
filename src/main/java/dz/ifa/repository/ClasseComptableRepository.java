package dz.ifa.repository;


import dz.ifa.model.nomenclature.Section;
import dz.ifa.model.nomenclature.classe_comptable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;



@Repository
public interface ClasseComptableRepository extends JpaRepository<classe_comptable,Integer> {

	/**___________________________ safa salima _____________________________ **/

/*

/*
    @Query("SELECT p FROM Person p WHERE LOWER(p.lastName) = LOWER(:lastName)")
    public List<Person> find(@Param("lastName") String lastName);
*/

/*

	@Query("select class from classe_comptable class where class.numClasse=?#{[0]}")
	classe_comptable findclassbyCode(Integer numClasse);
	
	
	@Query("select class from classe_comptable class where class.designation=?#{[0]}")
	classe_comptable findclassbyNom(String designation);
	
	//findclassbycode
	
	@Query("select class from classe_comptable class where class.numClasse=?#{[0]}")
	classe_comptable findclassbycode(Integer numClasse);
	*/
	
	
	
	
	
}
