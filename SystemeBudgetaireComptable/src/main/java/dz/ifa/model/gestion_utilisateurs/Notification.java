package dz.ifa.model.gestion_utilisateurs;


import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
public class Notification {

	@TableGenerator(name = "notificationGen", allocationSize = 1)
	@Id
	@GeneratedValue(strategy = GenerationType.TABLE, generator = "notificationGen")
	private Integer idNotification;

	@Column
	private String contenu;
	@Column
	private Date date;

	@OneToOne
	private Utilisateur source;







}