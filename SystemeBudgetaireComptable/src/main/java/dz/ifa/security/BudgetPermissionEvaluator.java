package dz.ifa.security;

import java.io.Serializable;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.access.PermissionEvaluator;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;

public class BudgetPermissionEvaluator implements PermissionEvaluator {
	
	private DataSource datasource;

	public DataSource getDatasource() {
		return datasource;
	}

	public void setDatasource(DataSource datasource) {
		this.datasource = datasource;
	}
	
	public BudgetPermissionEvaluator() {

	}
	
	public BudgetPermissionEvaluator(DataSource datasource) {
		this.datasource = datasource;
	}

	public boolean hasPermission(Authentication auth, Object targetDomainObject, Object permission) {

		JdbcTemplate template = new JdbcTemplate(datasource);
		
		Object [] args = {((User)auth.getPrincipal()).getUsername(), 
				targetDomainObject.getClass().getName(), 
				permission.toString()};

		int count = template.queryForObject("select count(*) from PERMISSION p where " +
				"p.ID_UTILISATEUR = ? and p.OBJET_CIBLE = ? and p.DESIGNATION = ?", args, Integer.class);
		
		if(count == 1) {
			return true;
		}
		else {
			return false;
		}
		
	}

	public boolean hasPermission(Authentication arg0, Serializable id,
			String type, Object permission) {
		System.out.println("Inside the not implemented has permission");
		return false;
	}

}
