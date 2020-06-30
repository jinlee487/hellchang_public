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
	
	// AjaxTest
	@RequestMapping(value = "/noob")
	public ModelAndView atestf(ModelAndView mv) {
		mv.setViewName("noob/seq");
		return mv; 
	} // atestf
	
	// AjaxTest
	@RequestMapping(value = "/one")
	public ModelAndView one(ModelAndView mv) {
		mv.setViewName("noob/oneRm");
		return mv; 
	} // atestf
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = {"/","home"}, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "home";
	}
	
}
