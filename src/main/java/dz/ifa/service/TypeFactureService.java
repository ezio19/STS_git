package dz.ifa.service;

import java.util.List;

import dz.ifa.model.TypeFacture;

public interface TypeFactureService {
	
	List<TypeFacture> findAllTypeFacture();
	
	TypeFacture save(TypeFacture type);
}
