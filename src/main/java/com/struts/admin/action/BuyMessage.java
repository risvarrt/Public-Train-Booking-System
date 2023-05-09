package com.struts.admin.action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.struts.admin.AdminManage;
public class BuyMessage extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String action,from,to,email,call,message,etitle,emessage,mtitle,mmessage,ctitle,cmessage,trainid;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCall() {
		return call;
	}

	public void setCall(String call) {
		this.call = call;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
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

	public String execute() throws Exception{
		int res=AdminManage.buymess(this);
		HttpServletResponse response = ServletActionContext.getResponse();
		if(res==1)
		{
			response.getWriter().print("Admin Message Set Successfully");
		}
		else
		{
			  response.sendError(HttpServletResponse.SC_BAD_REQUEST, "important_parameter needed");
		}
		return null;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public String getTrainid() {
		return trainid;
	}

	public void setTrainid(String trainid) {
		this.trainid = trainid;
	}

	

}
