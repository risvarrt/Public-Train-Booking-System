package com.struts.admin;

public class BuyItem {
	private String from,to,etitle,emessage,mtitle,mmessage,ctitle,cmessage,trainid;
	private int aid;
	private boolean email,call,message;
	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public boolean getEmail() {
		return email;
	}

	public void setEmail(boolean email) {
		this.email = email;
	}

	public boolean getCall() {
		return call;
	}

	public void setCall(boolean call) {
		this.call = call;
	}

	public boolean getMessage() {
		return message;
	}

	public void setMessage(boolean message) {
		this.message = message;
	}

	public String getEtitle() {
		return etitle;
	}

	public void setEtitle(String etitle) {
		this.etitle = etitle;
	}

	public String getEmessage() {
		return emessage;
	}

	public void setEmessage(String emessage) {
		this.emessage = emessage;
	}

	public String getMtitle() {
		return mtitle;
	}

	public void setMtitle(String mtitle) {
		this.mtitle = mtitle;
	}

	public String getMmessage() {
		return mmessage;
	}

	public void setMmessage(String mmessage) {
		this.mmessage = mmessage;
	}

	public String getCtitle() {
		return ctitle;
	}

	public void setCtitle(String ctitle) {
		this.ctitle = ctitle;
	}

	public String getCmessage() {
		return cmessage;
	}

	public void setCmessage(String cmessage) {
		this.cmessage = cmessage;
	}

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public String getTrainid() {
		return trainid;
	}

	public void setTrainid(String trainid) {
		this.trainid = trainid;
	}


}
