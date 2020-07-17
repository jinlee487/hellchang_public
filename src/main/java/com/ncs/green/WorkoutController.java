package com.ncs.green;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.EService;
import vo.ExerciseVO;
import vo.MemberVO;


@Controller
public class WorkoutController {
	@Autowired
	EService service;
	// MService service = new ServiceImpl();
	ExerciseVO vo ;
	MemberVO mVo;

	
	@RequestMapping(value = "/routine")
	public ModelAndView TTTTTTT(ModelAndView mv, HttpServletRequest request) {
		request.getSession().getAttribute("logID");
		request.getSession().getAttribute("logName");
		System.out.println(request.getSession().getAttribute("logID"));
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
}
