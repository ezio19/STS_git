package dz.ifa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dz.ifa.model.Goal;
import dz.ifa.model.GoalReport;
import dz.ifa.repository.GoalRepository;


@Service("goalService")

public class GoalServiceImpl implements GoalService{
	
	@Autowired
	private GoalRepository goalRepository;
	
	@Transactional
	public Goal save(Goal goal) {
		return goalRepository.save(goal);
	}

	public List<Goal> loadAll() {
		return goalRepository.findAll();
	}

	public List<GoalReport> findAllGoalReports() {
		return goalRepository.findAllGoalReports();
	}

	public List<Goal> findGoalsByMinutes(int minutes) {
		return goalRepository.findGoalsByMinutes(minutes);
	}

	public List<Goal> findGoalsByGoalMinutes(Goal goal) {
		return goalRepository.findGoalsByGoalMinutes(goal);
	}

}
