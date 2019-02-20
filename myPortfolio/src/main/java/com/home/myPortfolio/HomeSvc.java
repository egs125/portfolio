package com.home.myPortfolio;

import java.util.ArrayList;
import java.util.Map;

public interface HomeSvc {

	int getTotalNoteCnt();
	
	ArrayList<NoteVO> getNoteList(PagingVO paging);
	
	NoteVO getNoteDetail(Map<String, String> param);
	
	int insertGuestNote(NoteVO note);

	int checkNotePwd(NoteVO note);

	int updateGuestNote(NoteVO note);

}
