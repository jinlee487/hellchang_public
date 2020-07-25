package com.ncs.green;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import service.SService;
import vo.HeartVO;
import vo.MemberVO;
import vo.SaveVO;


@Controller
public class SaveController {
	@Autowired
	SService service;
	// MService service = new ServiceImpl();
	SaveVO vo ;
	Date date = new Date();
	int rownum = 0;
	
	 
	@RequestMapping(value = "/myRoutineDel", method = RequestMethod.GET)
	public ModelAndView myRoutineDel(HttpServletRequest request, ModelAndView mv, SaveVO vo) {
		System.out.println("Deltet Test =>" + vo);
		if(vo != null) {
			if(service.delMyRoutine(vo) > 0) {
				System.out.println("�궘�젣濡� �뱾�뼱�샂");
				mv.setViewName("jsonView");
			}else {
				System.out.println("�궘�젣 �떎�뙣");
				mv.setViewName("jsonView");
			}
		}
		
		return mv;
	}// saveMyRoutine
	
	
	@RequestMapping(value = "/myRoutine", method = RequestMethod.GET)
	public ModelAndView myRoutine(HttpServletRequest request, ModelAndView mv, SaveVO vo) {
		System.out.println("insert Test =>" + vo);
		if (service.saveMyRoutine(vo) > 0 ) {
			System.out.println("??");
			mv.setViewName("jsonView");
		} else {
			System.out.println("!!");
			mv.setViewName("jsonView");
		}
		return mv;
	}// saveMyRoutine

	@RequestMapping(value = "/mySaveRoutine")
	public ModelAndView mySaveRoutine(HttpServletRequest request, ModelAndView mv, SaveVO vo) {
		HttpSession session = request.getSession(false);
		vo.setId((String) session.getAttribute("logID"));
		System.out.println((String) session.getAttribute("logID"));
		List<SaveVO> list = service.selectList(vo);
		System.out.println("Test List : " +  list);
		System.out.println(vo.getKg());
		mv.addObject("myInfo", list); 
		mv.setViewName("jsonView"); 
		return mv;
	}// mdetail
	
	@RequestMapping(value = "/allRoutine")
	public ModelAndView allRoutine(HttpServletRequest request, ModelAndView mv, SaveVO vo) {
		vo.setTitle(request.getParameter("title"));
		List<SaveVO> list = service.allList(vo);
		System.out.println("allList : " +  list);
		mv.addObject("AllTest", list); 
		mv.setViewName("jsonView");
		return mv;
	}// mdetail

	

	
	@RequestMapping(value = "/blogTest")
	public ModelAndView blogTest(HttpServletRequest request, ModelAndView mv, SaveVO vo) {
		int cnt = 0;
		SaveVO[] array = {}; 
		List<SaveVO> list = service.blogTest();
		array = list.toArray(new SaveVO[list.size()]);
		for(int i=0; i<array.length; i++) {
			vo.setId(array[i].getId());
			vo.setTitle(array[i].getTitle());
			List<SaveVO> test = service.findTest(vo);
			System.out.println("==============================");
			String IDTest = "forName"+i;
			mv.addObject(IDTest, test);
			System.out.println("blogTest : "+IDTest+test);
			rownum = array[i].getRownum();
			cnt ++;
			mv.addObject("num", cnt);
			mv.setViewName("jsonView");
		}
		System.out.println("blogTest : "+rownum );
		return mv;
	}// blog泥ロ솕硫� �긽�쐞 5媛�
	
	@RequestMapping(value = "/scrollP")
	public ModelAndView scrollP(HttpServletRequest request, ModelAndView mv, SaveVO vo, SaveVO svo) {
		int cnt = 0;
		System.out.println("scrollP : "+rownum);
		SaveVO[] array = {}; 
		rownum += 1;
		svo.setRownum(rownum);
		List<SaveVO> list = service.blogTestS(svo); 
		System.out.println("scrollP : "+ list);
		array = list.toArray(new SaveVO[list.size()]);
		for(int i=0; i<array.length; i++) {
			vo.setId(array[i].getId());
			vo.setTitle(array[i].getTitle());
			List<SaveVO> test = service.findTest(vo);
			vo.setRownum(svo.getRownum());
			System.out.println("==============================");
			String IDTest = "forName"+i;
			mv.addObject(IDTest, test);
			System.out.println("scrollP : "+IDTest+test);
			rownum = array[i].getRownum();
			cnt ++;
			mv.addObject("num", cnt);
			mv.setViewName("jsonView");
		}
		System.out.println("scrollP : "+rownum);
		return mv;
	}//
	
	@RequestMapping(value = "/heartUp")
	public ModelAndView heartUp(HttpServletRequest request, ModelAndView mv, SaveVO vo){
		String cnt = request.getParameter("rowcnt");
		System.out.println("String : " + cnt);
		int test = Integer.parseInt(cnt);
		System.out.println("integer : " + test);
		vo.setTitle(request.getParameter("title"));
		vo.setId(request.getParameter("id"));
		service.heartUp(vo);
		System.out.println(vo);
		
		vo = service.heartSelect(vo); 
		System.out.println(vo);
		
		mv.addObject("countHeartTest", vo.getHeart());
		
		mv.setViewName("jsonView");

		return mv;
	}// heartUp
}
