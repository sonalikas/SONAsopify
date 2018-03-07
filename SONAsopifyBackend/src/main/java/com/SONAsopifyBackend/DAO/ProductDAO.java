package com.SONAsopifyBackend.DAO;

import java.util.List;

import com.SONAsopifyBackend.Model.Product;

public interface ProductDAO {
	public boolean insertOrUpdateProduct(Product product);
	public Product getProduct(int id);
	public List<Product> getAllProducts();
	public List<Product> getProductsByCategory(int c_id);
	public boolean deleteProduct( Product product);
	

}
