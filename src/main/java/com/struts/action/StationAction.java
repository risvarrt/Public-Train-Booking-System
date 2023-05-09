package com.struts.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;
import com.struts.object.Passengers;
import com.struts.manager.Manage;
public class StationAction extends ActionSupport{
	/**
	 * 
	 */
	
	private static final long serialVersionUID = 1L;
	private int station;
	ArrayList<Passengers> list=new ArrayList<Passengers>();  
	  
	public ArrayList<Passengers> getList() {  
	    return list;  
	}  
	public void setList(ArrayList<Passengers> list) {  
	    this.list = list;  
	}  
	public String execute() throws Exception{
		int res=Manage.getlist(this);
		Gson json=new Gson();
		HttpServletResponse response = ServletActionContext.getResponse();
		
//		System.out.println(list.get(1).getEmail());
		String response1 = json.toJson(list);
		 response.setContentType("application/json");
		    response.setCharacterEncoding("UTF-8");
		response.getWriter().print(response1.toString());
//		if(res>0)
//			return "SUCCESS";
//		else
//			return "ERROR";
		return null;
	}
	public int getStation() {
		return station;
	}
	public void setStation(int station) {
		this.station = station;
	}
}

