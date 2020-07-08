package com.ncs.green;



import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import service.MService;
import vo.MemberVO;

@Controller
public class MemberController {
	@Autowired
	MService service;
	@Autowired
	BCryptPasswordEncoder passwordEncoder;

	@RequestMapping(value = "/loginf")
	public ModelAndView loginf(ModelAndView mv) {
		mv.setViewName("login/loginForm");
		return mv; 
	} // atestf
	
	@RequestMapping(value = "/joinf")
	public ModelAndView joinf(ModelAndView mv) {
		mv.setViewName("member/joinForm");
		return mv; 
	} // atestf
	@RequestMapping(value = "/dataf")
	public ModelAndView dataf(ModelAndView mv) {
		mv.setViewName("data/comboCharttest");
		return mv; 
	} // 
	@RequestMapping(value = "/prof")
	public ModelAndView prof(ModelAndView mv) {
		mv.setViewName("user/profile");
		return mv; 
	} // 
	@RequestMapping(value = "/updatef")
	public ModelAndView updatef(ModelAndView mv) {
		mv.setViewName("user/profile_Update");
		return mv; 
	} // 
	@RequestMapping(value = "/inbodyf")
	public ModelAndView inbodyf(ModelAndView mv) {
		mv.setViewName("user/profile_inbody");
		return mv; 
	} // 
	
	@RequestMapping(value = "/myProfile")
	public ModelAndView myProfile(ModelAndView mv) {
		mv.setViewName("user/profile_myProfile");
		return mv; 
	} // 
	
	@RequestMapping(value = "/manageWorkout")
	public ModelAndView manageWorkout(ModelAndView mv) {
		mv.setViewName("user/profile_manageWorkout");
		return mv; 
	} // 
	
	@RequestMapping(value = "/mlist")
	public ModelAndView mlist(ModelAndView mv) {
		List<MemberVO> list = service.selectList();
		if (list != null) {
			mv.addObject("Banana", list); // scope 이 request 와 동일
		} else {
			mv.addObject("message", "~~ 검색된 자료가 1건도 없습니다. ~~");
		}
		mv.setViewName("member/memberList");
		return mv;
	} // mlist
	
	@RequestMapping(value = "/bcrypt")
	public ModelAndView bcrypt(ModelAndView mv, MemberVO vo) {
		String password = "123!";
		String password1 = passwordEncoder.encode(password) ;
		String password2 = passwordEncoder.encode(password) ;
		// �썝蹂멸낵 鍮꾧탳 媛�뒫
		System.out.println("password1 =>"+password1);
		System.out.println("password1 maches =>"+passwordEncoder.matches(password, password1)); // T
		System.out.println("password2 =>"+password2);
		System.out.println("password2 maches =>"+passwordEncoder.matches(password, password2)); // T 
		System.out.println("password1 equals password2 =>"+password1.equals(password2));  // F
		mv.setViewName("home");
		return mv;
	}// bcrypt
	
	@RequestMapping(value = "/join")
	public ModelAndView join(ModelAndView mv, MemberVO vo) {
		
		System.out.println("Location is in join controller => \n"+vo);
		System.out.println("this is not printing...");
		mv.setViewName("member/doFinish");
		String file2="resources/uploadImage/emptyImage.png";
		vo.setLevel("user");
		vo.setImage_path(file2);
		vo.setPassword(passwordEncoder.encode(vo.getPassword()));                        
		System.out.println("after the set!"
				+ " => \n"+vo);

		int cnt = service.insert(vo);
//		int cnt2 = service.insert(vo);
		
		if (cnt > 0) {
			// Join 성공
			mv.addObject("joinID", vo.getId());
			mv.addObject("fCode", "JS");
		} else {
			// Join 실패
			mv.addObject("fCode", "JF");
		}
		return mv;
	}// join
	

	
	@RequestMapping(value = "/login")
	public ModelAndView login(HttpServletRequest request, ModelAndView mv, MemberVO vo) {

		String password = vo.getPassword();
		System.out.println(vo);
		mv.setViewName("login/loginForm");

		vo = service.selectOne(vo);
		System.out.println(vo);
		
		if (vo != null) { // id 존재
			if (vo.getPassword().equals(password)) {
				// 로그인 성공 -> login 정보 보관 (id, name을 session에) -> loginSuccess
				request.getSession().setAttribute("logID", vo.getId());
				request.getSession().setAttribute("logName", vo.getName());
				mv.setViewName("home");
			} else {
				// Password 오류 -> 재로그인
				mv.addObject("message", "비밀번호가 틀렸습니다.");
			}
		} else { // ID 오류 -> 재로그인
			mv.addObject("message", "없는 ID입니다.");
		}
		return mv;
	} // login

	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpServletRequest request, ModelAndView mv) {
		request.getSession().invalidate();
		mv.setViewName("redirect:home"); 
		mv.setViewName("home");
		return mv;
	} // login

}
