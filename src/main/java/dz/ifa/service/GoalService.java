package dz.ifa.service;

import java.util.List;

import org.springframework.data.repository.query.Param;

import dz.ifa.model.Goal;
import dz.ifa.model.GoalReport;


public interface GoalService {
	Goal save(Goal goal);

	List<Goal> loadAll();

	List<GoalReport> findAllGoalReports();
	
	List<Goal> findGoalsByMinutes(int minutes);
	
	List<Goal> findGoalsByGoalMinutes(@Param("goal") Goal goal);
}
