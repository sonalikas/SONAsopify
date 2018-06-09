package com.SONAsopifyFrontend.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.SONAsopifyBackend.DAO.CartDAO;
import com.SONAsopifyBackend.DAO.OrdersDAO;
import com.SONAsopifyBackend.Model.Cart;
import com.SONAsopifyBackend.Model.Orders;
import com.SONAsopifyBackend.Model.ShippingAddress;
import com.SONAsopifyBackend.Model.UserDetails;

@Controller
public class OrderController {
	@Autowired
	OrdersDAO ordersDAO;
	@Autowired
	CartDAO cartDAO;

	@RequestMapping("/checkout")
	public String checkout() {
		return "checkout";
	}

	@RequestMapping("/thanks")
	public String thanks() {
		return "thanks";
	}

	@RequestMapping(value = "/placeOrder", method = RequestMethod.POST)
	public String placeOrder(@RequestParam Map<String, String> data) {
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		List<Cart> list=cartDAO.getcartitems(username);
		ShippingAddress shippingAddress=new ShippingAddress();
		shippingAddress.setHouseno(data.get("hno"));
		shippingAddress.setCity(data.get("city"));
		shippingAddress.setState(data.get("state"));
		shippingAddress.setName(data.get("name"));
		shippingAddress.setPincode(Integer.parseInt(data.get("pincode")));
		shippingAddress.setMobile(Long.parseLong(data.get("mobile")));
		int orderID=Integer.parseInt(""+Math.round(Math.random()*10000000));
		ordersDAO.insertAddress(shippingAddress);
		Orders orders=new Orders();
		orders.setPayMode(data.get("payMode"));
		UserDetails user=new UserDetails();
		user.setUsername(username);
		orders.setUser(user);
		orders.setOrderID(orderID);
		orders.setShippingAddress(shippingAddress);
		for(Cart cart:list){
			orders.setId(0);
			orders.setProduct(cart.getPro());
			orders.setQuantity(cart.getQuantity());
			ordersDAO.insertOrders(orders);
			cartDAO.deleteCartItem(cart);
			}
		return "redirect:/thanks";
	}

	@RequestMapping("/orders")
	public ModelAndView orders() {
		ModelAndView m = new ModelAndView("orders");
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		m.addObject("orderList", ordersDAO.getOrdersByUser(username));
		return m;
	}

}
