package vo;

import java.util.List;

public class InbodyPageVO {
	private String id; 
	private List<InbodyVO> list; // 조회결과 출력할 글 목록
	private String start_date;
	private String end_date;
	private String check="false";
	
	public String getCheck() {
		return check;
	}

	public void setCheck(String check) {
		this.check = check;
	}

	public String getStart_date() {
		return start_date;
	}

	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}

	public String getEnd_date() {
		return end_date;
	}

	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

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

	@Override
	public String toString() {
		return "InbodyPageVO [id=" + id + ", list=" + list + ", start_date=" + start_date + ", end_date=" + end_date
				+ ", check=" + check + "]";
	}
	
}
