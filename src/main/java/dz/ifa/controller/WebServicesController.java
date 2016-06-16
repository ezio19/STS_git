package dz.ifa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import dz.ifa.model.Activity;
import dz.ifa.model.Criteria;
import dz.ifa.service.ExerciseService;

@RestController
public class WebServicesController {

	@Autowired
	private ExerciseService exerciseService;

	@RequestMapping(value = "/activities", method = RequestMethod.GET)
	public List<Activity> findAllActivities() {
		return exerciseService.findAllActivities();
	}

	@RequestMapping(value = "/searchActivities", method = RequestMethod.POST)
	public List<Activity> findActivitiesByCreteria(@RequestBody Criteria criteria) {
		return exerciseService.findActivitiesByCriteria(criteria);
	}
}
