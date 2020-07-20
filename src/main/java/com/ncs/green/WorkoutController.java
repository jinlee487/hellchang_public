package com.ncs.green;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.EService;
import service.SService;
import vo.ExerciseVO;
import vo.MemberVO;
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
}
