package dz.ifa.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dz.ifa.model.Exercise;
import dz.ifa.model.Goal;
import dz.ifa.service.ExerciseService;



@Controller
public class MinutesController {

	@Autowired
	private ExerciseService exerciseService;
	
	@RequestMapping(value = "/addMinutes",  method = RequestMethod.GET)
	public String getMinutes(@ModelAttribute ("exercise") Exercise exercise) {
	
		return "addMinutes";
	}
	
	@RequestMapping(value = "/addMinutes",  method = RequestMethod.POST)
	public String addMinutes(@Valid @ModelAttribute ("exercise") Exercise exercise, HttpSession session, BindingResult result) {
		
		System.out.println("exercise: " + exercise.getMinutes());
		System.out.println("exercise activity: " + exercise.getActivity());
		
		if(result.hasErrors()) {
			return "addMinutes";
		}else{
			Goal goal = (Goal) session.getAttribute("goal");
			exercise.setGoal(goal);
			exerciseService.save(exercise);
		}
		
		return "addMinutes";
	}
	
	
	
}
