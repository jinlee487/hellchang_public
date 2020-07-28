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
			System.out.println(vo.getImage_file());
		}else {
			file1="D:/MTest/MyWork/hellchang/src/main/webapp/resources/uploadImage/"
					+ image_file.getOriginalFilename();
			image_file.transferTo(new File(file1));
			file2="resources/uploadImage/"+image_file.getOriginalFilename();
			vo.setImage_path(file2);
		}
		
//		file1="D:/MTest/MyWork/Spring05/src/main/webapp/resources/uploadImage/"
//				+ image_file.getOriginalFilename();
//		file1="D:/workSpace/hellchang/src/main/webapp/resources/uploadImage/"
//				+ image_file.getOriginalFilename();
		service.update(vo);
		
		mv.addObject("mem", vo);
		
		mv.setViewName("user/profile");
		
		return mv;
	}
	
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
	public ModelAndView prof(ModelAndView mv, HttpServletRequest request, MemberVO vo) {
		String id = (String) request.getSession().getAttribute("logID");
		vo.setId(id);
		vo = service.selectOne(vo);
		
		mv.addObject("mem", vo);
		
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
			mv.addObject("Banana", list); // scope �씠 request �� �룞�씪
		} else {
			mv.addObject("message", "~~ 寃��깋�맂 �옄猷뚭� 1嫄대룄 �뾾�뒿�땲�떎. ~~");
		}
		mv.setViewName("member/memberList");
		return mv;
	} // mlist
	
	@RequestMapping(value = "/bcrypt")
	public ModelAndView bcrypt(ModelAndView mv, MemberVO vo) {
		String password = "123!";
		String password1 = passwordEncoder.encode(password) ;
		String password2 = passwordEncoder.encode(password) ;
		// 占쎌뜚癰귣㈇�궢 �뜮袁㏉꺍 揶쎛�占쎈뮟
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
			// Join �꽦怨�
			mv.addObject("joinID", vo.getId());
			mv.addObject("fCode", "JS");
			mv.setViewName("login/loginForm");

		} else {
			// Join �떎�뙣
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
		
		if (vo != null) { // id 議댁옱
			System.out.println("vo null �넻怨�" + vo.getPassword());
			if (passwordEncoder.matches(password, vo.getPassword())){
				System.out.println("match �넻怨�");
				// 濡쒓렇�씤 �꽦怨� -> login �젙蹂� 蹂닿� (id, name�쓣 session�뿉) -> loginSuccess
				request.getSession().setAttribute("logID", vo.getId());
				request.getSession().setAttribute("logName", vo.getName());
				
				// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!二쇱쓽!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
				// 	session�뿉 ���옣�븷 �븘�슂�뾾�쓣嫄� 媛숈븘�꽌 �씪�떒 二쇱꽍泥섎━�븯怨� 吏곸젒 遺덈윭���꽌 �궗�슜�븯寃좎뒿�땲�떎.
				//request.getSession().setAttribute("profile_image", vo.getImage_path());
				mv.setViewName("home");
			} else {
				// Password �삤瑜� -> �옱濡쒓렇�씤
				mv.addObject("message", "鍮꾨�踰덊샇媛� ���졇�뒿�땲�떎.");
			}
		} else { // ID �삤瑜� -> �옱濡쒓렇�씤
			mv.addObject("message", "�뾾�뒗 ID�엯�땲�떎.");
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

		// 1) login �뿬遺� �솗�씤
		String id = "";
		HttpSession session = request.getSession(false);
		if (session != null && session.getAttribute("logID") != null) {
			id = (String) session.getAttribute("logID");
		} else {
			// login �븯�룄濡� �쑀�룄 �썑�뿉 硫붿꽌�뱶 return �쑝濡� 醫낅즺
			mv.addObject("message", "~~ 濡쒓렇�씤 �썑�뿉 �븯�꽭�슂 ~~");
			mv.setViewName("login/loginForm");
			return mv;
		}
		vo.setId(id);
		vo = service.selectOne(vo);
		mv.addObject("myInfo", vo);

		// 4) 寃곌낵 ( Detail or Update �씤吏� )
		// => request.getParameter("code") 媛� U �씤吏� �솗�씤
		mv.setViewName("user/profile_myProfile");
		if ("U".equals(request.getParameter("code"))) {
			// �궡�젙蹂� �닔�젙�솕硫댁쑝濡�
			mv.setViewName("user/profile_Update");
		} else if ("E".equals(request.getParameter("code"))) { // �궡�젙蹂� �닔�젙�뿉�꽌 �삤瑜� �긽�솴
			mv.addObject("message", "~~ �궡�젙蹂� �닔�젙 �삤瑜�  !!! �떎�떆 �븯�꽭�슂 ~~");
		}
		
		
		return mv;
		
	}// mdetail
	
	@RequestMapping(value = "/mupdate")
	public ModelAndView update(HttpServletRequest request, ModelAndView mv, MemberVO vo)
				throws IOException {
		System.out.println("vo null Test=>"+vo);
		String id = "";
		HttpSession session = request.getSession(false);
		if (session != null && session.getAttribute("logID") != null) {
			id = (String) session.getAttribute("logID");
		} else {
			// login �븯�룄濡� �쑀�룄 �썑�뿉 硫붿꽌�뱶 return �쑝濡� 醫낅즺
			mv.addObject("message", "~~ 濡쒓렇�씤 �썑�뿉 �븯�꽭�슂 ~~");
			mv.setViewName("login/loginForm");
			return mv;
		}
		vo.setId(id);
		vo = service.selectOne(vo);
		mv.addObject("myInfo", vo);

		
		// password �엯�젰媛�  �솗�씤 諛� �븫�샇�� 泥섎━
		if (vo.getPassword().length() > 3 && vo.getPassword()!=null) {
				// new password 瑜� encode
			vo.setPassword( passwordEncoder.encode(vo.getPassword()));
		}else {	// session�뿉 蹂닿��빐 �넃�� password �궗�슜
			vo.setPassword((String)request.getSession().getAttribute("encodedPassword"));
		}
		
		if (service.update(vo) > 0) {
			// �쉶�썝�닔�젙 �꽦怨� -> memberList 異쒕젰
			// session �쓽 Attribute logName �룄 蹂�寃�
			request.getSession().setAttribute("loginName", vo.getName());
			mv.setViewName("redirect:mdetail");
		} else {
			// �쉶�썝�닔�젙 �떎�뙣 -> �궡�젙蹂� 蹂닿린 �솕硫댁쑝濡�
			mv.setViewName("home");
		} // if
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
