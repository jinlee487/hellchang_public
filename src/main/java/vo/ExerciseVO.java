package vo;

public class ExerciseVO {
	private int no;
	private String name;
	private String target;
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	@Override
	public String toString() {
		return "ExerciseVO [no=" + no + ", name=" + name + ", target=" + target + "]";
	}

} // MemberVO
