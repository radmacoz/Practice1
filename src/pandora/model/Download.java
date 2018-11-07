package pandora.model;

import java.sql.Date;

public class Download {

	private int down_num;
	private int file_num;
	private Date down_date;
	private String mem_id;
	public int getDown_num() {
		return down_num;
	}
	public void setDown_num(int down_num) {
		this.down_num = down_num;
	}
	public int getFile_num() {
		return file_num;
	}
	public void setFile_num(int file_num) {
		this.file_num = file_num;
	}
	public Date getDown_date() {
		return down_date;
	}
	public void setDown_date(Date down_date) {
		this.down_date = down_date;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
}
