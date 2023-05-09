package com.struts.action;


import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.struts.Database;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;
import com.struts.object.Traindetails;

public class GetTrain extends ActionSupport{

	private static final long serialVersionUID = 1L;
	ArrayList<Traindetails> train=new ArrayList<Traindetails>();
	public String execute() throws Exception{
		 for (Map.Entry mapElement : Database.Trains.entrySet()) {
		 Traindetails obj=new Traindetails();
		 obj.setId(mapElement.getKey().toString());
		 obj.setName(mapElement.getValue().toString());
		 train.add(obj);
		 }
            Gson json=new Gson();
    		HttpServletResponse response = ServletActionContext.getResponse();
    		String response1 = json.toJson(train);
    		response.setContentType("application/json");
    		response.setCharacterEncoding("UTF-8");
    		response.getWriter().print(response1.toString());
		return null;
	}
}
