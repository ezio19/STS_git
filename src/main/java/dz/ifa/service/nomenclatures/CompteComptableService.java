package dz.ifa.service.nomenclatures;

import java.util.List;

import dz.ifa.model.nomenclature.CompteComptable;

/**
 * AMGHAR Nawel
 * @author User
 *
 */

public interface CompteComptableService {
	
	 public CompteComptable creerCompteComptable(CompteComptable comptable) ;
	 
	
	 
	 public CompteComptable DeleteCompteComptableByDesignation(String Designation);
	 
	 public List<CompteComptable> getAllComptesCompatbles();
	 
	 public List<CompteComptable> getCompteComptableBy(String designation);

	  public CompteComptable modifierCompteComptable(CompteComptable comptable);


}
