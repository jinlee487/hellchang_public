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
	} // 가슴운동
	
	@RequestMapping(value = "/back")
	public ModelAndView back(ModelAndView mv) {
		mv.setViewName("workout/back");
		return mv; 
	} // 가슴운동
	
	@RequestMapping(value = "/leg")
	public ModelAndView leg(ModelAndView mv) {
		mv.setViewName("workout/leg");
		return mv; 
	} // 가슴운동
	
	@RequestMapping(value = "/sholder")
	public ModelAndView sholder(ModelAndView mv) {
		mv.setViewName("workout/sholder");
		return mv; 
	} // 가슴운동
	
	@RequestMapping(value = "/arm")
	public ModelAndView arm(ModelAndView mv) {
		mv.setViewName("workout/arm");
		return mv; 
	} // 가슴운동
	
	@RequestMapping(value = "/abs")
	public ModelAndView abs(ModelAndView mv) {
		mv.setViewName("workout/abs");
		return mv; 
	} // 가슴운동
	
	@RequestMapping(value = "/core")
	public ModelAndView core(ModelAndView mv) {
		mv.setViewName("workout/core");
		return mv; 
	} // 가슴운동
	
	@RequestMapping(value = "/aerobic")
	public ModelAndView aerobic(ModelAndView mv) {
		mv.setViewName("workout/aerobic");
		return mv; 
	} // 가슴운동
	

}
