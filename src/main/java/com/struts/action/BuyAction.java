package com.struts.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.struts.Database;
import com.struts.admin.BuyItem;
import com.opensymphony.xwork2.ActionSupport;
import com.struts.manager.Manage;
import com.struts.object.Ticket;
public class BuyAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;

	public static final int cost=30;
	private int source;
	private int destination;
	private int total;
	private String phone;
	private int Uid;
	private int points;
	private String trainid;
	BuyItem b=new BuyItem();  
	public BuyItem getObj() {
		return b;
	}
	public void setObj(BuyItem b) {
		this.b = b;
	}
	public int getUid() {
		return Uid;
	}
	public void setUid(int uid) {
		Uid = uid;
	}
	public int getSource() {
		return source;
	}
	public void setSource(int source) {
		this.source = source;
	}
	public int getDestination() {
		return destination;
	}
	public void setDestination(int destination) {
		this.destination = destination;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public String execute() throws Exception{
		
	int res=Manage.buy(this);
	//System.out.println(res);
	this.setPoints(res);
	HttpServletResponse response = ServletActionContext.getResponse();
	if(res!=0)
	{	int count=Manage.getmessage(this);
		if(res==1)
	{
			
			String resp="";
			resp="STATUS:PENDING";
			response.getWriter().print(resp);
	}
	else {
		
		if(count>0)
		{
			BuyItem temp=this.b;
			String resp=Database.Trains.get(temp.getTrainid())+"--Tickets Purchased:"+total+"--Points:"+points+"--";
			System.out.println(temp.getCall());
			System.out.println(temp.getEmail());
			if(temp.getCall())
			{
				resp=resp+"CALLING--"+temp.getCtitle()+"--"+temp.getCmessage()+"--";
			}
			if(temp.getEmail())
			{
				resp=resp+"Mailing--"+temp.getEtitle()+"--"+temp.getEmessage()+"--";
			}
			if(temp.getMessage())
			{
				resp=resp+"Messaging--"+temp.getMtitle()+"--"+temp.getMmessage()+"--";
			}
				System.out.println(resp);
			response.getWriter().print(resp);
		}
	}
		
		
	}
	else
	{
		  response.sendError(HttpServletResponse.SC_BAD_REQUEST, "important_parameter needed");
	}
	

		return null;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getPoints() {
		return points;
	}
	public void setPoints(int points) {
		this.points = points;
	}
	public String getTrainid() {
		return trainid;
	}
	public void setTrainid(String trainid) {
		this.trainid = trainid;
	}
	
}
