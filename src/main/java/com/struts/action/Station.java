package com.struts.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;
import com.struts.manager.Manage;
import com.struts.object.OptionVal;
import com.struts.object.Train;
public class Station extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	ArrayList<OptionVal> list=new ArrayList<OptionVal>();  
	
	public ArrayList<OptionVal> getList() {  
	    return list;  
	}  
	public void setList(ArrayList<OptionVal> list) {  
	    this.list = list;  
	}  
	public String execute() throws Exception{
	//	System.out.println(this.stations);
	//System.out.println(this.seats);
		//Train new1=Manage.getTrain();
		
		int res=Manage.station(this);
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
	
}

