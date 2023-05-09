package com.struts.admin.action;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.struts.admin.AdminManage;
public class DeleteBuyAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private String range;

	public String execute() throws Exception{
		int res=AdminManage.deletea(this);
		HttpServletResponse response = ServletActionContext.getResponse();
//		response.getWriter().print();
		if(res==1)
			response.getWriter().print("Deleted Successfully");
		else
			response.getWriter().print("noo");
		return null;
	}

	public String getRange() {
		return range;
	}

	public void setRange(String range) {
		this.range = range;
	}
}

