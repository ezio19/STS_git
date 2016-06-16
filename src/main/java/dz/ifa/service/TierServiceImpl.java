package dz.ifa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dz.ifa.model.Tier;
import dz.ifa.repository.TierRepository;

@Service("tierService")
public class TierServiceImpl implements TierService{
	@Autowired 
	TierRepository tierRepository;
	
	public List<Tier> getAllTiers() {
		// TODO Auto-generated method stub
		return tierRepository.findAll();
	}
}
