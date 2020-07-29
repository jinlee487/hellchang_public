package com.ncs.green;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import vo.MemberVO;

@Controller
public class boardController {
	private static final Logger logger = LoggerFactory.getLogger(boardController.class);
	
	@RequestMapping(value = "/blog")
	public ModelAndView blog(ModelAndView mv) {
		mv.setViewName("blog/blog");
		return mv; 
	} // atestf
	
	  @RequestMapping(value = "/myblog") 
	  public ModelAndView myblog(ModelAndView mv, MemberVO vo,HttpServletRequest request) { 
			String id = "";
			HttpSession session = request.getSession(false);
			if (session != null && session.getAttribute("logID") != null) {
				id = (String) session.getAttribute("logID");
			} else {
				// login 하도록 유도 후에 메서드 return 으로 종료
				mv.addObject("message", "~~ 로그인 후에 하세요 ~~");
				mv.setViewName("login/loginForm");
				return mv;
			}
			vo.setId(id);
			
		  
		  
		  mv.setViewName("blog/myblog"); return mv; 
		
	 } // atestf
	
}
