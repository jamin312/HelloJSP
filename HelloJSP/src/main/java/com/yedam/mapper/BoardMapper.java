package com.yedam.mapper;

import java.util.List;

import com.yedam.vo.BoardVO;

// 규칙 정의(추상 메소드)
public interface BoardMapper {
	public List<BoardVO> selectList(); // 목록
	public BoardVO selectBoard(int boardNo); // 단건 조회
	public int updateCount(int boardNo); // 조회수 증가
	public int insertBoard(BoardVO board); // insert
	public int deleteBoard(int boardNo); // delete
}
