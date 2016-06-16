package dz.ifa.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.TableGenerator;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Range;

@Entity
public class Exercise {
	
	@TableGenerator(name="exerciseGen", allocationSize=1)
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="exerciseGen")
	private Long id;
	
	
	@Range(min = 1, max = 120)
	private int minutes;

	@NotNull
	private String activity;
	
	@ManyToOne
	private Goal goal;

	public String getActivity() {
		return activity;
	}

	public Goal getGoal() {
		return goal;
	}

	public Long getId() {
		return id;
	}
	
	public int getMinutes() {
		return minutes;
	}

	public void setActivity(String activity) {
		this.activity = activity;
	}

	public void setGoal(Goal goal) {
		this.goal = goal;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setMinutes(int minutes) {
		this.minutes = minutes;
	}
	
}
