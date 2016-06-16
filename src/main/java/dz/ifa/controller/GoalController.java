package dz.ifa.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import dz.ifa.model.Goal;
import dz.ifa.model.GoalReport;
import dz.ifa.service.GoalService;


@Controller
@SessionAttributes("goal")
public class GoalController {
	
	@Autowired
	private GoalService goalService;
	
	@RequestMapping(value = "addGoal", method = RequestMethod.GET)
	public String addGoal(Model model, HttpSession session) {
		//Goal goal = new Goal();
		
		Goal goal = (Goal) session.getAttribute("goal");
		
		if(goal == null){
			goal = new Goal();
			goal.setMinutes(10);
		}
		
		model.addAttribute("goal", goal);
		
		return "addGoal";
	}
	@PreAuthorize("hasRole('ROLE_ADMIN') and hasPermission(#goal, 'createGoal')")
	@RequestMapping(value = "addGoal", method = RequestMethod.POST)
	public String updateGoal(@Valid @ModelAttribute("goal") Goal goal, BindingResult result) {
		
		System.out.println("result has errors: " + result.hasErrors());
		
		System.out.println("Goal set: " + goal.getMinutes());
		
		if(result.hasErrors()) {
			return "addGoal";
		}else{
			goalService.save(goal);
		}
		
		return "redirect:index.jsp";
	}
	
	@RequestMapping(value = "getGoals", method = RequestMethod.GET)
	public String getGoals(Model model){
		List<Goal> goals = goalService.loadAll();
		model.addAttribute("goals", goals);
		
		return "getGoals";
	}
	
	@RequestMapping(value = "getGoalReports", method = RequestMethod.GET)
	public String getGoalReports(Model model, HttpSession session){
		// requettes avec join
		List<GoalReport> goalReports = goalService.findAllGoalReports();
		
		model.addAttribute("goalReports", goalReports);
		// la requette avec un parametre
		List<Goal> goals = goalService.findGoalsByMinutes(120);
		model.addAttribute("goals", goals);
		
		// la requette avec un objet comme parametre
		List<Goal> goals2 = goalService.findGoalsByGoalMinutes((Goal)session.getAttribute("goal"));
		model.addAttribute("goals2", goals2);
		
		return "getGoalReports";
	}
}
