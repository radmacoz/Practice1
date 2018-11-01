package pandora.model;

import java.sql.Date;

public class FileUp {
	
	private int file_num;
	private String file_name;
	private String category;
	private String mem_id;
	private int file_point;
	private Date file_date;
	public int getFile_num() {
		return file_num;
	}
	public void setFile_num(int file_num) {
		this.file_num = file_num;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getFile_point() {
		return file_point;
	}
	public void setFile_point(int file_point) {
		this.file_point = file_point;
	}
	public Date getFile_date() {
		return file_date;
	}
	public void setFile_date(Date file_date) {
		this.file_date = file_date;
	}
	public String getFile_del() {
		return file_del;
	}
	public void setFile_del(String file_del) {
		this.file_del = file_del;
	}
	private String file_del;
}
