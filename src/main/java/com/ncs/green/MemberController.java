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
import vo.SaveVO;

@Controller
public class MemberController {
	@Autowired
	MService service;
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
    
    
	
	@RequestMapping(value = "/login")
	public ModelAndView login(HttpServletRequest request, ModelAndView mv, MemberVO vo, SaveVO svo) {

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
	
	@RequestMapping(value = "/imgUpdate")
	public ModelAndView imgUpdate(MemberVO vo, HttpServletRequest request) throws IOException {
		ModelAndView mv = new ModelAndView();
		int code=0;
		if(request.getParameter("code") != null) {
			code = Integer.parseInt(request.getParameter("code"));
		}
	
		MultipartFile image_file;
		String file1, file2;
		
		image_file = vo.getImage_file();

		String id = (String)request.getSession().getAttribute("logID");
		vo.setId(id);
		vo = service.selectOne(vo);
		
		System.out.println(code);
		if(code == 44) {
			System.out.println("들어옴!!!!!!!!!!!");
			vo.setImage_file(image_file);
			file2="resources/uploadImage/emptyImage.png";
			vo.setImage_path(file2);
		}else {
			
			String realPath = request.getRealPath("/");
			System.out.println("** RealPath 1 =>" + realPath);
			if (realPath.contains(".eclipse.")) 
				 realPath="D:/GitHub/hellchang/src/main/webapp/resources/uploadImage/";
			else realPath += "resources\\uploadImage\\";
			
			System.out.println("** RealPath 2 =>" + realPath);
			
			file1 = realPath + image_file.getOriginalFilename();
			image_file.transferTo(new File(file1));
			file2 = "resources/uploadImage/"+image_file.getOriginalFilename();
			vo.setImage_path(file2);
		}
		
//		file1="D:/MTest/MyWork/Spring05/src/main/webapp/resources/uploadImage/"
//				+ image_file.getOriginalFilename();
//		file1="D:/workSpace/hellchang/src/main/webapp/resources/uploadImage/"
//				+ image_file.getOriginalFilename();
		service.update(vo);
		
		mv.addObject("mem", vo);
		
		mv.setViewName("redirect:mdetail?code=U");
		return mv;
	}
	
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
	public ModelAndView prof(ModelAndView mv, HttpServletRequest request, MemberVO vo) {
		String id = (String) request.getSession().getAttribute("logID");
		vo.setId(id);
		vo = service.selectOne(vo);
		
		mv.addObject("mem", vo);
		
		mv.setViewName("user/profile");
		return mv; 
	} // 
	@RequestMapping(value = "/updatef")
	public ModelAndView updatef(HttpServletRequest request, ModelAndView mv, MemberVO vo) {
		mv.setViewName("user/profile_Update");
		return mv; 
	} // 
	@RequestMapping(value = "/inbodyf")
	public ModelAndView inbodyf(ModelAndView mv) {
		mv.setViewName("user/profile_inbody");
		return mv; 
	} // 
	@RequestMapping(value = "/dietf")
	public ModelAndView dietf(ModelAndView mv) {
		mv.setViewName("user/profile_diet");
		return mv; 
	} // 
	@RequestMapping(value = "/socialf")
	public ModelAndView socialf(ModelAndView mv) {
		mv.setViewName("user/profile_social");
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
	public ModelAndView join(HttpServletRequest request, ModelAndView mv, MemberVO vo) {
		vo.concatPhone();
		vo.concatAddress();
		vo.concatBirthday();
		System.out.println("this is join vo => \n" + vo);
		String file2="resources/uploadImage/emptyImage.png";
		vo.setLevel("user");
		if(vo.getImage_path()!=null) {
			vo.setImage_path(file2);
		}
		vo.setPassword(passwordEncoder.encode(vo.getPassword()));                        
		System.out.println("this is vo => \n" + vo);
		int cnt = service.insert(vo);
		
		if (cnt > 0) {
			if(vo.getEmail_login()==true) {
				request.getSession().setAttribute("logID", vo.getId());
				request.getSession().setAttribute("logName", vo.getName());
				request.getSession().setAttribute("profile_image", vo.getImage_path());
				mv.setViewName("redirect:prof");
				return mv;
			}
			
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
	
	@RequestMapping(value = "/mdetail")
	public ModelAndView mdetail(HttpServletRequest request, ModelAndView mv, MemberVO vo){

		// 1) login 여부 확인
		String id = "";
		HttpSession session = request.getSession(false);
		if (session != null && session.getAttribute("logID") != null) {
			id = (String) session.getAttribute("logID");
		} 
		vo.setId(id);
		vo = service.selectOne(vo);
		
		mv.addObject("myInfo_phone", vo.getPhone());
		mv.addObject("myInfo_address", vo.getAddress());

		System.out.println("this is mdetail vo => \n" + vo);
		// 4) 결과 ( Detail or Update 인지 )
		// => request.getParameter("code") 가 U 인지 확인
		if ("U".equals(request.getParameter("code"))) {
			request.getSession().setAttribute("logID", vo.getId());
			request.getSession().setAttribute("logName", vo.getName());
			request.getSession().setAttribute("profile_image", vo.getImage_path());
			// 내정보 수정화면으로
			mv.setViewName("user/profile_Update");
		} else if ("E".equals(request.getParameter("code"))) { // 내정보 수정에서 오류 상황
			mv.addObject("message", "~~ 내정보 수정 오류  !!! 다시 하세요 ~~");
			mv.setViewName("user/profile_Update");

		}
		
		
		return mv;
		
	}// mdetail
	
	@RequestMapping(value = "/mupdate")
	public ModelAndView update(HttpServletRequest request, ModelAndView mv, MemberVO vo, MemberVO vo2)
				throws IOException {

	System.out.println(" this is update vo =>  + \n" + vo);	
	if (vo.getPassword().length() > 3 && vo.getPassword()!=null) {
			
		vo.setPassword( passwordEncoder.encode(vo.getPassword()));
	}else {
		vo2=service.selectOne(vo);
		vo.setPassword(vo2.getPassword());	
	}
	System.out.println("this is mupdate vo => \n" + vo);
	if (service.update(vo) > 0) {
		System.out.println("update complete");
		mv.setViewName("redirect:mdetail?code=U");
	} else {
		System.out.println("update incomplete");

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
		
		mv.setViewName("jsonView");
		//service.delete();
		
		return mv;
	} // login
	
}
