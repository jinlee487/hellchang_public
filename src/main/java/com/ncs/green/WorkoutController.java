package com.ncs.green;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.EService;
import vo.ExerciseVO;


@Controller
public class WorkoutController {
	@Autowired
	EService service;
	// MService service = new ServiceImpl();
	ExerciseVO vo ;
	
	
	@RequestMapping(value = "/routine")
	public ModelAndView TTTTTTT(ModelAndView mv) {
		mv.setViewName("user/routine");
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
	
	/*
	@RequestMapping(value = "/exercise")
	public ModelAndView exercise(ModelAndView mv, ExerciseVO vo) {
		vo = service.selectOne(vo);
		if (vo != null) {
			mv.addObject("Name", vo.getName());
		} else {
			mv.addObject("ECode", "Error");
		}
		mv.setViewName("jsonView");
	return mv;
	
	}// bdetail
	*/
}
