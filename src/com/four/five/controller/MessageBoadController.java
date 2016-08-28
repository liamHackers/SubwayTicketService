package com.four.five.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.four.five.domain.MessageBoad;
import com.four.five.domain.News;
import com.four.five.domain.Notice;
import com.four.five.domain.Page;
import com.four.five.domain.SafeNotice;
import com.four.five.service.MessageBoadService;

@Controller
public class MessageBoadController {
	@Resource
	private MessageBoadService messageBoadService;

	public MessageBoadService getMessageBoadService() {
		return messageBoadService;
	}

	public void setMessageBoadService(MessageBoadService messageBoadService) {
		this.messageBoadService = messageBoadService;
	}

	// 用户查询所有留言
	@RequestMapping(value = "/messageBoad_query")
	public String findDepts(HttpServletRequest req) {
		List<MessageBoad> messageBoad = messageBoadService.findMessage();
		req.setAttribute("messageBoad", messageBoad);
		return "service-messageboad.jsp";
	}

	// 用户添加新的留言
	@RequestMapping(value = "/addMessageboad")
	public String addSafeNotice(MessageBoad messageBoad) {
		messageBoadService.addMessage(messageBoad);;
		return "messageBoad_query.do";
	}
	
	// 分页查询新闻
		@RequestMapping(value = "/findPageAllMessage")
		public String findAllNew(HttpServletRequest request,
				HttpServletResponse response) {
			try {
				String pageNo = request.getParameter("pageNo");
				if (pageNo == null) {
					pageNo = "1";
				}
				Page page = messageBoadService.queryForPage(Integer.valueOf(pageNo), 10);
				request.setAttribute("Page", page);
				List<MessageBoad> messageBoad = page.getList();
				request.setAttribute("messageBoad", messageBoad);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "admin-order-messageboad.jsp";
		}
		// 管理员回复留言
		@RequestMapping(value = "/addUserMessageboad")
		public String addMessageboad(MessageBoad messageBoad,HttpServletRequest request) {
			messageBoadService.updatemessageBoad(messageBoad);;
			return "findPageAllMessage.do";	
		}
		
}
