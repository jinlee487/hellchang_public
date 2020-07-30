package vo;

public class ReplyVO {
	private String id;			// 세션의 아이디
	private String title;		// 게시글의 타이틀
	private String replyContent; // 리플의 내용
	private String replyId; // 게시글 주인의 아이디

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
	@Override
	public String toString() {
		return "ReplyVO [id=" + id + ", title=" + title + ", replyContent=" + replyContent + ", replyId=" + replyId
				+ "]";
	}
}
