package com.four.five.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.four.five.domain.Admin;
import com.four.five.service.AdminService;
@Controller
public class AdminController{

	@Resource
	private AdminService adminService;
	
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
		
		
	}
	
	


	//系统员登陆功能
	@RequestMapping(value="/adminlogin")
	public String adminLogin(HttpServletRequest request,HttpSession session){
		String aName=request.getParameter("aName");
		String password=request.getParameter("password");
		Admin admin=adminService.getAdmin(aName, password);
		System.out.println("admin===>"+admin);
		
		session.setAttribute("admin", admin);
		if (admin!=null){
			
			return "admin-index.jsp";
		}else {
			//model.addAttribute("message","用户名或密码错误请重新登录！")
			request.setAttribute("msg", "用户名或密码错误请重新登录！");
			return "login_admin.jsp";
		}	
		
	}
//	@RequestMapping(value="/adminlogin")
//	public ModelAndView submit(String aName,String password)throws Exception{
//		
////		System.out.println("admin"+admin);
//		System.out.println("aname==>"+aName);
//		System.out.println("password==>"+password);
//		Admin admin=adminService.getAdmin(aName, password);
//		System.out.println("admin==>" +admin);
//		
//		Map map=new HashMap();
////		if (aName.equals(admin.getaName())&&password.equals(admin.getPassword())) {
////			map.put("admin", admin);
////			return new ModelAndView("admin-index.jsp","map" ,map);
////		}
////		
//		if (admin!=null) {
//			map.put("admin", admin);
//			return new ModelAndView("admin-index.jsp","map" ,map);
//		}else {
//			map.p
//		}
//		
		
		
	
	
}
