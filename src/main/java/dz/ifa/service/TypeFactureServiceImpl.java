package dz.ifa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dz.ifa.model.TypeFacture;
import dz.ifa.repository.GuideRepository;
import dz.ifa.repository.TypeFactureRepository;

@Service("typeFactureService")

public class TypeFactureServiceImpl implements TypeFactureService{
	
	@Autowired
	private TypeFactureRepository typeFactureRepository;
	
	public List<TypeFacture> findAllTypeFacture() {
		// TODO Auto-generated method stub
		return typeFactureRepository.findAllTypeFacture();
	}


	@Transactional
	public TypeFacture save(TypeFacture type) {
		// TODO Auto-generated method stub
		return typeFactureRepository.save(type);
	}
	
	
}
