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

	

	
	@RequestMapping(value = "/blogTest")
	public ModelAndView blogTest(HttpServletRequest request, ModelAndView mv, SaveVO vo, HeartVO hvo) {
		int cnt = 0;
		SaveVO[] array = {}; 
		List<SaveVO> list = service.blogTest();
		array = list.toArray(new SaveVO[list.size()]);
		for(int i=0; i<array.length; i++) {
			vo.setId(array[i].getId());
			vo.setTitle(array[i].getTitle());
			
//			hvo.setId(array[i].getId());
//			hvo.setTitle(array[i].getTitle());
//			hvo = service.heartSelect(hvo);
//			String HTest = "heart"+i;
//			mv.addObject(HTest, hvo.getHeart());
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
	public ModelAndView scrollP(HttpServletRequest request, ModelAndView mv, SaveVO vo, SaveVO svo, HeartVO hvo) {
		int row = Integer.parseInt(request.getParameter("rowcnt"));
		int cnt = 0;
		System.out.println("scrollP : "+rownum);
		SaveVO[] array = {}; 
		rownum = rownum + row;
		svo.setRownum(rownum);
		List<SaveVO> list = service.blogTestS(svo); 
		System.out.println("scrollP : "+ list);
		array = list.toArray(new SaveVO[list.size()]);
		for(int i=0; i<array.length; i++) {
			vo.setId(array[i].getId());
			vo.setTitle(array[i].getTitle());
			hvo.setId(array[i].getId());
			hvo.setTitle(array[i].getTitle());
			hvo = service.heartSelect(hvo);
			String HTest = "heart"+i;
			mv.addObject(HTest, hvo.getHeart());
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
	public ModelAndView heartUp(HttpServletRequest request, ModelAndView mv, SaveVO vo, HeartVO hvo){
		hvo.setTitle(request.getParameter("title"));
		hvo.setId(request.getParameter("id"));
		service.heartUp(hvo);
		System.out.println("now Test : "+hvo);
		
		hvo = service.heartSelect(hvo); 
		System.out.println(hvo);
		
		mv.addObject("countHeartTest", hvo.getHeart());
		
		mv.setViewName("jsonView");

		return mv;
	}// heartUp
	
	@RequestMapping(value = "/replyInsert")
	public ModelAndView replyInsert(HttpServletRequest request, ModelAndView mv, ReplyVO rvo){
		System.out.println("insert Test =>" + rvo);
		if (service.replyInsert(rvo) > 0 ) {			
			System.out.println(rvo);
			rvo.setId(request.getParameter("id"));
			rvo.setTitle(request.getParameter("title"));
			List<ReplyVO> list = service.replyResult(rvo); 
			System.out.println(list);
			
			mv.addObject("replyTest", list);
		} 
		
		mv.setViewName("jsonView");

		return mv;
	}// reply
}
