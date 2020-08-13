package com.ncs.green;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.EService;
import service.SService;
import vo.ExerciseVO;
import vo.MemberVO;
import vo.RmVO;
import vo.SaveVO;


@Controller
public class WorkoutController {
	@Autowired
	EService service;
	@Autowired
	SService sService;
	
	// MService service = new ServiceImpl();
	ExerciseVO vo ;
	MemberVO mVo;
	SaveVO sVo;

	
	@RequestMapping(value = "/routine")
	public ModelAndView TTTTTTT(ModelAndView mv, HttpServletRequest request) {
		
		List<SaveVO> list = sService.selectTList();
		
		System.out.println("list test => " + list);
		request.getSession().getAttribute("logID");
		request.getSession().getAttribute("logName");
		
		mv.addObject("list", list);
		
		mv.setViewName("myRoutine/myRoutine");
		return mv; 
	} // test

	// ajax memberList
	@RequestMapping(value = "/exercise")
	public ModelAndView exercise(ModelAndView mv, ExerciseVO vo) {
		System.out.println("Test : "+vo);
		List<ExerciseVO> list = service.selectList(vo);
		mv.addObject("target", list);
		mv.setViewName("jsonView");
		System.out.println(list.toString());
		return mv;
	}
	
	@RequestMapping(value = "/saveMyRM")
	public ModelAndView saveMyRM(HttpServletRequest request, ModelAndView mv, RmVO rvo) {
		if (service.saveMyRM(rvo) > 0 ) {			
			System.out.println("저장완료");
			System.out.println("1 " +rvo);
		} else {
			System.out.println("저장실패");
			System.out.println("2 " +rvo);
		}
		mv.setViewName("jsonView");
		return mv;
	}
	
	
	@RequestMapping(value = "/showMyRM")
	public ModelAndView showMyRM(HttpServletRequest request, ModelAndView mv, RmVO rvo) {
		HttpSession session = request.getSession(false);
		rvo.setId((String) session.getAttribute("logID"));
		List<RmVO> list = service.RmList(rvo);
		System.out.println(list);
		mv.addObject("myList",list);
		mv.setViewName("jsonView");
		return mv;
	}
	
	@RequestMapping(value = "/beforeData")
	public ModelAndView beforeData(HttpServletRequest request, ModelAndView mv, RmVO rvo) {
		HttpSession session = request.getSession(false);
		rvo.setId((String) session.getAttribute("logID"));
		rvo.setDate(request.getParameter("date"));
		List<RmVO> list = service.RmListB(rvo);
		if(list!=null) {
		System.out.println(list);
		mv.addObject("myList",list);
		}
		mv.setViewName("jsonView");
		return mv;
	}
	
	@RequestMapping(value = "/afterData")
	public ModelAndView afterData(HttpServletRequest request, ModelAndView mv, RmVO rvo) {
		HttpSession session = request.getSession(false);
		rvo.setId((String) session.getAttribute("logID"));
		rvo.setDate(request.getParameter("date"));
		List<RmVO> list = service.RmListA(rvo);
		if(list!=null) {
		System.out.println(list);
		mv.addObject("myList",list);
		}
		mv.setViewName("jsonView");
		return mv;
	}
}
