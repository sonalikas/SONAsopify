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
import com.SONAsopifyBackend.DAO.ProductDAO;
import com.SONAsopifyBackend.Model.Product;

@FixMethodOrder(MethodSorters.NAME_ASCENDING)

public class TestProductDAO {
	static AnnotationConfigApplicationContext context;
	static Product product;
	@BeforeClass
	public static void setup(){
		context=new AnnotationConfigApplicationContext();
		context.scan("com");
		context.refresh();
		product=new Product();
		product.setName("Test");
	}
	@Test
	public void testInsertOrUpdateProduct() {
		ProductDAO ordersDAO=(ProductDAO)context.getBean("ordersDAO");
		assertEquals(true, ordersDAO.insertOrUpdateProduct(product));	
		}

	@Test
	public void testGetProduct() {
		ProductDAO productDAO=(ProductDAO)context.getBean("productDAO");
		assertNotEquals(null, productDAO.getProduct(product.getId()));
	}

	@Test
	public void testGetAllProducts() {
		ProductDAO productDAO=(ProductDAO)context.getBean("productDAO");
		assertNotEquals(null, productDAO.getAllProducts());
	
	}
	@Test
	public void testGetProductsByCategory() {
		ProductDAO productDAO=(ProductDAO)context.getBean("ordersDAO");
		assertNotEquals(null, productDAO.getProductsByCategory(product.getCategory().getC_id()));
	}

	@Test
	public void testDeleteProduct() {
		ProductDAO productDAO=(ProductDAO)context.getBean("productDAO");
		assertEquals(true, productDAO.deleteProduct(product));	
		}
	@AfterClass
	public static void TearDAO(){
		context.close();
	}

}
