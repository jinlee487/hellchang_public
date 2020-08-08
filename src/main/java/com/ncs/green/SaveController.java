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
import vo.ReplyVO;
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
	public ModelAndView myRoutine(HttpServletRequest request, ModelAndView mv, SaveVO vo, HeartVO hvo) {
		System.out.println("insert Test =>" + vo);
		if (service.saveMyRoutine(vo) > 0 ) {			
			System.out.println("??");
			mv.setViewName("jsonView");
		} else {
			System.out.println("!!");
			mv.setViewName("jsonView");
		}
		hvo.setId(vo.getId());
		hvo.setTitle(vo.getTitle());
		service.heartTest(hvo);
//		위 3줄 추가한 이유 테이블 따로 생성 해주기 위해서
		return mv;
	}// saveMyRoutine

	@RequestMapping(value = "/mySaveRoutine")
	public ModelAndView mySaveRoutine(HttpServletRequest request, ModelAndView mv, SaveVO vo) {
		HttpSession session = request.getSession(false);
		vo.setId((String) session.getAttribute("logID"));
		vo.setDate(request.getParameter("date"));
		System.out.println(vo.getDate()); 
		List<SaveVO> list = service.selectList(vo);
		System.out.println("Test List : " +  list);
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

	

	// 처음 blog에서 출력되는  5개
	@RequestMapping(value = "/blogTest")
	public ModelAndView blogTest(HttpServletRequest request, ModelAndView mv, SaveVO vo, HeartVO hvo, ReplyVO rvo) {
		SaveVO[] array = {};
		SaveVO[] array1 = {};
		List<SaveVO> list = service.blogTest();
		Object[] array2 = new Object[list.size()]; // array in array
		int[] harray = new int[list.size()]; // getHeart array
		Object[] rarray = new Object[list.size()]; // reply Array
		array = list.toArray(new SaveVO[list.size()]); // blogTest array
		System.out.println("blogTest : " + list);
		for(int i=0; i<array.length; i++) {
			vo.setId(array[i].getId());
			vo.setTitle(array[i].getTitle());
			List<SaveVO> test = service.findTest(vo);
			array1 = test.toArray(new SaveVO[test.size()]);
			array2[i] = array1;
			// table row array
			
			hvo.setId(array[i].getId());
			hvo.setTitle(array[i].getTitle());
			hvo = service.heartSelect(hvo);
			harray[i] = hvo.getHeart();
			// heart array
			
			rvo.setId(array[i].getId());
			rvo.setTitle(array[i].getTitle());
			if(service.replyResult(rvo) == null) {
				rarray[i] = "";
			}else{
				rvo = service.replyResult(rvo);
				rarray[i] = rvo;
				
			}
			rownum = array[i].getRownum();
		}
		System.out.println(array2);
		mv.addObject("array2", array2);
		mv.addObject("listSize", list.size());
		mv.addObject("harray", harray);
		mv.addObject("rarray", rarray);
		mv.setViewName("jsonView");
		return mv;
	}// blog泥ロ솕硫� �긽�쐞 5媛�
	
	// 스크롤할 때 마다 출력되는 blog
	@RequestMapping(value = "/scrollP")
	public ModelAndView scrollP(HttpServletRequest request, ModelAndView mv, SaveVO vo, SaveVO svo, HeartVO hvo, ReplyVO rvo) {
		int row = Integer.parseInt(request.getParameter("rowcnt"));
		rownum = rownum + row+1;

		svo.setRownum(rownum);
		SaveVO[] array = {};
		SaveVO[] array1 = {};
		List<SaveVO> list = service.blogTestS(svo);
		Object[] array2 = new Object[list.size()]; // array in array
		int[] harray = new int[list.size()]; // getHeart array
		Object[] rarray = new Object[list.size()]; // reply Array
		array = list.toArray(new SaveVO[list.size()]); // blogTest array
		System.out.println("blogTest : " + list);
		for(int i=0; i<array.length; i++) {
			vo.setId(array[i].getId());
			vo.setTitle(array[i].getTitle());
			List<SaveVO> test = service.findTest(vo);
			array1 = test.toArray(new SaveVO[test.size()]);
			array2[i] = array1;
			// table row array
			
			hvo.setId(array[i].getId());
			hvo.setTitle(array[i].getTitle());
			hvo = service.heartSelect(hvo);
			harray[i] = hvo.getHeart();
			// heart array
			
			rvo.setId(array[i].getId());
			rvo.setTitle(array[i].getTitle());
			if(service.replyResult(rvo) == null) {
				rarray[i] = "";
			}else{
				rvo = service.replyResult(rvo);
				rarray[i] = rvo;
				
			}
			rownum = array[i].getRownum();
			
		}
		System.out.println(array2);
		mv.addObject("array2", array2);
		mv.addObject("listSize", list.size());
		mv.addObject("harray", harray);
		mv.addObject("rarray", rarray);
		mv.setViewName("jsonView");
		return mv;
	}//
	
	@RequestMapping(value = "/heartUp")
	public ModelAndView heartUp(HttpServletRequest request, ModelAndView mv, HeartVO hvo){
		hvo.setId(request.getParameter("id"));
		hvo.setTitle(request.getParameter("title"));
		System.out.println("id : " + hvo.getId());
		System.out.println("title : " + hvo.getTitle());
		service.heartUp(hvo);
		System.out.println("heartUp : "+hvo);
		hvo = service.heartSelect(hvo); 
		System.out.println("heartSelect : " +hvo);
		
		mv.addObject("countHeartTest", hvo.getHeart());
		
		mv.setViewName("jsonView");

		return mv;
	}// heartUp
	
	@RequestMapping(value = "/replyInsert")
	public ModelAndView replyInsert(HttpServletRequest request, ModelAndView mv, ReplyVO rvo){
		service.replyInsert(rvo);
		System.out.println(rvo);
		rvo = service.replyResult(rvo);
		mv.addObject("replyResult", rvo);
		System.out.println("rvo T2 : " + rvo);
		
		mv.setViewName("jsonView");
		return mv;
	}// reply
	
	
}//class
