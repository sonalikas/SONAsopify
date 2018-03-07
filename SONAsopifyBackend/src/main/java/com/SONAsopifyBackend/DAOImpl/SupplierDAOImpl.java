package com.SONAsopifyBackend.DAOImpl;



import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.SONAsopifyBackend.DAO.CategoryDAO;
import com.SONAsopifyBackend.DAO.SupplierDAO;
import com.SONAsopifyBackend.Model.Category;
import com.SONAsopifyBackend.Model.Supplier;

@Repository("supplierDAO")
public class SupplierDAOImpl implements SupplierDAO{
	@Autowired
	 SessionFactory sessionFactory;
	public SupplierDAOImpl(SessionFactory sessionFactory){
		this.sessionFactory=sessionFactory;
	}
	 @Transactional
	public boolean addSupplier(Supplier supplier) {
		Session session=sessionFactory.getCurrentSession();
		session.save(supplier);
		return true;
	}
	 @Transactional
	public boolean updateSupplier(Supplier supplier) {
		Session session=sessionFactory.getCurrentSession();
		session.update(supplier);
		return true;
	}
		
	public Supplier getSupplierById(int sid) {
		Session session=sessionFactory.openSession();
		Supplier supplier=session.get(Supplier.class, sid);
		session.close();
		return supplier;
	}
	public List<Supplier> getAllSupplier() {
		Session session=sessionFactory.openSession();
		List<Supplier> list=session.createQuery("from Supplier").list();
		session.close();
		return list;
	}
	 @Transactional
	public boolean addSupplierDAO(Supplier supplier) {
		Session session=sessionFactory.getCurrentSession();
		session.delete(supplier);
		return true;
	}
	 @Transactional	 
	public boolean deleteSupplier(Supplier supplier) {
		Session session=sessionFactory.getCurrentSession();
		session.delete(supplier);
		return true;
	}
  
}
