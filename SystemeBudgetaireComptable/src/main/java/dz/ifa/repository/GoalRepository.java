package dz.ifa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import dz.ifa.model.Goal;
import dz.ifa.model.GoalReport;


@Repository("goalRepository")
public interface GoalRepository extends JpaRepository<Goal, Long>{
	
//	Goal save(Goal goal);
//	List<Goal> loadAll();
	@Query("Select new dz.ifa.model.GoalReport(g.minutes, e.minutes, e.activity) "+
			"from Goal g, Exercise e where g.id = e.goal.id")
	List<GoalReport> findAllGoalReports();
	
	@Query("select g from Goal g where g.minutes = ?#{[0]}")
	List<Goal> findGoalsByMinutes(int minutes);
	
	@Query("select g from Goal g where g.minutes = :#{#goal.minutes}")
	List<Goal> findGoalsByGoalMinutes(@Param("goal") Goal goal);
}
