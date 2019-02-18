package com.home.myPortfolio;

import java.util.ArrayList;

public interface HomeSvc {

	int getTotalNoteCnt();
	
	ArrayList<NoteVO> getNoteList(PagingVO paging);
	
	int insertGuestNote(NoteVO note);



}
