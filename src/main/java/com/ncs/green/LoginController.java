package com.ncs.green;
 
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.json.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import service.MService;
import vo.MemberVO;

 
/**
 * Handles requests for the application home page.
 */
@Controller
public class LoginController {
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	@Autowired
	MService service;
    /* NaverLoginBO */
    private NaverLoginBO naverLoginBO;
    private String apiResult = null;
    
    @Autowired
    private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
        this.naverLoginBO = naverLoginBO;
    }
 
    
	@RequestMapping(value = "/loginf")
	public ModelAndView loginf(HttpSession session, ModelAndView mv) {
		mv.setViewName("login/loginForm");
		
        /* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
        String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
        
        //https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
        //redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
        System.out.println("네이버:" + naverAuthUrl);
        
		// 네이버 로그인
		mv.addObject("naver_url", naverAuthUrl); 
		// 카카오 로그인 


		return mv; 
	} 
 
    //네이버 로그인 성공시 callback호출 메소드
    @RequestMapping(value = "/naver_callback", method = { RequestMethod.GET, RequestMethod.POST })
    public ModelAndView callback(ModelAndView mv, @RequestParam String code, @RequestParam String state, 
    								HttpSession session, HttpServletRequest request, MemberVO vo)
            throws IOException {
        System.out.println("여기는 callback");
        OAuth2AccessToken oauthToken;
        oauthToken = naverLoginBO.getAccessToken(session, code, state);
        //로그인 사용자 정보를 읽어온다.
        apiResult = naverLoginBO.getUserProfile(oauthToken);
        mv.addObject("result", apiResult);
        
        //2. String형식인 apiResult를 json형태로 바꿈
        JsonObject jsonObj = new JsonParser().parse(apiResult).getAsJsonObject();
        System.out.println(jsonObj);
        //3. 데이터 파싱
        //Top레벨 단계 _response 파싱
        JsonObject response_obj = (JsonObject)jsonObj.get("response");
        //response의 nickname값 파싱
        String id = response_obj.get("email").getAsString();
        String gender = response_obj.get("gender").getAsString();
        String image_path= response_obj.get("profile_image").getAsString();;
        String name= response_obj.get("name").getAsString();;

        mv.setViewName("member/joinForm");
        mv.addObject("id", id);
        mv.addObject("name", name);
        mv.addObject("gender", gender);
        mv.addObject("image_path", image_path);
        mv.addObject("join_check", "check");
        return mv;
    }

}
