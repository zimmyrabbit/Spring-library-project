package com.spring.library.controller;
import java.io.IOException;
import java.util.HashMap;
import javax.servlet.http.HttpServletResponse;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.jsoup.Connection;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.library.util.ResponseHelper;

@Controller
public class RissSearchController {

	@RequestMapping(value="/rissSearch/rissSearch", method=RequestMethod.GET)
	public void rissSearch() { }
	
	@RequestMapping(value="/rissSearch/rissSearch", method=RequestMethod.POST)
	@ResponseBody
	public void rissList(@RequestParam HashMap<String, String> formData, HttpServletResponse response) { 
		
		JSONObject jsonResult = new JSONObject();
        try {
        	
        	String query = formData.get("query");
            // 1. 수집 대상 URL
            String URL = "http://www.riss.kr/search/Search.do?isDetailSearch=N&searchGubun=true&viewYn=OP&query=" + query + "&queryText=&iStartCount=0&iGroupView=5&icate=bib_t&colName=re_a_kor&exQuery=&exQueryText=&order=%2FDESC&onHanja=false&strSort=RANK&pageScale=10&orderBy=&fsearchMethod=search&isFDetailSearch=N&sflag=1&searchQuery=%EC%BD%94%EB%A1%9C%EB%82%98&fsearchSort=&fsearchOrder=&limiterList=&limiterListText=&facetList=&facetListText=&fsearchDB=&resultKeyword=%EC%BD%94%EB%A1%9C%EB%82%98&pageNumber=1&p_year1=&p_year2=&dorg_storage=&mat_type=&mat_subtype=&fulltext_kind=&t_gubun=&learning_type=&language_code=&ccl_code=&language=&inside_outside=&fric_yn=&image_yn=&regnm=&gubun=&kdc=&ttsUseYn=";
            // 2. Connection 생성
            Connection conn = Jsoup.connect(URL);
            // 3. HTML 파싱.
            Document html = conn.get(); // conn.post();
            // 4. HTML 출력
          //  System.out.println( html.toString() ); 
            JSONArray jArray = new JSONArray();
            int cnt = 0;
            Elements cont = html.getElementsByClass("cont");
            for( Element subject : cont ) {  
                Elements t = subject.getElementsByClass("title");
                
                for( Element title : t ) {
                    Elements f = title.getElementsByTag("a");
                    for( Element elm : f ) {
                    	JSONObject obj = new JSONObject();	
                    	obj.put("title", elm.text());
                    	obj.put("url", elm.attr("href"));
                    	jArray.add(obj);
                    	cnt++;
                    }
                    jsonResult.put("data", jArray);
                }
            }
            if(cnt > 0) {
            	jsonResult.put("proc", "success");
            }else {
            	jsonResult.put("proc", "fail");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        ResponseHelper.sendJSON(response, jsonResult);
    }
}
