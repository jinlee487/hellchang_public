package vo;

public class RmVO {
	private String id;
	private int bench;
	private int dead;
	private int squat;
	private String date;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getBench() {
		return bench;
	}
	public void setBench(int bench) {
		this.bench = bench;
	}
	public int getDead() {
		return dead;
	}
	public void setDead(int dead) {
		this.dead = dead;
	}
	public int getSquat() {
		return squat;
	}
	public void setSquat(int squat) {
		this.squat = squat;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "RmVO [id=" + id + ", bench=" + bench + ", dead=" + dead + ", squat=" + squat + ", date=" + date + "]";
	}
	
	
}
