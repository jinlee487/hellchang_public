package com.ncs.green;



import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

		vo.setPhone();
		vo.setAddress();
		vo.setBirthday();
		String file2="resources/uploadImage/emptyImage.png";
		vo.setLevel("user");
		vo.setImage_path(file2);
		vo.setPassword(passwordEncoder.encode(vo.getPassword()));                        

		int cnt = service.insert(vo);
		
		if (cnt > 0) {
			// Join 성공
			mv.addObject("joinID", vo.getId());
			mv.addObject("fCode", "JS");
			mv.setViewName("login/loginForm");

		} else {
			// Join 실패
			mv.addObject("fCode", "JF");
			mv.setViewName("member/joinForm");

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
			System.out.println("vo null 통과" + vo.getPassword());
			if (passwordEncoder.matches(password, vo.getPassword())){
				System.out.println("match 통과");
				// 로그인 성공 -> login 정보 보관 (id, name을 session에) -> loginSuccess
				request.getSession().setAttribute("logID", vo.getId());
				request.getSession().setAttribute("logName", vo.getName());
				request.getSession().setAttribute("logPhone", vo.getPhone());
				request.getSession().setAttribute("logaddress", vo.getAddress());
				request.getSession().setAttribute("logaddress1", vo.getAddress1());
				request.getSession().setAttribute("logaddress2", vo.getAddress2());
				request.getSession().setAttribute("logzipcode", vo.getZipcode());
				request.getSession().setAttribute("logpassword", vo.getPassword());
				request.getSession().setAttribute("profile_image", vo.getImage_path());
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
	

	@RequestMapping(value = "/mdetail")
	public ModelAndView mdetail(HttpServletRequest request, ModelAndView mv, MemberVO vo){

		// 1) login 여부 확인
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
		vo = service.selectOne(vo);
		mv.addObject("myInfo", vo);

		// 4) 결과 ( Detail or Update 인지 )
		// => request.getParameter("code") 가 U 인지 확인
		mv.setViewName("user/profile_myProfile");
		if ("U".equals(request.getParameter("code"))) {
			// 내정보 수정화면으로
			session.setAttribute("encodedPassword", vo.getPassword());
			mv.setViewName("user/profile_Update");
		} else if ("E".equals(request.getParameter("code"))) { // 내정보 수정에서 오류 상황
			mv.addObject("message", "~~ 내정보 수정 오류  !!! 다시 하세요 ~~");
		}
		
		
		return mv;
		
	}// mdetail
	
	@RequestMapping(value = "/mupdate")
	public ModelAndView update(HttpServletRequest request, ModelAndView mv, MemberVO vo)
				throws IOException {
		if (vo.getPassword().length() > 3 && vo.getPassword()!=null) {
			
		vo.setPassword( passwordEncoder.encode(vo.getPassword()));
	}else {
		vo.setPassword((String)request.getSession().getAttribute("encodedPassword"));
	}
	if (service.update(vo) > 0) {
		request.getSession().setAttribute("loginName", vo.getName());
		mv.setViewName("redirect:home");
	} else {
		mv.setViewName("redirect:mdetail?code=E");
	}
	return mv;
	}// mupdate
	
	@RequestMapping(value = "/delete")
	public ModelAndView delete(HttpServletRequest request, ModelAndView mv, MemberVO vo) {
		
		String id = (String) request.getSession().getAttribute("logID");
		vo.setId(id);
		service.delete(vo);
		request.getSession().invalidate();
		
		mv.setViewName("home");
		//service.delete();
		
		return mv;
	} // login

}
