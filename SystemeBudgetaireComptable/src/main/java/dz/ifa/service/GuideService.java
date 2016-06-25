package dz.ifa.service;

import java.util.List;

import org.springframework.data.repository.query.Param;

import dz.ifa.model.Goal;
import dz.ifa.model.GoalReport;
import dz.ifa.model.Guide;
import dz.ifa.model.TypeFacture;

public interface GuideService {
	Guide save(Guide guide);

	List<Guide> loadAll();

	List<Guide> findAllGuides();
	
	Guide findGuidebyId (long id);

	 void deleteGuide(Guide guide);	
	 void deleteGuideById(Long id);
	 Guide fingGuideByName(String name);
	
	

}
