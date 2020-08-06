package vo;

public class HeartVO {
	private String id;
	private String title;
	private int heart;
	private int seq;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getHeart() {
		return heart;
	}
	public void setHeart(int heart) {
		this.heart = heart;
	}
	
	public int getSeq() {
		return seq;
	}
	@Override
	public String toString() {
		return "HeartVO [id=" + id + ", title=" + title + ", heart=" + heart + ", seq=" + seq + "]";
	}
	
	
}
