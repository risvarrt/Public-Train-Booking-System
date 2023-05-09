package com.struts.admin.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;
import com.struts.admin.AdminManage;
import com.struts.admin.BuyItem;

public class ViewBuy extends ActionSupport{
	private static final long serialVersionUID = 1L;
	ArrayList<BuyItem> list=new ArrayList<BuyItem>();  
	  
	public ArrayList<BuyItem> getList() {  
	    return list;  
	}  
	public void setList(ArrayList<BuyItem> list) {  
	    this.list = list;  
	}  
	public String execute() throws Exception{
		int res=AdminManage.viewb(this);
		Gson json=new Gson();
		HttpServletResponse response = ServletActionContext.getResponse();
		
		if(res>=1)
		{
			String response1 = json.toJson(list);
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().print(response1.toString());
		}
		else
		{
			 response.sendError(HttpServletResponse.SC_BAD_REQUEST, "important_parameter needed");
		}

		return null;
	}
}
