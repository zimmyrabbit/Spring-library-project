package com.spring.library.util;

import java.io.IOException;
import java.util.HashMap;

import org.json.simple.JSONObject;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;

import com.spring.library.service.RissService;

@EnableScheduling
@Configuration
public class CronRiss{
	
	@Autowired RissService service;

    @Scheduled(cron = "30 * * * * *")
    public void testMethod() throws IOException{
    	int[] random = { 0,1,2,3,4 };
    	int[] index = shuffle(random);
    	String[] array = {"코로나","자바","비대면","메타버스","커피시장"};
    	int i = index[0];
    	
    	// 1. 수집 대상 URL
        String URL = "http://www.riss.kr/search/Search.do?isDetailSearch=N&searchGubun=true&viewYn=OP&query=" + array[i] + "&queryText=&iStartCount=0&iGroupView=5&icate=bib_t&colName=re_a_kor&exQuery=&exQueryText=&order=%2FDESC&onHanja=false&strSort=RANK&pageScale=10&orderBy=&fsearchMethod=search&isFDetailSearch=N&sflag=1&searchQuery=%EC%BD%94%EB%A1%9C%EB%82%98&fsearchSort=&fsearchOrder=&limiterList=&limiterListText=&facetList=&facetListText=&fsearchDB=&resultKeyword=%EC%BD%94%EB%A1%9C%EB%82%98&pageNumber=1&p_year1=&p_year2=&dorg_storage=&mat_type=&mat_subtype=&fulltext_kind=&t_gubun=&learning_type=&language_code=&ccl_code=&language=&inside_outside=&fric_yn=&image_yn=&regnm=&gubun=&kdc=&ttsUseYn=";
        // 2. Connection 생성
        Connection conn = Jsoup.connect(URL);
        // 3. HTML 파싱.
        Document html = conn.get(); // conn.post();
        // 4. HTML 출력
      //  System.out.println( html.toString() ); 
        int cnt = 0;
        
        HashMap<String, Object> map = new HashMap<String, Object>();
        
        Elements cont = html.getElementsByClass("cont");
        for( Element subject : cont ) {  
            Elements t = subject.getElementsByClass("title");
            Elements p = subject.getElementsByClass("preAbstract");
            for( Element title : t ) {
                Elements f = title.getElementsByTag("a");
                for( Element elm : f ) {
                	JSONObject obj = new JSONObject();	
                	map.put("title", elm.text());
                	map.put("url", elm.attr("href"));
                }
                for( Element el : p ) {
                	JSONObject obj2 = new JSONObject();	
                	map.put("detail", el.text());
                }
            }
    }
        service.insert(map);
}
    
	  public static int[] shuffle(int[] arr){
		    for(int x=0;x<arr.length;x++){
		      int i = (int)(Math.random()*arr.length);
		      int j = (int)(Math.random()*arr.length);
		            
		      int tmp = arr[i];
		      arr[i] = arr[j];
		      arr[j] = tmp;
		    }
		        
		    return arr;
		  }
}
