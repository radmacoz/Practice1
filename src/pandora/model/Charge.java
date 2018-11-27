package pandora.model;

import java.sql.Date;

public class Charge {
	
	private int charge_num;	// 충전내역 번호(p.k)
	private String mem_id;		// 충전 회원 아이디(f.k)
	private Date charge_date;	// 충전 일시
	private int charge_option; 	// 충전 옵션 번호(f.k)
	private String charge_account;	// 무통장입금 계좌 번호
	// 충전 옵션 번호로부터 charge_opt table로부터 가져오는 컬럼
	private int charge_point;	// 충전 포인트
	private int charge_money;	// 결제 금액
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
	public int getCharge_option() {
		return charge_option;
	}
	public void setCharge_option(int charge_option) {
		this.charge_option = charge_option;
	}
	public String getCharge_account() {
		return charge_account;
	}
	public void setCharge_account(String charge_account) {
		this.charge_account = charge_account;
	}
	public int getCharge_point() {
		return charge_point;
	}
	public void setCharge_point(int charge_point) {
		this.charge_point = charge_point;
	}
	public int getCharge_money() {
		return charge_money;
	}
	public void setCharge_money(int charge_money) {
		this.charge_money = charge_money;
	}

}