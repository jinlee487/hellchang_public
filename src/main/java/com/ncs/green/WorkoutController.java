package com.ncs.green;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class WorkoutController {
	
	@RequestMapping(value = "/TTTTTTT")
	public ModelAndView TTTTTTT(ModelAndView mv) {
		mv.setViewName("user/test");
		return mv; 
	} // atestf

}
