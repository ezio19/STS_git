package dz.ifa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.TableGenerator;
import javax.validation.constraints.NotNull;

@Entity
@Table (name="ligneGuide")
public class LigneGuide {
		
		@TableGenerator(name="ligneGen", allocationSize=1)
		
		@Id
		@GeneratedValue(strategy=GenerationType.TABLE, generator="ligneGen")
		@Column(name="LIGNE_ID")
		private Long id;
		@NotNull
		private String cpt;
		
		public String getCpt() {
			return cpt;
		}
		public void setCpt(String cpt) {
			this.cpt = cpt;
		}
		@NotNull	
		private String rolecpt;
		@NotNull
		private float pourcentage;
		
		@ManyToOne
		private Guide guide;
		
		public Guide getGuide() {
			return guide;
		}
		public void setGuide(Guide guide) {
			this.guide = guide;
		}
		
		
		
		public Long getId() {
			return id;
		}
		public void setId(Long id) {
			this.id = id;
		}
	
		public String getRolecpt() {
			return rolecpt;
		}
		public void setRolecpt(String rolecpt) {
			this.rolecpt = rolecpt;
		}
		public float getPourcentage() {
			return pourcentage;
		}
		public void setPourcentage(float pourcentage) {
			this.pourcentage = pourcentage;
		}
		
		
}
