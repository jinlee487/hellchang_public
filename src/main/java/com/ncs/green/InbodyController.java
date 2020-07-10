package com.ncs.green;


import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import service.IService;
import vo.InbodyVO;

@Controller
public class InbodyController {
	@Autowired
	IService service;
	
	@RequestMapping(value = "/dtestf")
	public ModelAndView inbodyf(ModelAndView mv) {
		mv.setViewName("data/data_test");
		return mv; 
	} // 
	@RequestMapping(value = "/inbodyDetailAjax")
	public ModelAndView inbody(HttpServletRequest request, ModelAndView mv, InbodyVO vo) {
		
		HttpSession session = request.getSession(false);
		String id = (String) session.getAttribute("logID");
		vo.setId(id);
		vo = service.selectOne(vo);
		mv.addObject("InbodyVO", vo);
		mv.setViewName("jsonView");
		return mv; 
	} // 
	
	@RequestMapping(value = "/inbodyList")
	public ModelAndView inbody(ModelAndView mv, InbodyVO vo) {
		List<InbodyVO> list = service.selectList(vo);
		if (list != null) {
			mv.addObject("Banana", list); // scope 이 request 와 동일
		} else {
			mv.addObject("message", "~~ 검색된 자료가 1건도 없습니다. ~~");
		}
		mv.setViewName("user/profile_inbody");
		return mv; 
	} // 
	
	
}


