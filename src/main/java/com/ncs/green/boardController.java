package com.ncs.green;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.SService;
import vo.HeartVO;
import vo.MemberVO;
import vo.ReplyVO;
import vo.SaveVO;

@Controller
public class boardController {
	@Autowired
	SService service;
	
	private static final Logger logger = LoggerFactory.getLogger(boardController.class);

	@RequestMapping(value = "/blog")
	public ModelAndView blog(ModelAndView mv) {
		mv.setViewName("blog/blog");
		return mv;
	} // atestf

	@RequestMapping(value = "/myblog")
	public ModelAndView myblog(ModelAndView mv, MemberVO vo, HttpServletRequest request) {
		String id = "";
		HttpSession session = request.getSession(false);
		if (session != null && session.getAttribute("logID") != null) {
			id = (String) session.getAttribute("logID");
		} else {
			// login 하도록 유도 후에 메서드 return 으로 종료
			mv.addObject("message", "~~ 로그인 후에 하세요 ~~");
			mv.setViewName("login/loginForm");
			return mv;
		}
		vo.setId(id);
		mv.setViewName("blog/myblog");
		return mv;
	} // atestf

	@RequestMapping(value = "/detail")
	public ModelAndView detail(HttpServletRequest request, ModelAndView mv, SaveVO vo) {
		String clickID = vo.getId();
		vo.setId(clickID);
		SaveVO[] array = {};
		System.out.println(clickID);
		List<SaveVO> list = service.myDetail(vo);
		array = list.toArray(new SaveVO[list.size()]);
		System.out.println("Array.length : " + array.length);
		System.out.println("list.size() : " + list.size());
		mv.addObject("myInfo", array);
		mv.addObject("myImage", array[list.size()-1].getUserImage());
		mv.addObject("myName", array[list.size()-1].getUserName());
		mv.addObject("myId", array[list.size()-1].getId());
		mv.addObject("countRoutine", list.size());
		mv.setViewName("blog/detail");
		return mv;
	} // detail
	
	@RequestMapping(value = "/routineDetail")
	public ModelAndView routineDetail(HttpServletRequest request, ModelAndView mv, SaveVO vo, HeartVO hvo, ReplyVO rvo) {
		SaveVO[] array = {};
		ReplyVO[] replyArray = {};
		List<SaveVO> list = service.routineModal(vo);
		SaveVO[] newModal = new SaveVO[list.size()];
		array = list.toArray(new SaveVO[list.size()]);
		for(int i=0; i<array.length; i++) {
			newModal[i] = array[i];
		}
		hvo.setId(array[0].getId());
		hvo.setTitle(array[0].getTitle());
		hvo = service.heartSelect(hvo);

		rvo.setId(array[0].getId());
		rvo.setTitle(array[0].getTitle());
		List<ReplyVO> replyList = service.showReply(rvo);
		System.out.println(replyList);
		replyArray = replyList.toArray(new ReplyVO[replyList.size()]);
		for(int i=0; i<replyArray.length; i++) {
			replyArray[i] = replyArray[i];
		}
		
		
		mv.addObject("heartCnt",hvo.getHeart());
		mv.addObject("arrayModal",newModal);
		mv.addObject("arrayReply",replyArray);
		mv.addObject("num", list.size());
		mv.addObject("replyCnt", replyList.size());
		mv.setViewName("jsonView");
		return mv;
	} // routineDetail
	
	
}
