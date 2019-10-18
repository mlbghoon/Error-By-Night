
package com.naver.mlbg_hoon;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	
	/*
	* Simply selects the home view to render by returning its name.
	*/
	@RequestMapping(value = "/")
	public String home(Locale locale, Model model) {		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "main/main.tiles";
	}
	
	@RequestMapping(value = "/registerTerms")
	public String registerTerms() {
		
		return "register/registerTerms.ohtiles";
	}
	
	@RequestMapping(value = "/register")
	public String register() {
		
		return "register/register.ohtiles";
	}
	// �옉�꽦�옄 : 沅뚯꽭�썕 ---- �쉶�썝 媛��엯�떆 �븘�씠�뵒 以묐났�솗�씤 而⑦듃濡ㅻ윭 : ajax�넻�빐 �븘�씠�뵒 以묐났 �솗�씤 �븯�뿬 �솕硫댁씠 諛붾�뚯� �븡怨� 泥섎━ 
	// paramMap - userid : �궗�슜�옄 �븘�씠�뵒
	// userid媛� �엳�뒗吏� 以묐났 �솗�씤
	@RequestMapping(value = "fnIDChk")
    @ResponseBody
    public String intfnIDChk(@RequestParam HashMap<String, String> paramMap) throws Exception 
    {
		
		   List<MemberListDto> memberInfoList = memberServiceImpl.selectMemberInfoList(paramMap);
		  
		   Map<String,Object>  map = new HashMap<String,Object>();				// 荑쇰━�쓽 �뙆�씪硫뷀꽣 ���엯�씠 hashMap �엫
		   
		   String dBID;															// ajax瑜� �솕硫댁쑝濡� 蹂대궡以� String
		   if (memberInfoList.isEmpty()) {										// 諛섑솚�맂 媛믪씠 �뾾�쑝硫�, 利� 以묐났�릺吏� �븡�쓣�뻹
			   dBID = "";														// 珥덇린�솕 �븯�뒗 �씠�쑀�뒗 �솕硫댁뿉�꽌 null�� 鍮꾧탳�떆 �뿉�윭媛� �깮源��쑝濡�
		   } else {																// 以묐났 �맆寃쎌슦		
			   map.put("mapID", memberInfoList.get(0).getUserid());				// 以묐났�릺�뒗 �븘�씠�뵒瑜� dBID�뿉 吏묒뼱�꽔怨� return
			   dBID = (String) map.get("mapID");      							// �솕硫댁뿉�꽌 dBID瑜� �씠�슜 
		   }
         
         return dBID;                     
    }
}
