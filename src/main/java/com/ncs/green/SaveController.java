package com.ncs.green;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import service.SService;
import vo.HeartVO;
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
		int cnt = 0;
		SaveVO[] array = {}; 
		List<SaveVO> list = service.blogTest();
		array = list.toArray(new SaveVO[list.size()]);
		System.out.println("blogTest : " + list);
		for(int i=0; i<array.length; i++) {
			vo.setId(array[i].getId());
			vo.setTitle(array[i].getTitle());
			hvo.setId(array[i].getId());
			System.out.println("** id :"+hvo.getId());
			hvo.setTitle(array[i].getTitle());
			System.out.println("** title :"+ hvo.getTitle());
			hvo = service.heartSelect(hvo);
			System.out.println(hvo);
			System.out.println(hvo.getHeart());
			String HTest = "heart"+i;
			mv.addObject(HTest, hvo.getHeart());
			// id와 title 별로 저장된 heart 출력
			
			List<SaveVO> test = service.findTest(vo);
			System.out.println("findTest : " + test);
			// myRoutine *, member.name, member.image 뽑아냄 
			System.out.println("==============================");
			String IDTest = "forName"+i;
			mv.addObject(IDTest, test);
			// find 리스트를 IDTest에 담아 보냄 IDTest라는 이름으로
			// jsp에서 jsonData[i]로 사용됨 
			System.out.println("blogTest : "+IDTest+test);
			
			String Reply = "Reply"+i;
			rvo.setId(array[i].getId());
			rvo.setTitle(array[i].getTitle());
			if(service.replyResult(rvo) == null) { 
				mv.addObject(Reply, " ");
				System.out.println("댓글 왜 안들어와 : " + rvo);
			}else{
				rvo = service.replyResult(rvo);
				mv.addObject(Reply, rvo);
				System.out.println("rvo T2 : " + rvo);
			}
			rownum = array[i].getRownum();
			cnt ++;
			mv.addObject("num", cnt);
			mv.setViewName("jsonView");
		}
		System.out.println("blogTest : "+rownum );
		return mv;
	}// blog泥ロ솕硫� �긽�쐞 5媛�
	
	// 스크롤할 때 마다 출력되는 blog
	@RequestMapping(value = "/scrollP")
	public ModelAndView scrollP(HttpServletRequest request, ModelAndView mv, SaveVO vo, SaveVO svo, HeartVO hvo, ReplyVO rvo) {
		int row = Integer.parseInt(request.getParameter("rowcnt"));
		int cnt = 0;
		System.out.println("rownum : "+rownum);
		System.out.println("row : "+row);
		SaveVO[] array = {}; 
		rownum = rownum + row+1;
		// rownum에 출력된 개수 누적 저장
		System.out.println("rownum : "+rownum);

		svo.setRownum(rownum);
		List<SaveVO> list = service.blogTestS(svo); 
		// blogTests = 처음 5개 이후에 스크롤시 나머지 출력
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
			// title 과 id 당 저장된 좋아요 개수 가져오기 
			List<SaveVO> test = service.findTest(vo);
			// myRoutine *와 member의 name, image 뽑아냄 
			vo.setRownum(svo.getRownum());
			System.out.println("==============================");
			String IDTest = "forName"+i;
			mv.addObject(IDTest, test);
			System.out.println("scrollP : "+IDTest+test);
			String Reply = "Reply"+i;
			rvo.setId(array[i].getId());
			rvo.setTitle(array[i].getTitle());
			if(service.replyResult(rvo) == null) {
				mv.addObject(Reply, " ");
				System.out.println("rvo T1 : " + rvo);
			}else{
				rvo = service.replyResult(rvo);
				mv.addObject(Reply, rvo);
				System.out.println("rvo T2 : " + rvo);
			}
			rownum = array[i].getRownum();
			cnt ++;
			mv.addObject("num", cnt);
			mv.setViewName("jsonView");
		}
		System.out.println("scrollP : "+rownum);
		System.out.println();
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
<<<<<<< HEAD
	public ModelAndView replyInsert(HttpServletRequest request, ModelAndView mv, ReplyVO rvo){
		System.out.println("before rvo :" + rvo);
=======
	public ModelAndView replyInsert(HttpServletRequest request, ModelAndView mv, ReplyVO rvo,SaveVO vo){
>>>>>>> refs/remotes/origin/test_branch
		service.replyInsert(rvo);
		System.out.println("after rvo :" + rvo);
		rvo = service.replyResult(rvo);
		System.out.println("select after rvo :" + rvo);
		
		System.out.println("ReplyContent : " + rvo.getReplyContent());
		System.out.println("ReplyIdt : " + rvo.getReplyId());
		
		mv.addObject("replyContent", rvo.getReplyContent());
		mv.addObject("replyId", rvo.getId());
		mv.addObject("replyImg",vo.getUserImage());
		mv.addObject("replyName", vo.getName());
		System.out.println("rvo T2 : " + rvo);
		
		mv.setViewName("jsonView");
		return mv;
	}// reply
	
	@RequestMapping(value = "detail")
	public ModelAndView detail(HttpServletRequest request,ModelAndView mv, SaveVO vo, HeartVO hvo, ReplyVO rvo ) {
		HttpSession session = request.getSession(false);
		String logID="";
		if(session != null && session.getAttribute("logID")!=null) {
			logID= (String)session.getAttribute("logID");
		}
		
		vo=service.selectOne(vo);
		if(vo!=null) {
			mv.addObject("Detail",vo);
		}else {
			mv.addObject("fCode","BN");
		}
		return mv;
	}
	@RequestMapping(value="blist")
	public ModelAndView blist(ModelAndView mv) {
		List<SaveVO> list = service.selectTList();
		
		if(list !=null) {
			mv.addObject("Banana",list);
		}else {
			mv.addObject("message","error");
		}
		mv.setViewName("blog/myblog");
		return mv;
	}
	
}//class
