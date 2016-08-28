package com.four.five.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.four.five.domain.Admin;
import com.four.five.domain.News;
import com.four.five.domain.Notice;
import com.four.five.domain.Page;
import com.four.five.service.NewService;

import java.util.Date;
import java.io.IOException;
import java.text.SimpleDateFormat;

@Controller
public class NewController {

	@Resource
	private NewService newService;

	public NewService getNewService() {
		return newService;
	}

	public void setNewService(NewService newService) {
		this.newService = newService;
	}

	// 查询所有新闻并返回index.jsp页面
	@RequestMapping(value = "/news_query")
	public String findDepts(HttpServletRequest req) {
		List<News> news = newService.findNews();
		req.setAttribute("news", news);
		return "index.jsp";
	}

	// 查询指定新闻并返回index-newscontent.jsp页面
	@RequestMapping(value = "/getNew")
	public String getUser(int newID, HttpServletRequest request) {
		News news = newService.getNew(newID);
		request.setAttribute("news", news);
		return "index-newscontent.jsp";
	}

	// 发布新闻
	@RequestMapping(value = "/addNew")
	public String addNew(News news,HttpSession session) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		news.setTime(df.format(new Date()));
		Admin admin=(Admin) session.getAttribute("admin");
		news.setPusher(admin.getaName());
		newService.addNew(news);
		return "findPageAllNew.do";
	}

	// 分页查询新闻
	@RequestMapping(value = "/findPageAllNew")
	public String findAllNew(HttpServletRequest request,
			HttpServletResponse response) {
		try {
			String pageNo = request.getParameter("pageNo");
			if (pageNo == null) {
				pageNo = "1";
			}
			Page page = newService.queryForPage(Integer.valueOf(pageNo), 10);
			request.setAttribute("page", page);
			List<Notice> news = page.getList();
			request.setAttribute("news", news);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "admin-news-check.jsp";
	}

	// 查询指定新闻并返回index-newscontent.jsp页面
	@RequestMapping(value = "/getAdminNew")
	public String getNew(int newID, HttpServletRequest request) {
		News news = newService.getNew(newID);
		request.setAttribute("news", news);
		return "admin-new-content.jsp";
	}

    // 删除新闻
	@RequestMapping(value = "delNew")
	public String login(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		int newID = Integer.parseInt(request.getParameter("newID"));
		System.out.println(newID);
		newService.delNews(newID);
		JSONObject json = new JSONObject();
		json.put("msg", "删除成功！");
		response.setContentType("text/html;charset=UTF-8");
		String data = json.toString();
		java.io.PrintWriter p = response.getWriter();
		p.write(data);
		p.close();
		return "findPageAllNew.do";
	}

}
