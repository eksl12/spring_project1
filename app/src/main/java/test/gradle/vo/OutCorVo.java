package test.gradle.vo;

import java.sql.Date;

public class OutCorVo {
	private int id;
	private String pName;
	private String pCode;
	private String charge;
	private String number;
	private String account;
	private String memo;
	private String fax;
	private String name;
	private String pNumber;
	private int writer;
	private String corNumber;
	private String represent;
	private String address;
	private Date regDate;
	private String billCharge;
	private String billMail;
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
	public String getpCode() {
		return pCode;
	}
	public void setpCode(String pCode) {
		this.pCode = pCode;
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
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
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
	public String getpNumber() {
		return pNumber;
	}
	public void setpNumber(String pNumber) {
		this.pNumber = pNumber;
	}
	public int getWriter() {
		return writer;
	}
	public void setWriter(int writer) {
		this.writer = writer;
	}
	public String getCorNumber() {
		return corNumber;
	}
	public void setCorNumber(String corNumber) {
		this.corNumber = corNumber;
	}
	public String getRepresent() {
		return represent;
	}
	public void setRepresent(String represent) {
		this.represent = represent;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
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
	@Override
	public String toString() {
		return "OutCorVo [id=" + id + ", pName=" + pName + ", pCode=" + pCode + ", charge=" + charge + ", number="
				+ number + ", account=" + account + ", memo=" + memo + ", fax=" + fax + ", name=" + name + ", pNumber="
				+ pNumber + ", writer=" + writer + ", corNumber=" + corNumber + ", represent=" + represent
				+ ", address=" + address + ", regDate=" + regDate + ", billCharge=" + billCharge + ", billMail="
				+ billMail + "]";
	}
	
	
}
