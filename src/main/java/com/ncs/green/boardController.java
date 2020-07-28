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
	  public ModelAndView myblog(ModelAndView mv) { 
		mv.setViewName("blog/myblog"); return mv; 
		
	 } // atestf
	
}
