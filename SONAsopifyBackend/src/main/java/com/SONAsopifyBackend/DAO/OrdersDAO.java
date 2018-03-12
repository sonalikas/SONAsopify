package com.SONAsopifyBackend.DAO;

import java.util.List;

import com.SONAsopifyBackend.Model.Orders;
import com.SONAsopifyBackend.Model.ShippingAddress;

public interface OrdersDAO {
	boolean insertAddress(ShippingAddress shippingAddress);

	boolean insertOrders(Orders orders);

	List<Orders> getOrdersByUser(String username);
}
