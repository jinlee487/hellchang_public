package com.ncs.green;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.social.MissingAuthorizationException;
import org.springframework.social.connect.Connection;
import org.springframework.social.connect.ConnectionFactory;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.User;
import org.springframework.social.facebook.api.UserOperations;
import org.springframework.social.facebook.api.impl.FacebookTemplate;
import org.springframework.social.facebook.connect.FacebookConnectionFactory;
import org.springframework.social.google.api.Google;
import org.springframework.social.google.api.impl.GoogleTemplate;
import org.springframework.social.google.api.plus.Person;
import org.springframework.social.google.api.plus.PlusOperations;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.AccessGrant;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.oauth.OAuth20Service;
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

	// 페이스북 oAuth 관련
	@Autowired
	private FacebookConnectionFactory facebookConnectionFactory;
	@Autowired
	private OAuth2Parameters facebookOAuth2Parameters;

	/* GoogleLogin */
	@Autowired
	private GoogleConnectionFactory googleConnectionFactory;
	@Autowired
	private OAuth2Parameters googleOAuth2Parameters;

	/* NaverLoginBO */
	private KakaoLoginBO kakaoLoginBO;
	private NaverLoginBO naverLoginBO;
	private GoogleLoginBO googleLoginBO;
	private String apiResult = null;

	@Autowired
	private void setGoogleLoginBO(GoogleLoginBO googleLoginBO) {
		this.googleLoginBO = googleLoginBO;
	}
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}

	@Autowired
	private void setKakaoLoginBO(KakaoLoginBO kakaoLoginBO) {
		this.kakaoLoginBO = kakaoLoginBO;
	}

	@RequestMapping(value = "/loginf")
	public ModelAndView loginf(String message, HttpSession session, ModelAndView mv) {
		mv.setViewName("login/loginForm");

		OAuth2Operations oauthOperations = facebookConnectionFactory.getOAuthOperations();
		String facebook_url = oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE, facebookOAuth2Parameters);
		oauthOperations = googleConnectionFactory.getOAuthOperations();
		String google_url = oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE, googleOAuth2Parameters);
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		String kakaoAuthUrl = kakaoLoginBO.getAuthorizationUrl(session);

		System.out.println("네이버:" + naverAuthUrl);
		System.out.println("카카오:" + kakaoAuthUrl);
		System.out.println("페이스북:" + facebook_url);
		System.out.println("구글:" + google_url);
		// Password 오류 -> 재로그인
		if(message!=null&&message.equals("p")) {
			mv.addObject("message", "비밀번호가 틀렸습니다.");
			System.out.println("this is message => " + message );
		}
		if(message!=null&&message.equals("i")) {
			mv.addObject("message", "없는 ID입니다.");
			System.out.println("this is message => " + message );
		}
		// 네이버 로그인
		mv.addObject("naver_url", naverAuthUrl);
		// 카카오 로그인
		mv.addObject("kakao_url", kakaoAuthUrl);
		// 구글 로그인
		mv.addObject("google_url", google_url);
		// 페이스북 로그인
		mv.addObject("facebook_url", facebook_url);

		return mv;
	}
 
  @RequestMapping(value = "/facebook_callback", method = { RequestMethod.GET, RequestMethod.POST })
  public ModelAndView facebook_callback(ModelAndView mv, @RequestParam String code, 
		  HttpSession session, HttpServletRequest request, MemberVO vo) throws IOException {
	  
	  System.out.println("여기는 facebook_callback"); 
	  try { 
		  String redirectUri = facebookOAuth2Parameters.getRedirectUri();
		  System.out.println("Redirect URI : " + redirectUri);
		  System.out.println("Code : " + code);
		  OAuth2Operations oauthOperations =  facebookConnectionFactory.getOAuthOperations();
		  AccessGrant accessGrant = oauthOperations.exchangeForAccess(code, redirectUri, null); 
		  String accessToken = accessGrant.getAccessToken(); 
		  System.out.println("AccessToken: " + accessToken); 
		  Long expireTime = accessGrant.getExpireTime();
		  if (expireTime != null && expireTime < System.currentTimeMillis()) {
			  accessToken = accessGrant.getRefreshToken();
			  System.out.println("accessToken is expired. refresh token = {}" + accessToken); 
			  };
		  Connection<Facebook> connection = facebookConnectionFactory.createConnection(accessGrant); 
		  Facebook facebook = connection == null ? new FacebookTemplate(accessToken) : connection.getApi();
		  //UserOperations userOperations = facebook.userOperations();
  
		  try { 
			  String [] fields = { "id", "email", "name"};
			  User userProfile = facebook.fetchObject("me", User.class, fields);
			  System.out.println("유저이메일 : " + userProfile.getEmail());
			  System.out.println("유저 id : " + userProfile.getId()); 
			  System.out.println("유저 name : " + userProfile.getName()); 
			  System.out.println(userProfile);
			  String id="", name="";
			  id = userProfile.getEmail();
			  name = userProfile.getName();
			  vo.setId(id); 
			  vo=service.selectOne(vo);
			  if(vo!=null) { 
				  request.getSession().setAttribute("logID", vo.getId());
				  request.getSession().setAttribute("logName", vo.getName());
				  request.getSession().setAttribute("profile_image", vo.getImage_path());
				  mv.setViewName("redirect:prof");
				  return mv;
				  }
			  mv.setViewName("member/joinForm");
			  mv.addObject("id", id);
			  mv.addObject("name", name); 
			  mv.addObject("email_login", "check");
			  return mv;
			  } catch (MissingAuthorizationException e) { 
				  e.printStackTrace(); 
				  }
		  } catch (Exception e) { 
			  e.printStackTrace();
			  }
	  return mv;
	  }


	// 네이버 로그인 성공시 callback호출 메소드
	@RequestMapping(value = "/google_callback", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView google_callback(ModelAndView mv, @RequestParam String code,
			HttpSession session, HttpServletRequest request, MemberVO vo) throws IOException {
		System.out.println("여기는 google callback");
		String body = googleLoginBO.getUserProfile(code); 
		System.out.println("this is the body => \n" + body + "\n");

        mv.setViewName("member/joinForm");
		// 2. String형식인 apiResult를 json형태로 바꿈
		JsonObject jsonObj = new JsonParser().parse(body).getAsJsonObject();
		System.out.println(jsonObj);
		// 3. 데이터 파싱
		String id = jsonObj.get("email").getAsString();
		String image_path = jsonObj.get("picture").getAsString();
		String name = jsonObj.get("name").getAsString();
		vo.setId(id);
		vo = service.selectOne(vo);
		if (vo != null) {
			request.getSession().setAttribute("logID", vo.getId());
			request.getSession().setAttribute("logName", vo.getName());
			request.getSession().setAttribute("profile_image", vo.getImage_path());
			System.out.println("this is google callback vo = > + \n" + vo);
			mv.setViewName("redirect:prof");
			return mv;
		}
		mv.setViewName("member/joinForm");
		mv.addObject("id", id);
		mv.addObject("name", name);
		mv.addObject("image_path", image_path);
		mv.addObject("email_login", "check");
		return mv;
	}	  
	  
	// 네이버 로그인 성공시 callback호출 메소드
	@RequestMapping(value = "/naver_callback", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView naver_callback(ModelAndView mv, @RequestParam String code, @RequestParam String state,
			HttpSession session, HttpServletRequest request, MemberVO vo) throws IOException {
		System.out.println("여기는 callback");
		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginBO.getAccessToken(session, code, state);
		System.out.println(oauthToken);
		// 로그인 사용자 정보를 읽어온다.
		apiResult = naverLoginBO.getUserProfile(oauthToken);
		mv.addObject("result", apiResult);

		// 2. String형식인 apiResult를 json형태로 바꿈
		JsonObject jsonObj = new JsonParser().parse(apiResult).getAsJsonObject();
		System.out.println(jsonObj);
		// 3. 데이터 파싱
		// Top레벨 단계 _response 파싱
		JsonObject response_obj = (JsonObject) jsonObj.get("response");
		// response의 nickname값 파싱
		String id = response_obj.get("email").getAsString();
		String gender = response_obj.get("gender").getAsString();
		String image_path = response_obj.get("profile_image").getAsString();
		String name = response_obj.get("name").getAsString();
		vo.setId(id);
		vo = service.selectOne(vo);
		if (vo != null) {
			request.getSession().setAttribute("logID", vo.getId());
			request.getSession().setAttribute("logName", vo.getName());
			request.getSession().setAttribute("profile_image", vo.getImage_path());
			mv.setViewName("redirect:prof");
			return mv;
		}
		mv.setViewName("member/joinForm");
		mv.addObject("id", id);
		mv.addObject("name", name);
		mv.addObject("gender", gender);
		mv.addObject("image_path", image_path);
		mv.addObject("email_login", "check");
		return mv;
	}

	// 네이버 로그인 성공시 callback호출 메소드
	@RequestMapping(value = "/kakao_callback", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView kakao_callback(ModelAndView mv, @RequestParam String code, @RequestParam String state,
			HttpSession session, HttpServletRequest request, MemberVO vo) throws IOException {
		System.out.println("여기는 callback");
		OAuth2AccessToken oauthToken;
		oauthToken = kakaoLoginBO.getAccessToken(session, code, state);
		// 로그인 사용자 정보를 읽어온다.
		apiResult = kakaoLoginBO.getUserProfile(oauthToken);
		mv.addObject("result", apiResult);

		// 2. String형식인 apiResult를 json형태로 바꿈
		JsonObject jsonObj = new JsonParser().parse(apiResult).getAsJsonObject();
		System.out.println(jsonObj);
		// 3. 데이터 파싱
		// Top레벨 단계 _response 파싱
		JsonObject kakao_account = (JsonObject) jsonObj.get("kakao_account");
		JsonObject profile = (JsonObject) kakao_account.get("profile");

		System.out.println(kakao_account);
		// response의 nickname값 파싱
		String id = "", name = "", image_path = "", gender = "";
		if (kakao_account.get("has_email").getAsBoolean() == true) {
			id = kakao_account.get("email").getAsString();
		} else {
			id = jsonObj.get("id").getAsString();
		}
		vo.setId(id);
		vo = service.selectOne(vo);
		if (vo != null) {
			request.getSession().setAttribute("logID", vo.getId());
			request.getSession().setAttribute("logName", vo.getName());
			request.getSession().setAttribute("profile_image", vo.getImage_path());
			mv.setViewName("redirect:prof");
			return mv;
		}
		if (kakao_account.get("has_gender").getAsBoolean() == true) {
			gender = kakao_account.get("gender").getAsString();
		}
		if (profile.has("nickname")) {
			name = profile.get("nickname").getAsString();
		}
		if (profile.has("profile_image")) {
			image_path = profile.get("profile_image").getAsString();
		}

		mv.setViewName("member/joinForm");
		mv.addObject("id", id);
		mv.addObject("name", name);
		mv.addObject("gender", gender);
		mv.addObject("image_path", image_path);
		mv.addObject("email_login", "check");
		return mv;
	}

}
