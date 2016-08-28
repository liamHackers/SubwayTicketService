package com.four.five.controller;

import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.four.five.dao.UserDao;
import com.four.five.domain.CService;
import com.four.five.domain.Mail;
import com.four.five.domain.Notice;
import com.four.five.domain.Page;
import com.four.five.domain.User;
import com.four.five.service.CServiceService;
import com.four.five.service.UserService;
import com.four.five.utils.MailUtil;

@Controller
public class UserController {

	@Resource
	private UserService userService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@Resource
	private CServiceService cserviceService;

	public CServiceService getCserviceService() {
		return cserviceService;
	}

	public void setCserviceService(CServiceService cserviceService) {
		this.cserviceService = cserviceService;
	}

	// 删除用户跳转到删除用户页面
	@RequestMapping(value = "delUser")
	public String delete(int userID) {
		userService.delUser(userID);
		return "findDel.do";

	}

	// //查询用户跳转到删除用户页面
	// @RequestMapping(value="/findDel")
	// public String findDel(HttpServletRequest request){
	// List<User> users=userService.findAll();
	// request.setAttribute("users", users);
	// return "admin-user-del.jsp";
	//
	// }
	// //查询用户跳转到查询用户页面
	// @RequestMapping(value="/findAll")
	// public String findAll(HttpServletRequest request){
	// List<User> users=userService.findAll();
	// request.setAttribute("users", users);
	// return "admin-user-check.jsp";
	//
	// }
	// 查询个人信息页面
	@RequestMapping(value = "/findInfo")
	public String findInfo(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		model.addAttribute("user", user);
		return "personal-information.jsp";

	}

	// 查询个人信息页面
	@RequestMapping(value = "/findBalance")
	public String findBalance(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		model.addAttribute("user", user);
		return "personal-balance.jsp";

	}

	// 注册
	@RequestMapping(value = "/register")
	public String addUser(User user) {
		userService.addUser(user);
		return "login.jsp";
	}

	// 修改密码
	@RequestMapping("/updatepassword")
	public String updatepasword(User user, HttpSession session,
			HttpServletResponse response) throws IOException {

		userService.updatepassword(user);
		session.setAttribute("user", user);
		JSONObject json = new JSONObject();
		json.put("msg", "修改成功！");
		response.setContentType("text/html;charset=UTF-8");
		String data = json.toString();
		java.io.PrintWriter p = response.getWriter();
		p.write(data);
		p.close();		
		return "personal-updatepassword.jsp";
		

	}


	//在线充值
	@RequestMapping(value = "/recharge")
	public String recharge(float recharge,HttpSession session, Model model,
			HttpServletResponse response) throws IOException {
       
		System.out.println(recharge);
		User user = (User) session.getAttribute("user");
		System.out.println(user.getBalance());
		
//		float balance1=user.getBalance();
//		String balance2 = balance1+ recharge;
//		user.setBalance(balance);
//		System.out.println(user.getBalance());
//		session.setAttribute("user", user);
//		return "personal-balance.jsp";
		
		float balance1 = user.getBalance();
		float balance2 = balance1 + recharge;
		System.out.println(balance2);
		user.setBalance(balance2);
		System.out.println("2222222222222");
		userService.updBal(user);
		user=userService.getUser(user.getUserID());
		session.setAttribute("user", user);
		System.out.println("7777777777777");
		JSONObject json = new JSONObject();
		json.put("msg", balance2);
		response.setContentType("text/html;charset=UTF-8");
		String data = json.toString();
		java.io.PrintWriter p = response.getWriter();
		p.write(data);
		p.close();
		return "personal-balance.jsp";

	}
	
	// 更改用户
	@RequestMapping(value = "/updUser")
	public String updUser(User user, HttpServletRequest request, Model model) {
		String userName = request.getParameter("userName");
		String email = request.getParameter("email");
		String bankCard = request.getParameter("bankCard");
		user.setUserName(userName);
		user.setEmail(email);
		user.setBankCard(bankCard);
		userService.updUser(user);
		model.addAttribute("user", user);
		return "personal-information.jsp";
	}

	// 登录
	@RequestMapping(value = "/login")
	public String login(String userName, String password, HttpSession session) {
		System.out.println(userName);
		System.out.println(password);
		User user = userService.gerUserByName(userName, password);
		List<CService> cService = cserviceService.getCService();

		session.setAttribute("user", user);
		session.setAttribute("cService", cService);
		System.out.println("cService==>" + cService.get(0).getCserviceQQ());
		System.out.println("cService==>" + cService.get(1).getCserviceQQ());

		if (user != null) {
			return "getConpanyIntroduction.do";

		} else {
			session.setAttribute("msg", "登陆失败！");
			return "login.jsp";
		}

	}

	// 分页查询用户并跳回查询用户界面
	@RequestMapping(value = "/findAll")
	public String findAllCourse(HttpServletRequest request,
			HttpServletResponse response) {
		try {
			String pageNo = request.getParameter("pageNo");
			if (pageNo == null) {
				pageNo = "1";
			}
			Page page = userService.queryForPage(Integer.valueOf(pageNo), 4);
			request.setAttribute("page", page);
			List<User> users = page.getList();
			request.setAttribute("users", users);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "admin-user-check.jsp";
	}

	// 分页查询用户并跳回带删除用户界面
	@RequestMapping(value = "/findDel")
	public String findDel(HttpServletRequest request,
			HttpServletResponse response) {
		try {
			String pageNo = request.getParameter("pageNo");
			if (pageNo == null) {
				pageNo = "1";
			}
			Page page = userService.queryForPage(Integer.valueOf(pageNo), 4);
			request.setAttribute("page", page);
			List<User> users = page.getList();
			request.setAttribute("users", users);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "admin-user-del.jsp";
	}

	// 邮箱找回密码
	@RequestMapping(value = "/findPassword")
	public String findPassword(String userName, String email,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		String trueorfalse = userService
				.getUsernameAndPassword(userName, email);
		if (trueorfalse.equals("success")) {
			response.setContentType("text/html;charset=UTF-8");
			String data = "{\"msg\":\"密码已发送到邮箱！\"}";
			java.io.PrintWriter p = response.getWriter();
			p.write(data);
			p.close();
		} else {
			/*response.setContentType("text/html;charset=UTF-8");  
			String data = "{\"msg\":\"邮箱或密码错误！\"}";
			java.io.PrintWriter p = response.getWriter();
			p.write(data);
			p.close();*/
		}
		return "null";
	}
	
	//支付密码
	@RequestMapping(value="/paypassword")
	public String paypassword(User user, HttpServletRequest request,HttpSession session){
				
				user=(User) session.getAttribute("user");
				System.out.println(user);
				String paypassword = request.getParameter("paypassword");
				user=userService.paypassword(user.getUserID());
				if(paypassword !=null&& paypassword .equals(user.getPaypassword())){
					
					return "order-buyticket.jsp";
				}else{
					return "支付密码输入有误";
				}
				
				
			}
	
	
	// 插入随机数作为验证码并发送到用户邮箱
		@RequestMapping(value = "/addpaypassword")
		public String addpaypassword(User user, String email, int userID,
				HttpServletRequest request, HttpServletResponse response)
				throws IOException {
			int paypassword = new Random().nextInt(999999);
			user.setPaypassword(paypassword);
			user.setUserID(userID);
			userService.updPaypassword(user);
			String msg = "您的验证码为：" + paypassword;
			Mail mail = new Mail();
			mail.setHost("smtp.sina.com"); // 设置邮件服务器,如果不用163的,自己找找看相关的
			mail.setSender("chinesesubway@sina.com");
			mail.setReceiver(email); // 接收人
			mail.setUsername("chinesesubway@sina.com"); // 登录账号,一般都是和邮箱名一样吧
			mail.setPassword("tomei1314"); // 发件人邮箱的登录密码
			mail.setSubject("中国地铁！");
			mail.setMessage("您的验证码为：" + paypassword);
			new MailUtil().send(mail);
			response.setContentType("text/html;charset=UTF-8");
			String data = "{\"msg\":\"验证码已发送到你邮箱！\"}";
			java.io.PrintWriter p = response.getWriter();
			p.write(data);
			p.close();
			return "null";

		}

}
