package com.SONAsopifyFrontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.SONAsopifyBackend.DAO.CartDAO;
import com.SONAsopifyBackend.DAO.ProductDAO;
import com.SONAsopifyBackend.Model.Cart;
import com.SONAsopifyBackend.Model.Product;
import com.SONAsopifyBackend.Model.UserDetails;

@Controller
public class CartController {
	@Autowired
	ProductDAO productDAO;
@Autowired
CartDAO cartDAO;
	@RequestMapping("/addToCart/{pid}")
	public String addToCart(@PathVariable int pid) {
		Product product=productDAO.getProduct(pid);
		String username=SecurityContextHolder.getContext().getAuthentication().getName();
		Cart cart=cartDAO.checkCartItem(username, pid);
		if(cart==null){
		UserDetails details=new UserDetails();
		details.setUsername(username);
		cart=new Cart();
		cart.setPro(product);
		cart.setQuantity(1);
		cart.setUser(details);}
		else{cart.setQuantity(cart.getQuantity()+1);}
		cartDAO.insertOrUpdateCart(cart);
		return "redirect:/cart";
	}
	@RequestMapping("/cart")
	public ModelAndView cart(){
		ModelAndView m=new ModelAndView("cart");
		String username=SecurityContextHolder.getContext().getAuthentication().getName();
		m.addObject("cartList",cartDAO.getcartitems(username));
		return m;
	}
	@RequestMapping("/deleteCartItem/{cartItemId}")
	public String deleteCartItem(@PathVariable int cartItemId) {
		cartDAO.deleteCartItem(cartDAO.getcartitembyid(cartItemId));
		return "redirect:/cart";
	}
	@RequestMapping("/changeCartItem/{cartItemId}/{operation}")
	public String changeCartItem(@PathVariable int cartItemId,@PathVariable char operation) {
		Cart cart=cartDAO.getcartitembyid(cartItemId);
		switch(operation){
		case '+':
			cart.setQuantity(cart.getQuantity()+1);
			cartDAO.insertOrUpdateCart(cart);
			break;
		case '-':
			if(cart.getQuantity()>1){
				cart.setQuantity(cart.getQuantity()-1);
				cartDAO.insertOrUpdateCart(cart);
			}
			break;
		}
		return "redirect:/cart";
	}
	
}
