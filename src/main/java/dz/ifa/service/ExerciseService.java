package dz.ifa.service;

import java.util.List;


import dz.ifa.model.Activity;
import dz.ifa.model.Criteria;
import dz.ifa.model.Exercise;


public interface ExerciseService {

	List<Activity> findAllActivities();
	
	List<Activity> findActivitiesByCriteria(Criteria criteria);
	
	Exercise save(Exercise exercise);

}