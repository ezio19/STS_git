package dz.ifa.model;



import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.TableGenerator;




	@Entity
	@Table(name="intermediaire")

	public class Intermediaire {


		
		
		@Id
		@Column(name="ID")
		private int id;
		
		@Column(name="ID_DEMANDE")
		private String id_demande;
		
		@Column(name="ID_RUBRIQUE")
		private String id_rubrique;
		
		@Column(name="ID_STRUCTURE")
		private String id_structure;

		@Column(name="MONTANTINSUFF")
		private float  montantinsuff;
		
		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getId_demande() {
			return id_demande;
		}

		public void setId_demande(String id_demande) {
			this.id_demande = id_demande;
		}

		public String getId_rubrique() {
			return id_rubrique;
		}

		public void setId_rubrique(String id_rubrique) {
			this.id_rubrique = id_rubrique;
		}

		public String getId_structure() {
			return id_structure;
		}

		public void setId_structure(String id_structure) {
			this.id_structure = id_structure;
		}

		public float getMontantinsuff() {
			return montantinsuff;
		}

		public void setMontantinsuff(float montantinsuff) {
			this.montantinsuff = montantinsuff;
		}

		public float getMontantdem() {
			return montantdem;
		}

		public void setMontantdem(float montantdem) {
			this.montantdem = montantdem;
		}

		@Column(name="MONTANTDEM")
		private float  montantdem;
		
		

}
