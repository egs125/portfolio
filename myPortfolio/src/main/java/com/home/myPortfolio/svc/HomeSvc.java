package com.home.myPortfolio.svc;

import java.util.ArrayList;
import java.util.Map;

import com.home.myPortfolio.common.vo.PagingVO;
import com.home.myPortfolio.vo.NoteVO;

public interface HomeSvc {

	int getTotalNoteCnt();
	
	ArrayList<NoteVO> getNoteList(PagingVO paging);
	
	NoteVO getNoteDetail(Map<String, String> param);
	
	int insertGuestNote(NoteVO note);

	int checkNotePwd(NoteVO note);

	int updateGuestNote(NoteVO note);

}
