package dz.ifa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.TableGenerator;

@Entity
@Table(name="typeFacture")
public class TypeFacture {
	@TableGenerator(name="typeGen", allocationSize=1)

	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="typeGen")
	@Column(name="TYPE_ID")
	private Long id;	
	
	private	String name;

		
		
		public TypeFacture() {
			super();
		}

		public TypeFacture(String name) {
			super();
			this.name = name;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}
		
		
		
}
