package com.ncs.green;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	
	@RequestMapping(value = "/loginf")
	public ModelAndView loginf(ModelAndView mv) {
		mv.setViewName("login/loginForm");
		return mv; 
	} // atestf
	
	@RequestMapping(value = "/joinf")
	public ModelAndView joinf(ModelAndView mv) {
		mv.setViewName("member/joinForm");
		return mv; 
	} // atestf
	@RequestMapping(value = "/dataf")
	public ModelAndView dataf(ModelAndView mv) {
		mv.setViewName("data/comboCharttest");
		return mv; 
	} // 
	@RequestMapping(value = "/prof")
	public ModelAndView prof(ModelAndView mv) {
		mv.setViewName("user/profile");
		return mv; 
	} // 
	@RequestMapping(value = "/inbodyf")
	public ModelAndView inbodyf(ModelAndView mv) {
		mv.setViewName("user/profile_inbody");
		return mv; 
	} // 

}
