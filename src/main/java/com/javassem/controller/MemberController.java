package com.javassem.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.javassem.domain.MemberVO;
import com.javassem.domain.adongVO;
import com.javassem.domain.markVO;
import com.javassem.domain.markerVO;
import com.javassem.domain.mclsCd;
import com.javassem.domain.sclsCd;
import com.javassem.domain.signguVO;
import com.javassem.service.MemberService;
import com.javassem.service.testService;

@Controller
@RequestMapping("/user/") // 이 컨트롤러는 user 폴더 밑에서 가져옴
public class MemberController {

	// 1. void이기에 "userLogin.do"의 이름과 동일한 "userLogin.jsp"를 찾음
	// @RequestMapping("/userLogin.do")
	// 2. 하는 일 없이 매핑만 하는 경우이므로 value에 추가만 한
	// @RequestMapping( value={"/userLogin.do", "/userJoin.do"})
	// public void url()
	// {
	// System.out.println("요청");
	// }
	// 3. 매번 이런식으로 매핑만 하는 경우라면
	@RequestMapping(value = "{url}.do")
	public String url(@PathVariable String url) {
		System.out.println("요청11");
		return "/user/" + url;
	}

	// --------------------------------------------------------
	@Autowired // 자동하도록
	private MemberService memberService;
	
	@Autowired
    private testService service;

	/*** 회원가입 */
	@RequestMapping("/userInsert.do")
	public ModelAndView userInsert(MemberVO memberVo) {
		int result = memberService.userInsert(memberVo);

		String message = "가입되지 않았습니다";
		if (result > 0)
			message = memberVo.getUserName() + "님, 가입을 축하드립니다.";

		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/userJoin_ok");
		mv.addObject("message", message);
		mv.addObject("result", result);
		return mv; 
	}

	/** 로그인 */
	@RequestMapping("login.do")
	// public String login(MemberVO vo) {
	public String login(MemberVO vo, HttpSession session) { // #4. 세션
		// #2. DB 연결되는지 확인 - 에러없이 페이지 전환
		MemberVO result = memberService.idCheck_Login(vo);
		MemberVO memberVo = memberService.update_view(vo);

		// #3. 틀린 아이디와 패스워크라면 다시 로그인 화면 페이지로 이동하는 지 확인
		if (result == null || result.getUserId() == null) {
			return "/user/userLogin"; // 다시 로그인 화면 페이지로 이동
		} else {
			System.out.println("[" + result.getUserId() + "] 로그인 접속 ");
			// #4. 세션에 저장
			session.setAttribute("sessionTime", new Date().toLocaleString());
			session.setAttribute("userName", result.getUserName());
			session.setAttribute("userVo", memberVo);
		}

		// #1. 앞에서 로그인 버튼 클릭시 게시판 목록 보기로 가는지 확인
		// return "/user/login_ok";
		return "/user/Main";
	}

	/**
	 * 아이디 중복 체크
	 */
	@RequestMapping(value = "/idCheck.do", produces = "application/text; charset=utf8")
	// 화면에서 보낸 결과 한글 깨짐 해결 -> produces = "application/text; charset=utf8"
	@ResponseBody // --> 이것으로 비동기화 통신을을 함 ( 페이지전환되지 않도록)
	public String idchekc(MemberVO vo) // 인자로 사용자아이디(String)만 받아도 된다
	{

		// 컨트롤러에서는 디비 연동을 하지 않고 연결만 하기에 모델(Business Login) DAO을 호출

		MemberVO memberVo = memberService.idCheck_Login(vo);
		String result = "ID 사용 가능합니다.";
		if (memberVo != null)
			result = "중복된 아이디 입니다.";
		return result;
	}

	/** 회원정보수정 **/
	@RequestMapping("/memberUpdate_ok.do")
	public ModelAndView userUpdate(MemberVO memberVo) {
		System.out.print("test1");
		int result = memberService.userUpdate(memberVo);
		System.out.print("test2");
		String message = "변경되지 않았습니다";
		if (result > 0)
			message = memberVo.getUserName() + "님, 회원정보가 변경되었습니다.";
		System.out.print("test3");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/memberUpdate_ok");
		mv.addObject("message", message);
		mv.addObject("result", result);
		return mv;
	}
	
	
    
    //키워드가 있을때도 있고 없을때도있음 
    //있을때는 가져가고 없을때는 안가져가고 
  /*  @RequestMapping("searchapi.do")
    public ModelAndView searchapi(@RequestParam(required=false)String keyword){
        ModelAndView mav = new ModelAndView();
        
       
        mav.addObject("searchapi",service.searchapi(keyword));
        
        mav.setViewName("searchapi");
        return mav;
    }*/
    
    
    @RequestMapping(value="/searchapiM.do", method=RequestMethod.POST)
    @ResponseBody // --> 이것으로 비동기화 통신을을 함 ( 페이지전환되지 않도록)
    public Object searchapiM() {
        //필요한 로직 처리   
    	List<mclsCd> arr = new ArrayList<mclsCd>();
    	arr = service.searchapiM();
    	 Map<String, Object> retVal = new HashMap<String, Object>();
    	  retVal.put("mList", arr);
    	
     return retVal;
    }
    
    @RequestMapping(value="/searchapiS.do", method=RequestMethod.POST)
    @ResponseBody // --> 이것으로 비동기화 통신을을 함 ( 페이지전환되지 않도록)
    public Object searchapiS(@RequestParam("userId") String str) {
        //필요한 로직 처리   
    	List<sclsCd> arr = new ArrayList<sclsCd>();
    	arr = service.searchapiS(str);
    	 Map<String, Object> retVal = new HashMap<String, Object>();
    	  retVal.put("sList", arr);
    	
     return retVal;
    }
    
    
    @RequestMapping(value="/searchapiMarker.do", method=RequestMethod.POST)
    @ResponseBody // --> 이것으로 비동기화 통신을을 함 ( 페이지전환되지 않도록)
    public Object searchapiMarker(@RequestParam("MarkerId") String str) {
        //필요한 로직 처리   
    	List<markerVO> arr = new ArrayList<markerVO>();
    	arr = service.searchapiMarker(str);
    	 Map<String, Object> retVal = new HashMap<String, Object>();
    	  retVal.put("makerList", arr);
    	
     return retVal;
    }
    
    @RequestMapping(value="/searchapicT.do", method=RequestMethod.POST)
    @ResponseBody // --> 이것으로 비동기화 통신을을 함 ( 페이지전환되지 않도록)
    public Object searchapicT(@RequestParam("daeId") String str) {
        //필요한 로직 처리   
    	List<signguVO> arr = new ArrayList<signguVO>();
    	arr = service.searchapicT(str);
    	 Map<String, Object> retVal = new HashMap<String, Object>();
    	  retVal.put("CtList", arr);
    	
     return retVal;
    }
    
    @RequestMapping(value="/searchapiMi.do", method=RequestMethod.POST)
    @ResponseBody // --> 이것으로 비동기화 통신을을 함 ( 페이지전환되지 않도록)
    public Object searchapiMi(@RequestParam("MId") String str) {
        //필요한 로직 처리   
    	List<adongVO> arr = new ArrayList<adongVO>();
    	arr = service.searchapiMi(str);
    	 Map<String, Object> retVal = new HashMap<String, Object>();
    	  retVal.put("MiList", arr);
    	
     return retVal;
    }
    
    @RequestMapping(value="/searchapiMark.do", method=RequestMethod.POST)
    @ResponseBody // --> 이것으로 비동기화 통신을을 함 ( 페이지전환되지 않도록)
    public Object searchapiMark(@RequestParam("MarkId") String str, @RequestParam("aaa") String str2, @RequestParam("bbb") String str3) {
        //필요한 로직 처리   
    	List<markVO> arr = new ArrayList<markVO>();
    	arr = service.searchapiMark(str,str2,str3);
    	 Map<String, Object> retVal = new HashMap<String, Object>();
    	  retVal.put("markList", arr);
    	
     return retVal;
    }

}
