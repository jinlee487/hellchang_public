package com.ncs.green;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import service.SService;
import vo.SaveVO;


@Controller
public class SaveController {
	@Autowired
	SService service;
	// MService service = new ServiceImpl();
	SaveVO vo ;
	Date date = new Date();
	
	
	@RequestMapping(value = "/myRoutine", method = RequestMethod.GET)
	public ModelAndView myRoutine(HttpServletRequest request, ModelAndView mv, SaveVO vo) {
		System.out.println("insert Test" + vo);
		if (service.saveMyRoutine(vo) > 0) {
			System.out.println("??");
			mv.setViewName("jsonView");
		} else {
			System.out.println("!!");
			mv.setViewName("jsonView");
		}
		return mv;
	}// saveMyRoutine

	@RequestMapping(value = "/mySaveRoutine")
	public ModelAndView mySaveRoutine(HttpServletRequest request, ModelAndView mv, SaveVO vo) {
		HttpSession session = request.getSession(false);
		vo.setId((String) session.getAttribute("logID"));
		System.out.println((String) session.getAttribute("logID"));
		List<SaveVO> list = service.selectList(vo);
		System.out.println("Test List : " +  list);
		System.out.println(vo.getKg());
		mv.addObject("myInfo", list); 
		mv.setViewName("jsonView");
		return mv;
	}// mdetail
	
	@RequestMapping(value = "/allRoutine")
	public ModelAndView allRoutine(HttpServletRequest request, ModelAndView mv, SaveVO vo) {
		vo.setTitle(request.getParameter("title"));
		List<SaveVO> list = service.allList(vo);
		System.out.println("allList : " +  list);
		mv.addObject("AllTest", list); 
		mv.setViewName("jsonView");
		return mv;
	}// mdetail

	
	@RequestMapping(value = "/blogTest")
	public ModelAndView blogTest(ModelAndView mv) {
		List<SaveVO> list = service.blogTest();
		if (list != null) {
			mv.addObject("Banana", list); // scope 이 request 와 동일
		} else {
			mv.addObject("message", "~~ 검색된 자료가 1건도 없습니다. ~~");
		}
		System.out.println(list);
		
		mv.setViewName("jsonView");
		return mv;
	} // mlist
	
	@RequestMapping(value = "/myblog")
	public ModelAndView myblog(ModelAndView mv) {
		List<SaveVO> list = service.blogTest();
		if (list != null) {
			mv.addObject("Banana", list); // scope 이 request 와 동일
		} else {
			mv.addObject("message", "~~ 검색된 자료가 1건도 없습니다. ~~");
		}
		System.out.println(list);
		
		mv.setViewName("jsonView");
		return mv;
	} // mlist
	
//	@RequestMapping(value = "/blogTest1")
//	public ModelAndView blogTest1(ModelAndView mv) {
//		List<SaveVO> list = service.blogTest();
//		if (list != null) {
//			mv.addObject("Banana", list); // scope 이 request 와 동일
//		} else {
//			mv.addObject("message", "~~ 검색된 자료가 1건도 없습니다. ~~");
//		}
//		System.out.println(list);
//		mv.setViewName("blogTest1");
//		return mv;
//	} // mlist
	
	
}
