package com.SONAsopifyBackend.DAOImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.SONAsopifyBackend.DAO.ProductDAO;
import com.SONAsopifyBackend.Model.Product;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	SessionFactory sessionFactory;
	public ProductDAOImpl(SessionFactory sessionFactory){
	this.sessionFactory=sessionFactory;
	}
	
@Transactional
	public boolean insertOrUpdateProduct(Product product) {
	Session session=sessionFactory.getCurrentSession();
	session.saveOrUpdate(product);
	return true;
	}

	public Product getProduct(int id) {
		Session session=sessionFactory.openSession();
		Product product=session.get(Product.class, id);
		session.close();
			return product;
	}

	public List<Product> getAllProducts() {
		Session session=sessionFactory.openSession();
		List<Product> list=session.createQuery("from Product").list();
		session.close();
		return list;
	}

	public List<Product> getProductsByCategory(int c_id) {
		Session session=sessionFactory.openSession();
		List<Product> list=session.createQuery("from Product where category.c_id=:id").setParameter("id", c_id).list();
		session.close();
		return list;
}
@Transactional
	public boolean deleteProduct(Product product) {
	Session session=sessionFactory.getCurrentSession();
	session.delete(product);
	return true;
}


}
