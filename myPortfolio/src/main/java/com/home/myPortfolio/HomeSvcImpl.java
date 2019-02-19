package com.home.myPortfolio;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HomeSvcImpl implements HomeSvc{

	@Autowired
	private HomeDao homeDao;

	@Override
	public int getTotalNoteCnt() {
		return homeDao.getTotalNoteCnt();
	}
	
	@Override
	public ArrayList<NoteVO> getNoteList(PagingVO paging) {
		return homeDao.getNoteList(paging);
	}
	
	@Override
	public NoteVO getNoteDetail(Map<String, String> param) {
		return homeDao.getNoteDetail(param);
	}
	
	@Override
	public int insertGuestNote(NoteVO note) {
		return homeDao.insertGuestNote(note);
	}

	@Override
	public int updateGuestNote(NoteVO note) {
		return homeDao.updateGuestNote(note);
	}

	
	

	
}
