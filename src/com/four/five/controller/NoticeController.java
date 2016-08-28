package com.four.five.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import com.four.five.domain.User;
import com.four.five.service.NewService;
import com.four.five.service.NoticeService;

@Controller
public class NoticeController {

	@Resource
	private NoticeService noticeService;

	public NoticeService getNoticeService() {
		return noticeService;
	}

	public void setNoticeService(NoticeService noticeService) {
		this.noticeService = noticeService;
	}

	// 查询所有公告并返回index.jsp页面
	@RequestMapping(value = "/notice_query")
	public String findNotice(HttpServletRequest req) {
		List<Notice> notice = noticeService.findNotice();
		req.setAttribute("notice", notice);
		return "SafeNotice.do";
	}

	// 查询指定新闻并返回index-newscontent.jsp页面
	@RequestMapping(value = "/getNotice")
	public String getNotice(int noticeID, HttpServletRequest request) {
		Notice notice = noticeService.getNotice(noticeID);
		request.setAttribute("notice", notice);
		return "index-notice.jsp";
	}

	// 分页查询公告
	@RequestMapping(value = "/showAll")
	public String findAllCourse(HttpServletRequest request,
			HttpServletResponse response) {
		try {
			String pageNo = request.getParameter("pageNo");
			if (pageNo == null) {
				pageNo = "1";
			}
			Page page = noticeService.queryForPage(Integer.valueOf(pageNo), 6);
			request.setAttribute("page", page);
			List<Notice> notice = page.getList();
			request.setAttribute("notice", notice);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "main-notice.jsp";
	}

	// 查询最大新闻并返回getMainNotice.do?noticeID=
	@RequestMapping(value = "/getNewNotice")
	public String getNewNotice(HttpServletRequest request) {
		Notice notice = noticeService.getNewNotice();
		return "getMainNotice.do?noticeID=" + notice.getNoticeID();
	}

	// 查询指定新闻并返回main-notice.jsp页面
	@RequestMapping(value = "/getMainNotice")
	public String getMainNotice(int noticeID, HttpServletRequest request) {
		Notice notice = noticeService.getNotice(noticeID);
		request.setAttribute("pointnotice", notice);
		return "showAll.do";
	}
	
	// 发布新闻
		@RequestMapping(value = "/addNotice")
		public String addNew(Notice notice,HttpSession session) {
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			notice.setTime(df.format(new Date()));
			Admin admin=(Admin) session.getAttribute("admin");
			notice.setPusher(admin.getaName());
			noticeService.addNotice(notice);
			return "findAllNotice.do";
		}
		
		// 分页查询公告
		@RequestMapping(value = "/findAllNotice")
		public String findAllNotice(HttpServletRequest request,
				HttpServletResponse response) {
			try {
				String pageNo = request.getParameter("pageNo");
				if (pageNo == null) {
					pageNo = "1";
				}
				Page page = noticeService.queryForPage(Integer.valueOf(pageNo), 10);
				request.setAttribute("page", page);
				List<Notice> notice = page.getList();
				request.setAttribute("notice", notice);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "admin-notice-check.jsp";
		}
		
		// 查询指定公告并返回admin-notice-content.jsp页面
		@RequestMapping(value = "/getMainNoticeToAdmin")
		public String getMainNoticeToAdmin(int noticeID, HttpServletRequest request) {
			Notice notice = noticeService.getNotice(noticeID);
			request.setAttribute("pointnotice", notice);
			return "admin-notice-content.jsp";
		}
		
		
		// 删除公告
		@RequestMapping(value = "delNotice")
		public String login(HttpServletRequest request,
				HttpServletResponse response) throws IOException {
			int noticeID = Integer.parseInt(request.getParameter("noticeID"));
			System.out.println(noticeID);
			noticeService.delNotice(noticeID);
			JSONObject json = new JSONObject();
			json.put("msg", "删除成功！");
			response.setContentType("text/html;charset=UTF-8");
			String data = json.toString();
			java.io.PrintWriter p = response.getWriter();
			p.write(data);
			p.close();
			return "succee";
		}
		

}
