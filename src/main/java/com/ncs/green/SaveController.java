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
import vo.MemberVO;
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
		
		vo.setDate(date);
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
	/*
	@RequestMapping(value = "/mySaveRoutine")
	public ModelAndView mySaveRoutine(HttpServletRequest request, ModelAndView mv, SaveVO vo) {

		// 1) login 여부 확인
		String id = "";
		HttpSession session = request.getSession(false);
		if (session != null && session.getAttribute("logID") != null) {
			id = (String) session.getAttribute("logID");
		} else {
			// login 하도록 유도 후에 메서드 return 으로 종료
			mv.addObject("message", "~~ 로그인 후에 하세요 ~~");
			return mv;
		}
		vo.setId(id);
		vo = service.selectOne(vo);
		System.out.println("TEST44444 : " +  vo);
		mv.setViewName("jsonView");
		mv.addObject("myInfo", vo);

		return mv;
	}// mdetail
	*/
}
