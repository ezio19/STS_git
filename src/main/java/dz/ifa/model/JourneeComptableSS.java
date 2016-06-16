package dz.ifa.model;

public class JourneeComptableSS {
	public static JourneeComptable getJourneeComptable (){
		AnneeComptable annee = new AnneeComptable();
		annee.setAnnee(2016);
		PeriodeComptable periodeCom = new PeriodeComptable();
		periodeCom.setAnneeComptable(annee);
		JourneeComptable journeeComptable = new  JourneeComptable();
		journeeComptable.setPeriodeComptable(periodeCom);
		journeeComptable.setEtatJournee(JourneeComptable.ACTIVE);
		journeeComptable.setJour(12);
	
		return journeeComptable;
	}

}
