package com.SONAsopifyFrontend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.SONAsopifyBackend.DAO.CategoryDAO;
import com.SONAsopifyBackend.DAO.SupplierDAO;
import com.SONAsopifyBackend.Model.Category;
import com.SONAsopifyBackend.Model.Supplier;
@Controller
public class CategoryController {
		@Autowired
		CategoryDAO categoryDAO;
		
		@RequestMapping("/addCategory")
		public String addCategory(){
			return "addCategory";
		}
		
		@RequestMapping(value="/saveCategory",method=RequestMethod.POST)
		public String saveCategory(@RequestParam String c_name){
			Category category=new Category();
			category.setC_name(c_name);
			categoryDAO.addCategory(category);
			
			return "redirect:/viewCategory";
		}

		@RequestMapping(value="/updateCategory",method=RequestMethod.POST)
		public String updateCategory(@RequestParam String c_name,@RequestParam int c_id){
			Category category=new Category();
			category.setC_name(c_name);
			category.setC_id(c_id);
			categoryDAO.updateCategory(category);
			
			return "redirect:/viewCategory";
		}
		@RequestMapping(value="/deleteCategory/{cid}")
		public String deleteCategory(@PathVariable int cid){
			try{Category category=categoryDAO.getCategoryById(cid);
			categoryDAO.deleteCategory(category);}
			catch(Exception e){}
			
			return "redirect:/viewCategory";
		}	
		
		@RequestMapping("/viewCategory")
		public ModelAndView viewCategory(){
			ModelAndView m=new ModelAndView("viewCategory");
			List<Category> list=categoryDAO.getAllCategory();
			m.addObject("catList",list);
			return m;
		}
		@RequestMapping(value="/updateCategorybyId/{cid}")
		public ModelAndView updateCategoryById(@PathVariable int cid){
			Category category=categoryDAO.getCategoryById(cid);
			ModelAndView m=new ModelAndView("updateCategory");
			m.addObject("cat",category);
			return m;
		}	
	}



