package com.javassem.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.javassem.domain.adongVO;
import com.javassem.domain.markVO;
import com.javassem.domain.markerVO;
import com.javassem.domain.mclsCd;
import com.javassem.domain.sclsCd;
import com.javassem.domain.signguVO;
import com.javassem.domain.testVO;
import com.javassem.service.testService;
 
@Controller
public class testController {
	@Autowired
    private testService service; 
    
    //키워드가 있을때도 있고 없을때도있음 
    //있을때는 가져가고 없을때는 안가져가고 
/*    @RequestMapping("searchapi.do")
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
