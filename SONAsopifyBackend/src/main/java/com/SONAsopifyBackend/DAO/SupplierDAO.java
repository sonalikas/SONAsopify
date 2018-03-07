package com.SONAsopifyBackend.DAO;

import com.SONAsopifyBackend.Model.Category;
import com.SONAsopifyBackend.Model.Supplier;

import java.util.List;
public interface SupplierDAO {
	public boolean addSupplier(Supplier supplier);
	 public boolean updateSupplier(Supplier supplier);
	 public boolean deleteSupplier(Supplier supplier);
	 public Supplier getSupplierById(int sid);
	 public List<Supplier> getAllSupplier();
	
}

