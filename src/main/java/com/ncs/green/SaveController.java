package com.ncs.green;



import java.util.Date;

import javax.servlet.http.HttpServletRequest;

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
	
	@RequestMapping(value = "/myRoutine", method = RequestMethod.GET)
	public ModelAndView myRoutine(HttpServletRequest request, ModelAndView mv, SaveVO vo) {
		Date date = new Date();
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
}
