package com.SONAsopifyBackend.DAOImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.SONAsopifyBackend.DAO.CartDAO;
import com.SONAsopifyBackend.Model.Cart;

@Repository("cartDAO")
public class CartDAOImpl implements CartDAO {
	@Autowired
	SessionFactory sessionFactory;

	public CartDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public List<Cart> getcartitems(String username) {
		Session session = sessionFactory.openSession();
		Query<Cart> query = session.createQuery("from Cart where user.username=:username");
		query.setParameter("username", username);
		List<Cart> list = query.list();
		session.close();
		return list;
	}

	public Cart getcartitembyid(int id) {
		Session session = sessionFactory.openSession();
		Cart cart_item=session.get(Cart.class,id);
		session.close();
		return cart_item;
	}
	@Transactional
	public boolean insertOrUpdateCart(Cart cart_item) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(cart_item);
		return true;
		
	}

	public Cart checkCartItem(String username, int p_id) {
		Session session = sessionFactory.openSession();
		Query<Cart> query = session.createQuery("from Cart where user.username=:username and pro.id=:p_id");
		query.setParameter("username", username);
		query.setParameter("p_id", p_id);
		List<Cart> list = query.list();
		for( Cart c:list)
			if(c!=null){
				return c;
			}
		session.close();
		return null;
		}
	@Transactional
	public boolean deleteCartItem(Cart cart_item) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(cart_item);	
		return true;
	}
	
}
