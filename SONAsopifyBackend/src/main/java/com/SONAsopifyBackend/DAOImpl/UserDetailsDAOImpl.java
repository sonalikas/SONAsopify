package com.SONAsopifyBackend.DAOImpl;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.SONAsopifyBackend.DAO.UserDetailsDAO;
import com.SONAsopifyBackend.Model.UserDetails;
@Repository
public class UserDetailsDAOImpl implements UserDetailsDAO{
	@Autowired
	SessionFactory sessionfactory;
public UserDetailsDAOImpl(SessionFactory sessionFactory){
	this.sessionfactory=sessionFactory;
}
	@Transactional
	public boolean addUserDetails(UserDetails userDetails) {
		Session session=sessionfactory.getCurrentSession();
		session.save(userDetails);
		return true;
		}

}
 





