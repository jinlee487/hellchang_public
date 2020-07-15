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
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/noob")
	public ModelAndView noob(ModelAndView mv) {
		mv.setViewName("noob/seq");
		return mv; 
	} // 珥덈낫�옄瑜� �쐞�븳 �럹�씠吏�
	
	@RequestMapping(value = "/muscleUp")
	public ModelAndView muscleUp(ModelAndView mv) {
		mv.setViewName("noob/muscleUp");
		return mv; 
	} // 洹쇱꽦�옣瑜� �쐞�븳 �럹�씠吏�
	
	@RequestMapping(value = "/diet")
	public ModelAndView diet(ModelAndView mv) {
		mv.setViewName("noob/diet");
		return mv; 
	} // �떎�씠�뼱�꽣瑜� �쐞�븳 �럹�씠吏�
	
	@RequestMapping(value = "/maintain")
	public ModelAndView maintain(ModelAndView mv) {
		mv.setViewName("noob/maintain");
		return mv; 
	} // �쑀吏��뼱�꽣瑜� �쐞�븳 �럹�씠吏�
	
	// ------------- 臾대텇�븷 ----------------------
	@RequestMapping(value = "/noSeq")
	public ModelAndView noSeq(ModelAndView mv) {
		mv.setViewName("noob/routine/noSeq");
		return mv; 
	} // 洹쇱꽦�옣 5遺꾪븷 �뼱源�
	
	// ------------- 2遺꾪븷 ----------------------
	@RequestMapping(value = "/muscleUpPush")
	public ModelAndView muscleUpPush(ModelAndView mv) {
		mv.setViewName("noob/routine/MuscleUpPush");
		return mv; 
	} // 洹쇱꽦�옣 2遺꾪븷 諛�湲�
	
	@RequestMapping(value = "/muscleUpPushP")
	public ModelAndView muscleUpPushP(ModelAndView mv) {
		mv.setViewName("noob/routine/MuscleUpPushP");
		return mv; 
	} // 洹쇱꽦�옣 2遺꾪븷 諛�湲�(PopUp)
	
	@RequestMapping(value = "/muscleUpPull")
	public ModelAndView muscleUpPull(ModelAndView mv) {
		mv.setViewName("noob/routine/MuscleUpPull");
		return mv; 
	} // 洹쇱꽦�옣 2遺꾪븷 �떦湲곌린
	
	@RequestMapping(value = "/muscleUpPullP")
	public ModelAndView muscleUpPullP(ModelAndView mv) {
		mv.setViewName("noob/routine/MuscleUpPullP");
		return mv; 
	} // 洹쇱꽦�옣 2遺꾪븷 �떦湲곌린(PopUp)
	
	// ---------3遺꾪븷 ---------------------
	
	@RequestMapping(value = "/muscleChest")
	public ModelAndView muscleChest(ModelAndView mv) {
		mv.setViewName("noob/routine/muscleChest");
		return mv; 
	} // 洹쇱꽦�옣 3遺꾪븷 媛��뒾
	
	@RequestMapping(value = "/muscleBack")
	public ModelAndView muscleBack(ModelAndView mv) {
		mv.setViewName("noob/routine/muscleBack");
		return mv; 
	} // 洹쇱꽦�옣 3遺꾪븷 �벑
	
	@RequestMapping(value = "/muscleLeg")
	public ModelAndView muscleLeg(ModelAndView mv) {
		mv.setViewName("noob/routine/muscleLeg");
		return mv; 
	} // 洹쇱꽦�옣 3遺꾪븷 �븯泥�
	
	
	// -------------5遺꾪븷--------------
	@RequestMapping(value = "/muscleChest5")
	public ModelAndView muscleChest5(ModelAndView mv) {
		mv.setViewName("noob/routine/muscleChest5");
		return mv; 
	} // 洹쇱꽦�옣 5遺꾪븷 媛��뒾
	
	@RequestMapping(value = "/muscleBack5")
	public ModelAndView muscleBack5(ModelAndView mv) {
		mv.setViewName("noob/routine/muscleBack5");
		return mv; 
	} // 洹쇱꽦�옣 5遺꾪븷 �벑
	
	@RequestMapping(value = "/muscleLeg5")
	public ModelAndView muscleLeg5(ModelAndView mv) {
		mv.setViewName("noob/routine/muscleLeg5");
		return mv; 
	} // 洹쇱꽦�옣 5遺꾪븷 �븯泥�
	
	@RequestMapping(value = "/muscleSholder5")
	public ModelAndView muscleSholder5(ModelAndView mv) {
		mv.setViewName("noob/routine/muscleSholder5");
		return mv; 
	} // 洹쇱꽦�옣 5遺꾪븷 �뼱源�
	
	@RequestMapping(value = "/muscleArm5")
	public ModelAndView muscleArm5(ModelAndView mv) {
		mv.setViewName("noob/routine/muscleArm5");
		return mv; 
	} // 洹쇱꽦�옣 5遺꾪븷 �뼱源�
	
	
	// AjaxTest
	@RequestMapping(value = "/one")
	public ModelAndView one(ModelAndView mv) {
		mv.setViewName("noob/oneRm");
		return mv; 
	}

	
	@RequestMapping(value = {"/","home"}, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "home";
	}

	@RequestMapping(value = {"/home2"}, method = RequestMethod.GET)
	public String home2(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return "home2";
	}

	
}
