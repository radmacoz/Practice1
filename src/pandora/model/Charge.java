package pandora.model;

import java.sql.Date;

public class Charge {
	
	private int charge_num;
	private String mem_id;
	private Date charge_date;
	private int charge_point;
	private String charge_account;
	
	public int getCharge_num() {
		return charge_num;
	}
	public void setCharge_num(int charge_num) {
		this.charge_num = charge_num;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public Date getCharge_date() {
		return charge_date;
	}
	public void setCharge_date(Date charge_date) {
		this.charge_date = charge_date;
	}
	public int getCharge_point() {
		return charge_point;
	}
	public void setCharge_point(int charge_point) {
		this.charge_point = charge_point;
	}
	public String getCharge_account() {
		return charge_account;
	}
	public void setCharge_account(String charge_account) {
		this.charge_account = charge_account;
	}
	

}