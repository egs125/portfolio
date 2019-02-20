package com.home.myPortfolio;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private HomeSvc homeSvc;
	

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String first(Model model) {
		return "home";
	}
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Model model) {
		return "home";
	}
	
	@RequestMapping(value="/profile")
	public String getProfileView(Model model) {
		return "profile";
	}
	
	@RequestMapping(value="/portfolio")
	public String getPortfolioView(Model model) {
		return "portfolio";
	}
	
	@RequestMapping(value="/practice")
	public String getPracticeView(Model model) {
		return "practice";
	}
	
	@RequestMapping(value="/guests")
	public String getGuestsView(Model model) {
		return "guest";
	}
	
	@RequestMapping(value="/getNoteList")
	public @ResponseBody Map<String, Object> getNoteList(@RequestParam Map<String, Integer> param,
											   Model model,
											   HttpServletRequest request
											  ) {
		
		int totalCnt = homeSvc.getTotalNoteCnt();
		
		Object obj = param.get("curPage");
		int page = Integer.valueOf((String) obj);
		PagingVO paging = new PagingVO(totalCnt, page);
		
		ArrayList<NoteVO> list = homeSvc.getNoteList(paging);
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		result.put("list", list);
		result.put("paging", paging);
			
		return result;
	}
	
	@RequestMapping(value="/readNoteDetail")
	public String getWriteGuestNoteView(@RequestParam Map<String, String> param,
										Model model
										) {
		String mode = "insert";
		
		if(param.get("noteNo") != null) {
			mode = "update";
			NoteVO note = homeSvc.getNoteDetail(param);
			model.addAttribute("note", note);
			model.addAttribute("curPage", param.get("curPage"));
		}
		
		model.addAttribute("mode", mode);
		return "noteDetail";
	}
	
	@RequestMapping(value="/writeGuestNote")
	public @ResponseBody String insertGuestNote(NoteVO note,
											    HttpServletRequest request, 
											    HttpServletResponse response,
											    Model model) {
		String result = "";
		
		int insert = homeSvc.insertGuestNote(note); 
		
		if(insert > 0) result = "Saved";
		else result = "Failed";
	
		return result;
	}
	
	@RequestMapping(value="/updateGuestNote")
	public @ResponseBody Map<String, String> updateGuestNote(NoteVO note) {
		Map<String, String> result = new Map<String, String>();
		
		int update = 0;
		
		int chk = homeSvc.checkNotePwd(note);
		if(chk > 0) {
			update = homeSvc.updateGuestNote(note); 
		}else {
			result.put("msg", "Incorrect Password");
		}
			
		if(update > 0) result.put("result", "Saved!");
		else result.put("result", "Failed");
		
		return result;
	}
}
