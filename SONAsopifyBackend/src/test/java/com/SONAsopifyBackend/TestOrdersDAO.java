package com.SONAsopifyBackend;

import static org.junit.Assert.*;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.SONAsopifyBackend.DAO.CategoryDAO;
import com.SONAsopifyBackend.DAO.OrdersDAO;
import com.SONAsopifyBackend.DAO.SupplierDAO;
import com.SONAsopifyBackend.Model.Category;
import com.SONAsopifyBackend.Model.Orders;
import com.SONAsopifyBackend.Model.Product;
import com.SONAsopifyBackend.Model.ShippingAddress;
import com.SONAsopifyBackend.Model.UserDetails;
@FixMethodOrder(MethodSorters.NAME_ASCENDING)

public class TestOrdersDAO {
	static AnnotationConfigApplicationContext context;
	static Orders orders;
	static ShippingAddress shippingAddress;
	static UserDetails userDetails;
	static Product product;
	@BeforeClass 
	public static void setup(){
		context=new AnnotationConfigApplicationContext();
		context.scan("com");
		context.refresh();
		orders=new Orders();
		userDetails=new UserDetails();
		Product p=new Product();
		
		p.setId(63);
		userDetails.setUsername("sonalika");
		shippingAddress=new ShippingAddress();
		orders.setOrderID(40873984);
		orders.setPayMode("cod");
		orders.setProduct(p);
		orders.setQuantity(1);
		orders.setShippingAddress(shippingAddress);
		orders.setUser(userDetails);
	}

	@Test
	public void test1InsertAddress() {
		OrdersDAO ordersDAO=(OrdersDAO)context.getBean("ordersDAO");
		assertEquals(true, ordersDAO.insertAddress(shippingAddress));	
		}

	@Test
	public void test2InsertOrders() {
		OrdersDAO ordersDAO=(OrdersDAO)context.getBean("ordersDAO");
		assertEquals(true, ordersDAO.insertOrders(orders));	
		}


	@Test
	public void test3GetOrdersByUser() {
		OrdersDAO ordersDAO=(OrdersDAO)context.getBean("ordersDAO");
		assertNotEquals(null, ordersDAO.getOrdersByUser(orders.getUser().getUsername()));
	}
	@AfterClass
	public static void TearDAO(){
		context.close();

}
}
