package vo;

import java.util.List;

public class InbodyPageVO {
	private String id; 
	private List<InbodyVO> list; // 조회결과 출력할 글 목록

	public List<InbodyVO> getList() {
		return list;
	}

	public void setList(List<InbodyVO> list) {
		this.list = list;
	}
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
}
