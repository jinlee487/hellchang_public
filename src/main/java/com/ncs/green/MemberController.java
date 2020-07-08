package com.ncs.green;



import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
	@RequestMapping(value = "/login")
	public ModelAndView login(HttpServletRequest request, ModelAndView mv, MemberVO vo) {

		String password = vo.getPassword();
		mv.setViewName("login/loginForm");

		vo = service.selectOne(vo);
		if (vo != null) { // id 존재
			if (vo.getPassword().equals(password)) {
				// 로그인 성공 -> login 정보 보관 (id, name을 session에) -> loginSuccess
				request.getSession().setAttribute("logID", vo.getId());
				request.getSession().setAttribute("logName", vo.getName());
				mv.setViewName("login/loginOn");
			} else {
				// Password 오류 -> 재로그인
				mv.addObject("message", " Password 오류 !! ~~ 다시 하세요 ~~");
			}
		} else { // ID 오류 -> 재로그인
			mv.addObject("message", " ID 오류 !! 다시 하세요 ~~");
		}
		return mv;
	} // login
	
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

	@RequestMapping(value = "/update")
	public ModelAndView update(HttpServletRequest request, ModelAndView mv, MemberVO vo)
				throws IOException {
		System.out.println("vo null Test=>"+vo);
		
		
		// password 입력값  확인 및 암호와 처리
		if (vo.getPassword().length() > 3 && vo.getPassword()!=null) {
				// new password 를 encode
			vo.setPassword( passwordEncoder.encode(vo.getPassword()));
		}else {	// session에 보관해 놓은 password 사용
			vo.setPassword((String)request.getSession().getAttribute("encodedPassword"));
		}
		
		if (service.update(vo) > 0) {
			// 회원수정 성공 -> memberList 출력
			// session 의 Attribute logName 도 변경
			request.getSession().setAttribute("loginName", vo.getName());
			mv.setViewName("updatef");
		} else {
			// 회원수정 실패 -> 내정보 보기 화면으로
			mv.setViewName("myProfile");
		} // if
		return mv;
	}// mupdate

}
