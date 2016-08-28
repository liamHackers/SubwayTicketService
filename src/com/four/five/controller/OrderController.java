package com.four.five.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.four.five.domain.Mail;
import com.four.five.domain.Order;
import com.four.five.domain.Page;
import com.four.five.domain.User;
import com.four.five.service.OrderService;
import com.four.five.utils.MailUtil;
@Controller
public class OrderController {
	@Resource
	private OrderService orderService;

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
	
	/**
	 * 分页查询用户订单信息
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/findOrder")
	public String findOrder(HttpServletRequest request,HttpServletResponse response){
		try {
			String pageNo=request.getParameter("pageNo");
			if (pageNo==null) {
				pageNo="1";
			}
			Page page=orderService.queryByPage(Integer.valueOf(pageNo),4 );
			//System.out.println("order.user.userName==>"+s);
			request.setAttribute("page", page);
			List<Order> orders=page.getList();
			
			request.setAttribute("orders", orders);
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		return "admin-user-order.jsp";
		
	}
	
	// 分页查询用户订单并跳回退票界面
		@RequestMapping(value = "/returnTicket")
		public String returnTicket(HttpServletRequest request,HttpServletResponse response) {
			User user= (User) request.getSession().getAttribute("user");
			System.out.println(user.getPassword());
			try {
				String pageNo = request.getParameter("pageNo");
				if (pageNo == null) {
					pageNo = "1";
				}
				Page page = orderService.queryForPage(Integer.valueOf(pageNo), 4,user.getUserID());
				request.setAttribute("page", page);
				List<Order> orders = page.getList();
				request.setAttribute("orders", orders);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "order-returnticket.jsp";
		}
		
		// 退票并跳转回到退票页面
		@RequestMapping(value = "delOrder")
		public String delete(String orderID) {
			orderService.delOrder(orderID);
			return "returnTicket.do";

		}
	
		// 分页查询用户订单并跳回购票记录界面
				@RequestMapping(value = "/ticketRecord")
				public String ticketRecord(HttpServletRequest request,HttpServletResponse response) {
					User user= (User) request.getSession().getAttribute("user");
					System.out.println(user.getPassword());
					try {
						String pageNo = request.getParameter("pageNo");
						if (pageNo == null) {
							pageNo = "1";
						}
						Page page = orderService.queryForPage(Integer.valueOf(pageNo), 4,user.getUserID());
						request.setAttribute("page", page);
						List<Order> orders = page.getList();
						request.setAttribute("orders", orders);
					} catch (Exception e) {
						e.printStackTrace();
					}
					return "personal-consume.jsp";
				}
	
				//获取价格
				@RequestMapping(value="/getPrice")
				public String getPrice(Order order,HttpServletRequest request,HttpSession session, HttpServletResponse response)
						throws IOException {
					//User user=(User) session.getAttribute("user");
					//System.out.println(user.getUserID());
					//System.out.println(user);					
					//System.out.println("*******************");
					String distancestr=request.getParameter("distance");
					System.out.println(distancestr);
					float distance=Float.valueOf(distancestr)/1000;
					
					System.out.println(distance);
					System.out.println("*******************");
					float price=0;
					if (distance>0&&distance<=4) {
						price=2;
					}else if (distance>4 && distance<=8) {
						//price=(float) (2+Math.ceil((distance-4)/4)*1);
						price=3;
					}else if (distance>8&& distance<=12) {
						
						//price=(float)(2+2+Math.ceil(((distance-12)/6))*1);
						price=4;
					}else if (distance>12&& distance<=18) {
						//price=(float)(2+2+2+Math.ceil((distance-24)/8)*1);
						price=5;					
					}
					else if (distance>12&& distance<=18) {
						//price=(float)(2+2+2+Math.ceil((distance-24)/8)*1);
						price=5;					
					}
					else if (distance>18&& distance<=24) {					
						price=6;					
					}
					else if (distance>24&& distance<=32) {					
						price=7;					
					}
					else if (distance>32&& distance<=40) {					
						price=8;					
					}
					else if (distance>40&& distance<=48) {					
						price=9;					
					}
					else if (distance>48&& distance<=56) {					
						price=10;					
					}
					else if (distance>56&& distance<=64) {					
						price=11;					
					}
					else if (distance>64&& distance<=72) {					
						price=12;					
					}
					else if (distance>72&& distance<=80) {					
						price=13;					
					}
					else if (distance>80&& distance<=88) {					
						price=14;					
					}else if (distance>88&& distance<=96) {					
						price=15;					
					}
					
					System.out.println(price);
					String rtn = "{\"price\":\""+price+"\"}";
					response.setContentType("text/html;charset=UTF-8");
					java.io.PrintWriter p = response.getWriter();
					p.write(rtn);
					p.close();										
					return "order-buyticket.jsp";
					
				}
				
				//发送二维码到用户邮箱
				@RequestMapping(value="/sendEmail")
				public String sendEmail(String orderID,String email,HttpServletRequest request,HttpSession session, HttpServletResponse response)
						throws IOException {
															Mail mail = new Mail();
					mail.setHost("smtp.sina.com"); // 设置邮件服务器,如果不用163的,自己找找看相关的
					mail.setSender("chinesesubway@sina.com");
					mail.setReceiver(email); // 接收人
					mail.setUsername("chinesesubway@sina.com"); // 登录账号,一般都是和邮箱名一样吧
					mail.setPassword("tomei1314"); // 发件人邮箱的登录密码
					mail.setSubject("中国地铁！");
					mail.setMessage("您好！您的订单二维码为：<div><img src='http://qr.topscan.com/api.php?text="+orderID+"'/></div>");
					new MailUtil().send(mail);					
					String rtn = "{\"price\":\"发送成功！\"}";
					response.setContentType("text/html;charset=UTF-8");
					java.io.PrintWriter p = response.getWriter();
					p.write(rtn);
					p.close();										
					return "null";
					
				}
				@RequestMapping(value="/searchOrder")
				public String searchOrder(String orderID,HttpServletRequest request){
					
						List<Order> orders=orderService.getOrder(orderID);
						request.setAttribute("orders", orders);
					
					return "admin-user-order.jsp";
					
				}
				
				
}
