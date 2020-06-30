package com.ncs.green;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	
	@RequestMapping(value = "/noob")
	public ModelAndView noob(ModelAndView mv) {
		mv.setViewName("noob/seq");
		return mv; 
	} // 초보자를 위한 페이지
	
	@RequestMapping(value = "/muscleUp")
	public ModelAndView muscleUp(ModelAndView mv) {
		mv.setViewName("noob/muscleUp");
		return mv; 
	} // 근성장를 위한 페이지
	
	@RequestMapping(value = "/diet")
	public ModelAndView diet(ModelAndView mv) {
		mv.setViewName("noob/diet");
		return mv; 
	} // 다이어터를 위한 페이지
	
	@RequestMapping(value = "/maintain")
	public ModelAndView maintain(ModelAndView mv) {
		mv.setViewName("noob/maintain");
		return mv; 
	} // 유지어터를 위한 페이지
	
	// ------------- 무분할 ----------------------
	@RequestMapping(value = "/noSeq")
	public ModelAndView noSeq(ModelAndView mv) {
		mv.setViewName("noob/routine/noSeq");
		return mv; 
	} // 근성장 5분할 어깨
	
	// ------------- 2분할 ----------------------
	@RequestMapping(value = "/muscleUpPush")
	public ModelAndView muscleUpPush(ModelAndView mv) {
		mv.setViewName("noob/routine/MuscleUpPush");
		return mv; 
	} // 근성장 2분할 밀기
	
	@RequestMapping(value = "/muscleUpPushP")
	public ModelAndView muscleUpPushP(ModelAndView mv) {
		mv.setViewName("noob/routine/MuscleUpPushP");
		return mv; 
	} // 근성장 2분할 밀기(PopUp)
	
	@RequestMapping(value = "/muscleUpPull")
	public ModelAndView muscleUpPull(ModelAndView mv) {
		mv.setViewName("noob/routine/MuscleUpPull");
		return mv; 
	} // 근성장 2분할 당기기
	
	@RequestMapping(value = "/muscleUpPullP")
	public ModelAndView muscleUpPullP(ModelAndView mv) {
		mv.setViewName("noob/routine/MuscleUpPullP");
		return mv; 
	} // 근성장 2분할 당기기(PopUp)
	
	// ---------3분할 ---------------------
	
	@RequestMapping(value = "/muscleChest")
	public ModelAndView muscleChest(ModelAndView mv) {
		mv.setViewName("noob/routine/muscleChest");
		return mv; 
	} // 근성장 3분할 가슴
	
	@RequestMapping(value = "/muscleBack")
	public ModelAndView muscleBack(ModelAndView mv) {
		mv.setViewName("noob/routine/muscleBack");
		return mv; 
	} // 근성장 3분할 등
	
	@RequestMapping(value = "/muscleLeg")
	public ModelAndView muscleLeg(ModelAndView mv) {
		mv.setViewName("noob/routine/muscleLeg");
		return mv; 
	} // 근성장 3분할 하체
	
	
	// -------------5분할--------------
	@RequestMapping(value = "/muscleChest5")
	public ModelAndView muscleChest5(ModelAndView mv) {
		mv.setViewName("noob/routine/muscleChest5");
		return mv; 
	} // 근성장 5분할 가슴
	
	@RequestMapping(value = "/muscleBack5")
	public ModelAndView muscleBack5(ModelAndView mv) {
		mv.setViewName("noob/routine/muscleBack5");
		return mv; 
	} // 근성장 5분할 등
	
	@RequestMapping(value = "/muscleLeg5")
	public ModelAndView muscleLeg5(ModelAndView mv) {
		mv.setViewName("noob/routine/muscleLeg5");
		return mv; 
	} // 근성장 5분할 하체
	
	@RequestMapping(value = "/muscleSholder5")
	public ModelAndView muscleSholder5(ModelAndView mv) {
		mv.setViewName("noob/routine/muscleSholder5");
		return mv; 
	} // 근성장 5분할 어깨
	
	@RequestMapping(value = "/muscleArm5")
	public ModelAndView muscleArm5(ModelAndView mv) {
		mv.setViewName("noob/routine/muscleArm5");
		return mv; 
	} // 근성장 5분할 어깨
	
	
	// AjaxTest
	@RequestMapping(value = "/one")
	public ModelAndView one(ModelAndView mv) {
		mv.setViewName("noob/oneRm");
		return mv; 
	}
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = {"/","home"}, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "home";
	}
	
}
