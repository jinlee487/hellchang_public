package com.ncs.green;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WorkoutController {
	
	@RequestMapping(value = "/chest")
	public ModelAndView chest(ModelAndView mv) {
		mv.setViewName("workout/chest");
		return mv; 
	} // atestf
	
	

}
