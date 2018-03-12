package com.SONAsopifyBackend.DAOImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.SONAsopifyBackend.DAO.OrdersDAO;
import com.SONAsopifyBackend.Model.Cart;
import com.SONAsopifyBackend.Model.Orders;
import com.SONAsopifyBackend.Model.ShippingAddress;

@Repository("ordersDAO")
public class OrdersDAOImpl implements OrdersDAO {
	@Autowired
	SessionFactory sessionFactory;

	public OrdersDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public boolean insertAddress(ShippingAddress shippingAddress) {
		Session session = sessionFactory.getCurrentSession();
		session.save(shippingAddress);
		return true;
	}

	@Transactional
	public boolean insertOrders(Orders orders) {
		Session session = sessionFactory.getCurrentSession();
		session.save(orders);
		return true;
	}

	public List<Orders> getOrdersByUser(String username) {
		Session session = sessionFactory.openSession();
		Query<Orders> query = session.createQuery("from Orders where user.username=:username");
		query.setParameter("username", username);
		List<Orders> list = query.list();
		session.close();
		return list;
	}

}
