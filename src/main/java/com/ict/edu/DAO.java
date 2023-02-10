package com.ict.edu;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class DAO {
	private SqlSessionTemplate sqlSessionTemplate;

	public SqlSessionTemplate getSqlSessionTemplate() {
		return sqlSessionTemplate;
	}

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	
	// DB 처리하는 메서드 (사용방법은 SqlSession 과 같다.)
	public List<VO> getList() {
		return sqlSessionTemplate.selectList("guestbook.list");
	}

	//
	public VO getOneList(String idx) {
		return sqlSessionTemplate.selectOne("guestbook.onelist", idx);
	}
	
	// 방명록 쓰기
	public int getInsert(VO vo) {
		return sqlSessionTemplate.insert("guestbook.insert", vo);
	}
	
	// 방명록 삭제하기
	public int getDelete(String idx) {
		return sqlSessionTemplate.delete("guestbook.delete", idx);
	}
	
}
