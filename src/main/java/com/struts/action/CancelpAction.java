package com.struts.action;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.struts.manager.Manage;
public class CancelpAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private int Uid;
	public int getUid() {
		return Uid;
	}
	public void setUid(int uid) {
		Uid = uid;
	}
	public String execute() throws Exception{
		int res=Manage.deletep(this);
		HttpServletResponse response = ServletActionContext.getResponse();
//		response.getWriter().print();
		if(res==1)
			response.getWriter().print("Cancelled Successfully");
		else
			response.getWriter().print("noo");
		return null;
	}
}
