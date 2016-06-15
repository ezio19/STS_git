package dz.ifa.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import dz.ifa.model.Activity;
import dz.ifa.model.Criteria;
import dz.ifa.model.Exercise;
import dz.ifa.repository.ExerciseRepository;



@Service("exerciseService")
public class ExerciseServiceImpl implements ExerciseService {
	
	@Autowired
	private ExerciseRepository exerciseRepository;
	
	public List<Activity> findAllActivities() {
		
		List<Activity> activities = new ArrayList<Activity>();
		
		Activity run = new Activity();
		run.setDesc("Run");
		activities.add(run);
		
		Activity bike = new Activity();
		bike.setDesc("Bike");
		activities.add(bike);
		
		Activity swim = new Activity();
		swim.setDesc("Swim");
		activities.add(swim);
		
		return activities;
	}
	
	@Transactional
	public Exercise save(Exercise exercise) {
		
		exerciseRepository.save(exercise);
		return exercise;
	}

	public List<Activity> findActivitiesByCriteria(Criteria criteria) {
		
		List<Activity> activities = new ArrayList<Activity>();
		
		Activity act1 = new Activity();
		act1.setDesc(criteria.getName()+"Bla1");
		activities.add(act1);
		
		Activity act2 = new Activity();
		act2.setDesc(criteria.getName()+"Bla1");
		activities.add(act2);
		
		return activities;
	}

}
