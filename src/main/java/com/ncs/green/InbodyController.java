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
import vo.InbodyPageVO;
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
	public ModelAndView inbodyDetailAjax(HttpServletRequest request, ModelAndView mv, InbodyVO vo, InbodyPageVO pvo,
			String direction) {

		HttpSession session = request.getSession(false);
		String id = (String) session.getAttribute("logID");
		System.out.println("how is this null vo => " + vo);
		vo.setId(id);
		pvo.setId(id);
		pvo = service.selectPageList(pvo);
		
		if (direction == null && vo.getDate_date() == null) {
			vo.setDate_date(pvo.getList().get((pvo.getList().size() - 1)).getDate_date());
			System.out.println("contorller datethis is null vo=> " + vo.getDate_date());
		} else if (direction == null&& vo.getDate_date() != null) {
			System.out.println("contorller datethis is not null vo=> " + vo.getDate_date());
		}
		if (direction != null && direction.equals("forward")
				&& !pvo.getList().get((pvo.getList().size() - 1)).getDate_date().equals(vo.getDate_date())) {
			System.out.println("this is weird forward");
			for (int i = 0; i < pvo.getList().size(); i++) {
				System.out.println("this is i => " + i);
				System.out.println(pvo.getList().get(i).getDate_date());
				if (pvo.getList().get(i).getDate_date().equals(vo.getDate_date())) {
					vo.setDate_date(pvo.getList().get(i + 1).getDate_date());
					break;
				}
			}
			System.out.println("contorller datethis is null vo=> " + vo.getDate_date());
		}else if (direction != null && direction.equals("forward")
				&& pvo.getList().get((pvo.getList().size() - 1)).getDate_date().equals(vo.getDate_date())) {
			System.out.println("contorller datethis is not null vo=> " + vo.getDate_date());
		}
		
		else if (direction != null && direction.equals("backward")
				&& !pvo.getList().get(0).getDate_date().equals(vo.getDate_date())) {
			System.out.println("this is weird backwards");
			for (int i = 0; i < pvo.getList().size(); i++) {
				System.out.println("this is i => " + i);
				System.out.println(pvo.getList().get(i).getDate_date());
				if (pvo.getList().get(i).getDate_date().equals(vo.getDate_date())) {
					vo.setDate_date(pvo.getList().get(i - 1).getDate_date());
					break;
				}
			}
			System.out.println("contorller datethis is null vo=> " + vo.getDate_date());
		}
		else if (direction != null && direction.equals("backward")
				&& pvo.getList().get(0).getDate_date().equals(vo.getDate_date())) {
			System.out.println("contorller datethis is not null vo=> " + vo.getDate_date());
		}
		System.out.println("this is vo before select one => " + vo);
		vo = service.selectOne(vo);	

		System.out.println("this is vo after selectOne =>\n" + vo.getDate_date());
		mv.addObject("InbodyVO", vo);
		mv.addObject("dateList", pvo.getList());
		mv.setViewName("jsonView");
		return mv;
	} //

	@RequestMapping(value = "/inbodyListAjax")
	public ModelAndView inbodyListAjax(HttpServletRequest request, ModelAndView mv, InbodyPageVO pvo) {
		
		if(pvo.getStart_date()!=null) {
			pvo.setCheck("true");
		}
		
		System.out.println("this is start date and end date => ");
		System.out.println(pvo.getStart_date());
		System.out.println(pvo.getEnd_date());
		HttpSession session = request.getSession(false);
		String id = (String) session.getAttribute("logID");
		System.out.println("how is this null vo => " + pvo);
		pvo.setId(id);

		pvo = service.selectGraphList(pvo);
		mv.addObject("InbodyVO_List", pvo.getList()); 
		for (InbodyVO a : pvo.getList()) {
			System.out.println("this is a => " + a);
			System.out.println("");
		}
		mv.setViewName("jsonView");
		return mv;
	} //
	
	@RequestMapping(value = "/inbodyInsertf")
	public ModelAndView inbodyInsertf(HttpServletRequest request, ModelAndView mv, InbodyVO vo) {
		mv.setViewName("inbody/inbody_insertForm");
		return mv;
	} //
	
	@RequestMapping(value = "/inbodyDetail")
	public ModelAndView inbodyDetail(HttpServletRequest request, ModelAndView mv, InbodyVO vo) {
		HttpSession session = request.getSession(false);
		String id = (String) session.getAttribute("logID");
		vo.setId(id);
		System.out.println("this is vo => " + vo);
		vo = service.selectOne(vo);	
		mv.addObject("inbodyVO", vo);
		System.out.println("this is vo afte detail => \n" + vo);
		if ("U".equals(request.getParameter("code"))) {
			// 내정보 수정화면으로
			mv.setViewName("inbody/inbody_updateForm");
		}
		return mv;
	}
	
	
	@RequestMapping(value = "/inbodyInsert")
	public ModelAndView inbodyInsert(HttpServletRequest request, ModelAndView mv, InbodyVO vo) {
		System.out.println(" we  are in inbodyInsert");
		HttpSession session = request.getSession(false);
		String id = (String) session.getAttribute("logID");
		System.out.println("how is this null vo => " + vo);
		vo.setId(id);
		vo.setDate_string(vo.getDate_date());
		if(service.selectOne(vo)!=null) {
			mv.addObject("check_date_duplicate", "duplicate!"); 
			mv.setViewName("user/inbody_insertForm");
			return mv;
		};
		System.out.println("this is getting inserted => " + vo);

		service.insert(vo);
		  
		mv.setViewName("user/profile_inbody");
		return mv;
	} //
	
}
