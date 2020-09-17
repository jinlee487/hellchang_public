package vo;

public class ReplyVO {
	private String id;			// content id
	private String title;		// content title
	private String replyContent; // ´ñ±Û³»¿ë
	private String replyId; // session id
	private String date;
	private int seq;
	private String userName;
	private String userImage;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public String getReplyId() {
		return replyId;
	}
	public void setReplyId(String replyId) {
		this.replyId = replyId;
	}
	
	public int getSeq() {
		return seq;
	}
	
	
	public String getUserName() {
		return userName;
	}
	public String getUserImage() {
		return userImage;
	}
	@Override
	public String toString() {
		return "ReplyVO [id=" + id + ", title=" + title + ", replyContent=" + replyContent + ", replyId=" + replyId
				+ ", date=" + date + ", seq=" + seq + ", userName=" + userName + ", userImage=" + userImage + "]";
	}
}