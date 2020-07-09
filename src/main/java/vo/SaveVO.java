package vo;

import java.util.Date;

public class SaveVO {
	private String id;
	private String name;
	private String target;
	private int kg;
	private int rep;
	private Date date;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public int getKg() {
		return kg;
	}
	public void setKg(int kg) {
		this.kg = kg;
	}
	public int getRep() {
		return rep;
	}
	public void setRep(int rep) {
		this.rep = rep;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "SaveVO [id=" + id + ", name=" + name + ", target=" + target + ", kg=" + kg + ", rep=" + rep + ", date="
				+ date + "]";
	}
	

}
