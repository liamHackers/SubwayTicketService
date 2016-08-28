package com.four.five.controller;

import java.io.File;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.four.five.domain.User;
import com.four.five.service.UserService;
@Controller
public class FileUploadController {
	
	@Resource
	private UserService userService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}


	@RequestMapping(value = "/upload", method=RequestMethod.POST)
	private String fildUpload(
			@RequestParam(value = "file", required = false) MultipartFile file,
			HttpServletRequest request,HttpSession session) throws Exception {
		System.out.println("***fildUpload()********");
		

		// 获得物理路径webapp所在路径
		String pathRoot = request.getSession().getServletContext()
				.getRealPath("");
		String path = "";
		String path2 = "";
		if (!file.isEmpty()) {
			// 生成uuid作为文件名称
			String uuid = UUID.randomUUID().toString().replaceAll("-", "");
			// 获得文件类型（可以判断如果不是图片，禁止上传）
			String contentType = file.getContentType();
			// 获得文件后缀名称
			String imageName = contentType
					.substring(contentType.indexOf("/") + 1);
			path = "/images/" + uuid + "." + imageName;
			path2="images/"+ uuid + "." + imageName;
			file.transferTo(new File(pathRoot + path));
		}
		System.out.println(path);
		request.setAttribute("imagesPath", path);
		
		System.out.println("**********");
		User user=(User) session.getAttribute("user");
		System.out.println(user);
		user.setPhotoPath(path2);
		System.out.println(path);
		userService.addPhoto(user);
		user=userService.getPhoto(user.getUserID());
		session.setAttribute("user",user);
		session.getAttribute("user");
		System.out.println(user);
		
		
		
		
		return "index.jsp";
	}
	// 因为我的JSP在WEB-INF目录下面，浏览器无法直接访问
		@RequestMapping(value = "/forward")
		private String forward() {
			return "index";
		}

}
