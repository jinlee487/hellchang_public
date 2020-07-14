package vo;

import java.math.BigDecimal;
import java.math.RoundingMode;

public class InbodyVO {
	private String id;
	private String date_date;
	private String date_string;
	private double seq;
	private double weight;
	private double weight_under;
	private double weight_over;
	private double muscle_mass;
	private double muscle_mass_under;
	private double muscle_mass_over;
	private double fat_mass;
	private double fat_mass_under;
	private double fat_mass_over;
	private double bmi;
	private double bmi_under;
	private double bmi_over;
	private double pbf;
	private double pbf_under;
	private double pbf_over;
	private double vfl;
	private double vfl_under; 
	private double vfl_over;
	private double bmr;
	

	public String getId() {return id;}
	public void setId(String id) {this.id = id;}
	public String getDate_date() {return date_date;}
	public void setDate_date(String date_date) {this.date_date = date_date;}
	public String getDate_string() {return date_string;}
	public void setDate_string(String date_string) {this.date_string = date_string;}
	public double getSeq() {return seq;}
	public void setSeq(double seq) {this.seq = seq;}
	public double getWeight() {return weight;}
	public void setWeight(double weight) {this.weight = weight;}
	public double getWeight_under() {return weight_under;}
	public void setWeight_under(double d) {this.weight_under = d;}
	public double getWeight_over() {return weight_over;}
	public void setWeight_over(double weight_over) {this.weight_over = weight_over;}
	public double getMuscle_mass() {return muscle_mass;}
	public void setMuscle_mass(double muscle_mass) {this.muscle_mass = muscle_mass;}
	public double getMuscle_mass_under() {return muscle_mass_under;}
	public void setMuscle_mass_under(double muscle_mass_under) {this.muscle_mass_under = muscle_mass_under;}
	public double getMuscle_mass_over() {return muscle_mass_over;}
	public void setMuscle_mass_over(double muscle_mass_over) {this.muscle_mass_over = muscle_mass_over;}
	public double getFat_mass() {return fat_mass;}
	public void setFat_mass(double fat_mass) {this.fat_mass = fat_mass;}
	public double getFat_mass_under() {return fat_mass_under;}
	public void setFat_mass_under(double fat_mass_under) {this.fat_mass_under = fat_mass_under;}
	public double getFat_mass_over() {return fat_mass_over;}
	public void setFat_mass_over(double fat_mass_over) {this.fat_mass_over = fat_mass_over;}
	public double getBmi() {return bmi;}
	public void setBmi(double bmi) {this.bmi = bmi;}
	public double getBmi_under() {return bmi_under;}
	public void setBmi_under(double bmi_under) {this.bmi_under = bmi_under;}
	public double getBmi_over() {return bmi_over;}
	public void setBmi_over(double bmi_over) {this.bmi_over = bmi_over;}
	public double getPbf() {return pbf;}
	public void setPbf(double pbf) {this.pbf = pbf;}
	public double getPbf_under() {return pbf_under;}
	public void setPbf_under(double pbf_under) {this.pbf_under = pbf_under;}
	public double getPbf_over() {return pbf_over;}
	public void setPbf_over(double pbf_over) {this.pbf_over = pbf_over;}
	public double getVfl() {return vfl;}
	public void setVfl(double vfl) {this.vfl = vfl;}
	public double getVfl_under() {return vfl_under;}
	public void setVfl_under(double vfl_under) {this.vfl_under = vfl_under;}
	public double getVfl_over() {return vfl_over;}
	public void setVfl_over(double vfl_over) {this.vfl_over = vfl_over;}
	public double getBmr() {return bmr;}
	public void setBmr(double bmr) {this.bmr = bmr;}
	public void calcBmr() {BigDecimal bd = new BigDecimal(88.362 + (13.397 * weight) + (4.799 *178) - (5.677 *28)).setScale(2, RoundingMode.HALF_UP);
		setBmr(bd.doubleValue());}
	@Override
	public String toString() {
		return "InbodyVO [id=" + id + ", date_date=" + date_date + ", date_string=" + date_string + ", seq=" + seq + ", weight="
				+ weight + ", weight_under=" + weight_under + ", weight_over=" + weight_over + ", muscle_mass="
				+ muscle_mass + ", muscle_mass_under=" + muscle_mass_under + ", muscle_mass_over=" + muscle_mass_over
				+ ", fat_mass=" + fat_mass + ", fat_mass_under=" + fat_mass_under + ", fat_mass_over=" + fat_mass_over
				+ ", bmi=" + bmi + ", bmi_under=" + bmi_under + ", bmi_over=" + bmi_over + ", pbf=" + pbf
				+ ", pbf_under=" + pbf_under + ", pbf_over=" + pbf_over + ", vfl=" + vfl + ", vfl_under=" + vfl_under
				+ ", vfl_over=" + vfl_over + ", bmr=" + bmr + "]";
	}
	
}
