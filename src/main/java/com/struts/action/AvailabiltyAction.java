package com.struts.action;

import java.util.ArrayList;

import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import com.struts.Database;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;
import com.struts.object.Board;
import com.struts.object.Tickets;
import com.struts.manager.Manage;
public class AvailabiltyAction extends ActionSupport{
	/**
	 * 
	 */
	
	private static final long serialVersionUID = 1L;
	public static LinkedHashMap<Integer,Integer> pts=new LinkedHashMap<Integer,Integer>();
	private String tid;
	ArrayList<Board> list=new ArrayList<Board>();  
	ArrayList<Tickets> list1=new ArrayList<Tickets>();  
	ArrayList<Integer> ids=new ArrayList<Integer>(); 
	public ArrayList<Board> getList() {  
	    return list;  
	}  
	public void setList(ArrayList<Board> list) {  
	    this.list = list;  
	}  
	public static LinkedHashMap<Integer,Integer> getMap() {  
	    return pts;  
	}  
	public void setMap(LinkedHashMap<Integer,Integer> hm) {  
	    AvailabiltyAction.pts = hm;  
	}  
	
	public String execute() throws Exception{
	
		//setList(Database.vehicleDtabase.get(tid));
			Manage.t.clear();
			Manage.t.add(Database.vehicleDtabase.get(tid));
			setMap(Database.pts.get(tid));
			
		
		
		int res=Manage.getavail(this);
		Gson json=new Gson();
		HttpServletResponse response = ServletActionContext.getResponse();
		
		String response1 = json.toJson(list);
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(response1.toString());
		this.list.clear();
		return null;
	}

	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	
	
}

