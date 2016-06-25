package dz.ifa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dz.ifa.model.Goal;
import dz.ifa.model.GoalReport;
import dz.ifa.model.Guide;
import dz.ifa.repository.GoalRepository;
import dz.ifa.repository.GuideRepository;
import dz.ifa.repository.LigneGuideRepository;


@Service("guideService")
public class GuideServiceImpl implements GuideService{
	
	@Autowired
	private GuideRepository guideRepository;
	
	
	@Transactional
	public Guide save(Guide guide) {
		// TODO Auto-generated method stub
		return guideRepository.save(guide);
		
	}

	public List<Guide> loadAll() {
		return guideRepository.findAll();
	}

	
	public Guide findGuidebyId(long id) {
		// TODO Auto-generated method stub
		return guideRepository.findGuidebyId(id);
	}

	public List<Guide> findAllGuides() {
		// TODO Auto-generated method stub
		return guideRepository.findAllGuides();
	}


	public void deleteGuide(Guide guide)
	{
		guideRepository.delete(guide);
	}
   
	
	public void deleteGuideById(Long id)
	{
		guideRepository.delete(id);
	}

	/// service implim
	@Override
	public Guide fingGuideByName(String name) {
		// TODO Auto-generated method stub
		return guideRepository.findGuideByName(name);
	}
   
	


}
