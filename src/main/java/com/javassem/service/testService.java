package com.javassem.service;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
 
import org.springframework.stereotype.Service;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

import com.javassem.domain.adongVO;
import com.javassem.domain.markVO;
import com.javassem.domain.markerVO;
import com.javassem.domain.mclsCd;
import com.javassem.domain.sclsCd;
import com.javassem.domain.signguVO;
import com.javassem.domain.testVO;


@Service
public class testService {
	private static String clientID = "";
    private static String clientSecret = "";
 
    //display ==> 몇개 출력
    //start==>몇번쨰부터 (item)
    public List<testVO> searchapi(String keyword){
        List<testVO> list = null;
        try {
        	//분류 
        	//대분류 : indsLclsCd
        	//중분류 : indsMclsCd
        	//소분류 : indsSclsCd
        	
        	
            URL url;
            	url = new URL("http://apis.data.go.kr/B553077/api/open/sdsc/baroApi?resId=dong&catId=mega&ServiceKey=XtX1AqCTC%2FfSgMm%2FPA%2BFz8Tdhnuq4QfNCmkwuqI%2F6c1tAsCOeqN0HexDK8dDhbm0He16N7pMnO2eWzvyHPCrug%3D%3D");
          
//                    + "book.xml?query="
//                    + URLEncoder.encode(keyword, "UTF-8")
//                    + (display !=0 ? "&display=" +display :"")
//                    + (start !=0 ? "&start=" +start :""));
 
            URLConnection urlConn = url.openConnection();
			/*
			 * urlConn.setRequestProperty("X-Naver-Client-Id", clientID);
			 * urlConn.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			 */
            
            XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
            XmlPullParser parser = factory.newPullParser();
            parser.setInput(
                    new InputStreamReader(urlConn.getInputStream()));
            //Test에서 했던 방식은 DOM방식이기때문에? 
            //그래서 이렇게 해도 된다?!??!??!? 
            int eventType = parser.getEventType();
            testVO b = null;
            while (eventType != XmlPullParser.END_DOCUMENT) {
                switch (eventType) {
                case XmlPullParser.END_DOCUMENT: // 문서의 끝
                    break;
                case XmlPullParser.START_DOCUMENT:
                    list = new ArrayList<testVO>();
                    break;
                case XmlPullParser.END_TAG: {
                    String tag = parser.getName();
                    if(tag.equals("item"))
                    {
                        list.add(b);
                        b = null;
                    }
                }
                case XmlPullParser.START_TAG: {
                    String tag = parser.getName();
                    switch (tag) {
                    case "item":
                        b = new testVO();
                        break;
                    case "ctprvnCd":
                        if(b != null)
                            b.setCtprvnCd(parser.nextText());
                        break;
                    case "ctprvnNm":
                        if(b != null)
                            b.setCtprvnNm(parser.nextText());
                        break;
                    
                    }
                    
                }
                }
                eventType = parser.next();
            }   
        } catch (MalformedURLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (XmlPullParserException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }
    
 
    public List<mclsCd> searchapiM(){
        List<mclsCd> list = null;
        try {
        	//분류 
        	//대분류 : indsLclsCd
        	//중분류 : indsMclsCd
        	//소분류 : indsSclsCd
        	
        	
            URL url;
            url = new URL("http://apis.data.go.kr/B553077/api/open/sdsc/middleUpjongList?indsLclsCd=Q&ServiceKey=XtX1AqCTC%2FfSgMm%2FPA%2BFz8Tdhnuq4QfNCmkwuqI%2F6c1tAsCOeqN0HexDK8dDhbm0He16N7pMnO2eWzvyHPCrug%3D%3D");
//                    + "book.xml?query="
//                    + URLEncoder.encode(keyword, "UTF-8")
//                    + (display !=0 ? "&display=" +display :"")
//                    + (start !=0 ? "&start=" +start :""));
 
            URLConnection urlConn = url.openConnection();
			/*
			 * urlConn.setRequestProperty("X-Naver-Client-Id", clientID);
			 * urlConn.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			 */
            
            XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
            XmlPullParser parser = factory.newPullParser();
            parser.setInput(
                    new InputStreamReader(urlConn.getInputStream()));
            //Test에서 했던 방식은 DOM방식이기때문에? 
            //그래서 이렇게 해도 된다?!??!??!? 
            int eventType = parser.getEventType();
            mclsCd b = null;
            while (eventType != XmlPullParser.END_DOCUMENT) {
                switch (eventType) {
                case XmlPullParser.END_DOCUMENT: // 문서의 끝
                    break;
                case XmlPullParser.START_DOCUMENT:
                    list = new ArrayList<mclsCd>();
                    break;
                case XmlPullParser.END_TAG: {
                    String tag = parser.getName();
                    if(tag.equals("item"))
                    {
                        list.add(b);
                        b = null;
                    }
                }
                case XmlPullParser.START_TAG: {
                    String tag = parser.getName();
                    switch (tag) {
                    case "item":
                        b = new mclsCd();
                        break;
                    case "indsMclsNm":
                        if(b != null)
                            b.setIndsMclsNm(parser.nextText());
                        break;
                    case "indsMclsCd":
                        if(b != null)
                            b.setIndsMclsCd(parser.nextText());
                        break;
                   }
                    
                }
                }
                eventType = parser.next();
            }   
        } catch (MalformedURLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (XmlPullParserException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }
    
    public List<sclsCd> searchapiS(String str){
        List<sclsCd> list = null;
        try {
        	//분류 
        	//대분류 : indsLclsCd
        	//중분류 : indsMclsCd
        	//소분류 : indsSclsCd
        	
        	
            URL url;
            url = new URL("http://apis.data.go.kr/B553077/api/open/sdsc/smallUpjongList?indsLclsCd=Q&indsMclsCd="+str+"&ServiceKey=XtX1AqCTC%2FfSgMm%2FPA%2BFz8Tdhnuq4QfNCmkwuqI%2F6c1tAsCOeqN0HexDK8dDhbm0He16N7pMnO2eWzvyHPCrug%3D%3D");
//                    + "book.xml?query="
//                    + URLEncoder.encode(keyword, "UTF-8")
//                    + (display !=0 ? "&display=" +display :"")
//                    + (start !=0 ? "&start=" +start :""));
 
            URLConnection urlConn = url.openConnection();
			/*
			 * urlConn.setRequestProperty("X-Naver-Client-Id", clientID);
			 * urlConn.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			 */
            
            XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
            XmlPullParser parser = factory.newPullParser();
            parser.setInput(
                    new InputStreamReader(urlConn.getInputStream()));
            //Test에서 했던 방식은 DOM방식이기때문에? 
            //그래서 이렇게 해도 된다?!??!??!? 
            int eventType = parser.getEventType();
            sclsCd b = null;
            while (eventType != XmlPullParser.END_DOCUMENT) {
                switch (eventType) {
                case XmlPullParser.END_DOCUMENT: // 문서의 끝
                    break;
                case XmlPullParser.START_DOCUMENT:
                    list = new ArrayList<sclsCd>();
                    break;
                case XmlPullParser.END_TAG: {
                    String tag = parser.getName();
                    if(tag.equals("item"))
                    {
                        list.add(b);
                        b = null;
                    }
                }
                case XmlPullParser.START_TAG: {
                    String tag = parser.getName();
                    switch (tag) {
                    case "item":
                        b = new sclsCd();
                        break;
                    case "indsSclsNm":
                        if(b != null)
                            b.setIndsSclsNm(parser.nextText());
                        break;
                    case "indsSclsCd":
                        if(b != null)
                            b.setIndsMclsCd(parser.nextText());
                        break;
                   }
                    
                }
                }
                eventType = parser.next();
            }   
        } catch (MalformedURLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (XmlPullParserException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }
    public List<markerVO> searchapiMarker(String keyword){
        List<markerVO> list = null;
        try {
        	//분류 
        	//대분류 : indsLclsCd
        	//중분류 : indsMclsCd
        	//소분류 : indsSclsCd
        	
        	
            URL url;
            
            url = new URL("http://apis.data.go.kr/B553077/api/open/sdsc/storeListInUpjong?divId=indsSclsCd&key="+keyword+"&numOfRows=100&ServiceKey=XtX1AqCTC%2FfSgMm%2FPA%2BFz8Tdhnuq4QfNCmkwuqI%2F6c1tAsCOeqN0HexDK8dDhbm0He16N7pMnO2eWzvyHPCrug%3D%3D");
            
//                    + "book.xml?query="
//                    + URLEncoder.encode(keyword, "UTF-8")
//                    + (display !=0 ? "&display=" +display :"")
//                    + (start !=0 ? "&start=" +start :""));
 
            URLConnection urlConn = url.openConnection();
			/*
			 * urlConn.setRequestProperty("X-Naver-Client-Id", clientID);
			 * urlConn.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			 */
            
            XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
            XmlPullParser parser = factory.newPullParser();
            parser.setInput(
                    new InputStreamReader(urlConn.getInputStream()));
            //Test에서 했던 방식은 DOM방식이기때문에? 
            //그래서 이렇게 해도 된다?!??!??!? 
            int eventType = parser.getEventType();
            markerVO b = null;
            while (eventType != XmlPullParser.END_DOCUMENT) {
                switch (eventType) {
                case XmlPullParser.END_DOCUMENT: // 문서의 끝
                    break;
                case XmlPullParser.START_DOCUMENT:
                    list = new ArrayList<markerVO>();
                    break;
                case XmlPullParser.END_TAG: {
                    String tag = parser.getName();
                    if(tag.equals("item"))
                    {
                        list.add(b);
                        b = null;
                    }
                }
                case XmlPullParser.START_TAG: {
                    String tag = parser.getName();
                    switch (tag) {
                    case "item":
                        b = new markerVO();
                        break;
                    case "indsMclsNm":
                        if(b != null)
                            b.setIndsMclsNmMarker(parser.nextText());
                        break;
                    case "indsSclsNm":
                        if(b != null)
                            b.setIndsSclsNmMarker(parser.nextText());
                        break;
                    case "lnoAdr":
                        if(b != null)
                            b.setLnoAdrMarker(parser.nextText());
                        break;
                    case "lat":
                        if(b != null)
                            b.setLatMarker(parser.nextText());
                        break;
                    case "lon":
                        if(b != null)
                            b.setLonMarker(parser.nextText());
                        break;
                    case "bizesNm":
                        if(b != null)
                            b.setBizesNm(parser.nextText());
                        break;
                    case "rdnmAdr":
                        if(b != null)
                            b.setRdnmAdr(parser.nextText());
                        break;
                    }
                    
                    
                }
                }
                eventType = parser.next();
            }   
        } catch (MalformedURLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (XmlPullParserException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }
    public List<signguVO> searchapicT(String keyword){
        List<signguVO> list = null;
        try {
        	//분류 
        	//대분류 : indsLclsCd
        	//중분류 : indsMclsCd
        	//소분류 : indsSclsCd
        	
        	
            URL url;
            
            url = new URL("http://apis.data.go.kr/B553077/api/open/sdsc/baroApi?resId=dong&catId=cty&ctprvnCd="+keyword+"&ServiceKey=XtX1AqCTC%2FfSgMm%2FPA%2BFz8Tdhnuq4QfNCmkwuqI%2F6c1tAsCOeqN0HexDK8dDhbm0He16N7pMnO2eWzvyHPCrug%3D%3D");
            
//                    + "book.xml?query="
//                    + URLEncoder.encode(keyword, "UTF-8")
//                    + (display !=0 ? "&display=" +display :"")
//                    + (start !=0 ? "&start=" +start :""));
 
            URLConnection urlConn = url.openConnection();
			/*
			 * urlConn.setRequestProperty("X-Naver-Client-Id", clientID);
			 * urlConn.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			 */
            
            XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
            XmlPullParser parser = factory.newPullParser();
            parser.setInput(
                    new InputStreamReader(urlConn.getInputStream()));
            //Test에서 했던 방식은 DOM방식이기때문에? 
            //그래서 이렇게 해도 된다?!??!??!? 
            int eventType = parser.getEventType();
            signguVO b = null;
            while (eventType != XmlPullParser.END_DOCUMENT) {
                switch (eventType) {
                case XmlPullParser.END_DOCUMENT: // 문서의 끝
                    break;
                case XmlPullParser.START_DOCUMENT:
                    list = new ArrayList<signguVO>();
                    break;
                case XmlPullParser.END_TAG: {
                    String tag = parser.getName();
                    if(tag.equals("item"))
                    {
                        list.add(b);
                        b = null;
                    }
                }
                case XmlPullParser.START_TAG: {
                    String tag = parser.getName();
                    switch (tag) {
                    case "item":
                        b = new signguVO();
                        break;
                    case "signguCd":
                        if(b != null)
                            b.setSignguCd(parser.nextText());
                        break;
                    case "signguNm":
                        if(b != null)
                            b.setSignguNm(parser.nextText());
                        break;
                    
                    }
                    
                    
                }
                }
                eventType = parser.next();
            }   
        } catch (MalformedURLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (XmlPullParserException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }
    
    public List<adongVO> searchapiMi(String keyword){
        List<adongVO> list = null;
        try {
        	//분류 
        	//대분류 : indsLclsCd
        	//중분류 : indsMclsCd
        	//소분류 : indsSclsCd
        	
        	
            URL url;
            
            url = new URL("http://apis.data.go.kr/B553077/api/open/sdsc/baroApi?resId=dong&catId=admi&signguCd="+keyword+"&ServiceKey=XtX1AqCTC%2FfSgMm%2FPA%2BFz8Tdhnuq4QfNCmkwuqI%2F6c1tAsCOeqN0HexDK8dDhbm0He16N7pMnO2eWzvyHPCrug%3D%3D");
            
//                    + "book.xml?query="
//                    + URLEncoder.encode(keyword, "UTF-8")
//                    + (display !=0 ? "&display=" +display :"")
//                    + (start !=0 ? "&start=" +start :""));
 
            URLConnection urlConn = url.openConnection();
			/*
			 * urlConn.setRequestProperty("X-Naver-Client-Id", clientID);
			 * urlConn.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			 */
            
            XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
            XmlPullParser parser = factory.newPullParser();
            parser.setInput(
                    new InputStreamReader(urlConn.getInputStream()));
            //Test에서 했던 방식은 DOM방식이기때문에? 
            //그래서 이렇게 해도 된다?!??!??!? 
            int eventType = parser.getEventType();
            adongVO b = null;
            while (eventType != XmlPullParser.END_DOCUMENT) {
                switch (eventType) {
                case XmlPullParser.END_DOCUMENT: // 문서의 끝
                    break;
                case XmlPullParser.START_DOCUMENT:
                    list = new ArrayList<adongVO>();
                    break;
                case XmlPullParser.END_TAG: {
                    String tag = parser.getName();
                    if(tag.equals("item"))
                    {
                        list.add(b);
                        b = null;
                    }
                }
                case XmlPullParser.START_TAG: {
                    String tag = parser.getName();
                    switch (tag) {
                    case "item":
                        b = new adongVO();
                        break;
                    case "adongCd":
                        if(b != null)
                            b.setAdongCd(parser.nextText());
                        break;
                    case "adongNm":
                        if(b != null)
                            b.setAdongNm(parser.nextText());
                        break;
                    
                    }
                    
                    
                }
                }
                eventType = parser.next();
            }   
        } catch (MalformedURLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (XmlPullParserException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }
    
    
    public List<markVO> searchapiMark(String keyword, String str2, String str3){
        List<markVO> list = null;
        try {
        	//분류 
        	//대분류 : indsLclsCd
        	//중분류 : indsMclsCd
        	//소분류 : indsSclsCd
        	String ss2 = "&indsMclsCd=" + str2;
        	String ss3 = "&indsSclsCd=" + str3;
        	
            URL url;
            System.out.println(keyword);
            System.out.println(str2);
            System.out.println(str3);
            
            url = new URL("http://apis.data.go.kr/B553077/api/open/sdsc/storeListInDong?divId=adongCd&key="+keyword+ "&indsLclsCd=Q"+ss2+ss3+"&ServiceKey=XtX1AqCTC%2FfSgMm%2FPA%2BFz8Tdhnuq4QfNCmkwuqI%2F6c1tAsCOeqN0HexDK8dDhbm0He16N7pMnO2eWzvyHPCrug%3D%3D");
            
//                    + "book.xml?query="
//                    + URLEncoder.encode(keyword, "UTF-8")
//                    + (display !=0 ? "&display=" +display :"")
//                    + (start !=0 ? "&start=" +start :""));
 
            URLConnection urlConn = url.openConnection();
			/*
			 * urlConn.setRequestProperty("X-Naver-Client-Id", clientID);
			 * urlConn.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			 */
            
            XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
            XmlPullParser parser = factory.newPullParser();
            parser.setInput(
                    new InputStreamReader(urlConn.getInputStream()));
            //Test에서 했던 방식은 DOM방식이기때문에? 
            //그래서 이렇게 해도 된다?!??!??!? 
            int eventType = parser.getEventType();
            markVO b = null;
            while (eventType != XmlPullParser.END_DOCUMENT) {
                switch (eventType) {
                case XmlPullParser.END_DOCUMENT: // 문서의 끝
                    break;
                case XmlPullParser.START_DOCUMENT:
                    list = new ArrayList<markVO>();
                    break;
                case XmlPullParser.END_TAG: {
                    String tag = parser.getName();
                    if(tag.equals("item"))
                    {
                        list.add(b);
                        b = null;
                    }
                }
                case XmlPullParser.START_TAG: {
                    String tag = parser.getName();
                    switch (tag) {
                    case "item":
                        b = new markVO();
                        break;
                    case "bizesNm":
                        if(b != null)
                            b.setBizesNm(parser.nextText());
                        break;
                    case "lat":
                        if(b != null)
                            b.setLatMarker(parser.nextText());
                        break;
                    case "lon":
                        if(b != null)
                            b.setLonMarker(parser.nextText());
                        break;
                    case "lnoAdr":
                        if(b != null)
                            b.setLnoAdrMarker(parser.nextText());
                        break;
                    case "rdnmAdr":
                        if(b != null)
                            b.setRdnmAdr(parser.nextText());
                        break;
                    
                    
                    }
                    
                    
                }
                }
                eventType = parser.next();
            }   
        } catch (MalformedURLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (XmlPullParserException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }

}
