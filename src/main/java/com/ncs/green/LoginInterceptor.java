package com.ncs.green;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
//로그인처리를 담당하는 인터셉터
//HandlerInterceptorAdapter
//=> HandlerInterceptor 인터페이스를 사용하기 편리하게 구현해 놓은 추상 클래스
//오버라이딩 단축키 : shift + alt + s + v 

public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	// boolean preHandle() : 컨트롤러보다 먼저 수행되는 메서드
	// => return 값 : 컨트롤러 요청 uri로 가도 되냐 안되냐를 허가하는 의미임
	//	false: 더이상 컨트롤러 요청으로 가지 않도록 함
	//	true : 컨트롤러의  uri로 가게 됨
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// 1) session 객체 가져오기
		HttpSession session = request.getSession();
		
		// 2) Login 확인하기
		if (session.getAttribute("logID")!=null)
			// Login 되어있으면  진행
			return true;
		else {
			// 아니면 loginForm 으로 
			
			// 2.1) redirect 하는 경우 
			// => login 후 removeAttribute("Fail")  하는것이 안전. 
			//session.setAttribute("Fail", "needLogin");
			response.sendRedirect("http://hellchang-env.eba-vupqzpdc.ap-northeast-2.elasticbeanstalk.com/loginf");
			
			// 2.2) forward 하는 경우
			//request.setAttribute("message", "Login이 필요한 요청입니다~ 로그인 후 이용하세요");
			//request.getRequestDispatcher("/WEB-INF/views/login/loginForm.jsp").forward(request, response);
			return false ;
		}
	} // preHandle()

	@Override
	// postHandle() : 컨트롤러가 수행되고 화면이 보여지기 직전에 수행되는 메서드
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		super.postHandle(request, response, handler, modelAndView);
	} // postHandle()

	@Override
	// afterCompletion() : 컨트롤러가 수행되고 view페이지 랜더링 후 실행됨
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		super.afterCompletion(request, response, handler, ex);
	} // afterCompletion

	@Override
	// Servlet3.0 부터 비동기 요청 가능하고,
 // 비동기 요청시에는 postHandle(), afterCompletion() 은 실행되지않고 이 메서드가 실행됨.  
	public void afterConcurrentHandlingStarted(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		super.afterConcurrentHandlingStarted(request, response, handler);
	} // afterConcurrentHandlingStarted
	
} // class
