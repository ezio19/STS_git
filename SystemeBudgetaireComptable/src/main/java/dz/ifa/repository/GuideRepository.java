package dz.ifa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import dz.ifa.model.Exercise;
import dz.ifa.model.Goal;
import dz.ifa.model.GoalReport;
import dz.ifa.model.Guide;
import dz.ifa.model.TypeFacture;

@Repository("guideRepository")

public interface GuideRepository extends JpaRepository<Guide, Long> {
//	@Query("Select g from Guide g, LigneGuide l where g.id = l.guide.id")
	@Query("Select g from Guide g")
	List<Guide> findAllGuides();
	
	
	
	
	@Query("select g from Guide g where g.id = ?#{[0]}")
	Guide findGuidebyId(long id);
	
	@Query("select g from Goal g where g.minutes = :#{#goal.minutes}")
	List<Goal> findGoalsByGoalMinutes(@Param("goal") Goal goal);
	

	
	@Query("delete From Guide where GUIDE_ID=?#{[0]}")
	void supprimerGuide(long id);


	@Query("select g from Guide g where g.nom_guide LIKE %:#{#nameSearch}%")
	Guide findGuideByName(@Param("nameSearch")String name);





}
