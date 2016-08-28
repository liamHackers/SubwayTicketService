package com.four.five.controller;

import java.io.IOException;
import java.net.URLDecoder;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.four.five.domain.Order;
import com.four.five.domain.StationPoint;
import com.four.five.domain.User;
import com.four.five.service.OrderService;
import com.four.five.service.StationPointService;
import com.four.five.service.UserService;

@Controller
public class StationPointController {

	@Resource
	private OrderService orderService;

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
	
	@Resource
	private UserService userService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@Resource
	private StationPointService stationPointService;

	public StationPointService getStationPointService() {
		return stationPointService;
	}

	public void setStationPointService(StationPointService stationPointService) {
		this.stationPointService = stationPointService;
	}

	@RequestMapping(value = "/getZuoBiao")
	public void getZuoBiao(
			HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		//String stationName1 =URLDecoder.decode(request.getParameter("stationName1"), "UTF-8");
		request.setCharacterEncoding("UTF-8");
		String stationName1=request.getParameter("stationName1");
		String stationName2=request.getParameter("stationName2");
		System.out.print(stationName2);
		System.out.print(stationName1);
	    StationPoint start = stationPointService
	    		.getStationName(stationName1);
		StationPoint terminal = stationPointService
				.getStationName(stationName2);
		request.getSession().setAttribute("start", start);
		request.getSession().setAttribute("terminal", terminal);

		String rtn = "{\"startN\":\"" + start.getLatitude()
				+ "\",\"startY\":\"" + start.getLongitude()
				+ "\",\"terminalN\":\"" + terminal.getLatitude()
				+ "\",\"terminalY\":\"" + terminal.getLongitude() + "\"}";
		response.setContentType("text/html;charset=UTF-8");
		java.io.PrintWriter p = response.getWriter();
		p.write(rtn);
		p.close();

		//return "order-buyticket.jsp";

	}

	@RequestMapping(value = "/buyticket")
	public String buyticket(float price, HttpSession session,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		Order order=new Order();
		order.setStatus("未消费");
		User user = (User) session.getAttribute("user");
		System.out.println(".................");
		
		float balance = user.getBalance();
		/* float price=(Float) session.getAttribute("price"); */
		System.out.println(balance);
		System.out.println(".................");
		System.out.println(price);
		if (balance >= price) {
			System.out.println("购买成功");
			Random random = new Random();
			String orderID = String.valueOf(random.nextInt(999999999));
			System.out.println(orderID);
			
			balance = balance - price;
			user.setBalance(balance);
			userService.updBal(user);
			StationPoint start=(StationPoint) session.getAttribute("start");
			StationPoint terminal=(StationPoint) session.getAttribute("terminal");
			
			
			System.out.println(start.getStationName());
			System.out.println(terminal.getStationName());
			
			order.setStart(start.getStationName());
			order.setTerminal(terminal.getStationName());
			order.setPrice(price);
			order.setOrderID(orderID);
			order.setUser(user);
			System.out.println(order);
			System.out.println("*********");
			orderService.addOrder(order);
			session.setAttribute("orders", order);
			order=(Order) session.getAttribute("orders");
			
			System.out.println(order);
			JSONObject json = new JSONObject();
			json.put("msg", "删除成功！");
			response.setContentType("text/html;charset=UTF-8");
			String data = json.toString();
			java.io.PrintWriter p = response.getWriter();
			p.write(data);
			p.close();
			System.out.println("*********");
		} else {
			System.out.println("购买失败");
		}
		return "order-buyticket.jsp";

	}
}
