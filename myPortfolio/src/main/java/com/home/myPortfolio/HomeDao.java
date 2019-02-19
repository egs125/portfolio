package com.home.myPortfolio;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.home.myPortfolio.common.dao.AbstractDAO;

@Repository
public class HomeDao extends AbstractDAO {

	@Autowired private SqlSession sql;
	
	private static final String NAMESPACE = "guestNoteMapper.";

	/*
	
	public ArrayList<AppStdVocaVO> selectAppVocaList() {
		return (ArrayList) sql.selectList(NAMESPACE + "selectAppVocaList");
	}
	 */
	
	public int getTotalNoteCnt() {
		return sql.selectOne(NAMESPACE + "getTotalNoteCnt");
	}

	public ArrayList<NoteVO> getNoteList(PagingVO paging) {
		return (ArrayList) sql.selectList(NAMESPACE + "getNoteList", paging);
	}

	public NoteVO getNoteDetail(Map<String, String> param) {
		return sql.selectOne(NAMESPACE + "getNoteDetail", param);
	}

	public int insertGuestNote(NoteVO note) {
		return sql.insert(NAMESPACE + "insertGuestNote", note);
	}

	public int updateGuestNote(NoteVO note) {
		return sql.update(NAMESPACE + "updateGuestNote", note);
	}
}
