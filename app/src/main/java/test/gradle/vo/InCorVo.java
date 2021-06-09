package test.gradle.vo;

import java.sql.Date;

public class InCorVo {
	private int id;
	private String pName;
	private String charge;
	private String number;
	private String fax;
	private String name;
	private String corNumber;
	private String billCharge;
	private String billMail;
	private Date regDate;
	private String sort;
	
	
	@Override
	public String toString() {
		return "InCorVo [id=" + id + ", pName=" + pName + ", charge=" + charge + ", number=" + number + ", fax=" + fax
				+ ", name=" + name + ", corNumber=" + corNumber + ", billCharge=" + billCharge + ", billMail="
				+ billMail + ", regDate=" + regDate + ", sort=" + sort + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getCharge() {
		return charge;
	}
	public void setCharge(String charge) {
		this.charge = charge;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCorNumber() {
		return corNumber;
	}
	public void setCorNumber(String corNumber) {
		this.corNumber = corNumber;
	}
	public String getBillCharge() {
		return billCharge;
	}
	public void setBillCharge(String billCharge) {
		this.billCharge = billCharge;
	}
	public String getBillMail() {
		return billMail;
	}
	public void setBillMail(String billMail) {
		this.billMail = billMail;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	
}
