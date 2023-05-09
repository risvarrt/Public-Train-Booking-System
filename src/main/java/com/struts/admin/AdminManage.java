package com.struts.admin;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.struts.admin.action.BuyMessage;
import com.struts.admin.action.DeleteBuyAction;
import com.struts.admin.action.ViewBuy;

public class AdminManage {
	public static Connection con;
	public static Connection connectionz() throws Exception{
		//System.out.println("summa"+t.hm);
		Class.forName("com.mysql.jdbc.Driver");
		con= DriverManager.getConnection("jdbc:mysql://localhost:3306/struts","root","");
		return con;
	}
	public static int viewb(ViewBuy rs)
	{
		int count=0;
		try {
		PreparedStatement ps=connectionz().prepareStatement("SELECT * FROM adminpanel;");
		
		 ResultSet rs1=ps.executeQuery();  
		  
		  while(rs1.next()){  
			  		String from = rs1.getString(4).split("-")[0];
			  		String to = rs1.getString(4).split("-")[1];
				  BuyItem action=new BuyItem();  
				  action.setAid(rs1.getInt(1));
				  	action.setFrom(from);
				  	action.setTo(to);
				  	action.setTrainid(rs1.getString(2));
				   action.setEmail(rs1.getBoolean(5));
				   action.setCall(rs1.getBoolean(7));
				   action.setMessage(rs1.getBoolean(6));
				   action.setEtitle(rs1.getString(8));
				   action.setEmessage(rs1.getString(9));
				   action.setCtitle(rs1.getString(10));
				 //  System.out.println(rs1.getString(9));
				   action.setCmessage(rs1.getString(11));
				   action.setMtitle(rs1.getString(12));
				   action.setMmessage(rs1.getString(13));
				   rs.getList().add(action);
				   count++;
			  }
			  
		  
		  con.close(); 
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return count;
	}
	public static int deletea(DeleteBuyAction rs)
	{
		int flag=0;
		try {
		PreparedStatement dst=connectionz().prepareStatement("DELETE FROM adminpanel WHERE points=\""+rs.getRange()+"\"");
		//dst.setString(1, rs.getRange());
		 flag=dst.executeUpdate();
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return flag;
	}
	public static int buymess(BuyMessage rs)
	{
		int flag=0;
		try {
			//INSERT INTO table (id, name, age) VALUES(1, "A", 19) ON DUPLICATE KEY UPDATE name="A", age=19
			String range=rs.getFrom()+"-"+rs.getTo();
			boolean email,call,message;
			String et,mt,ct,em,cm,mm;
			if(rs.getCall()==null)
			{
				call=false;
				ct=cm="";
			}	
			else
			{
				call=true;
				ct=rs.getCtitle();
				cm=rs.getCmessage();
			}
				
			if(rs.getEmail()==null)
			{
				email=false;
				et=em="";
			}
			else
			{
				email=true;
				et=rs.getEtitle();
				em=rs.getEmessage();
			}
			if(rs.getMessage()==null)
			{
				message=false;
				mt=mm="";
			}
			else
			{
				message=true;
				mm=rs.getMmessage();
				mt=rs.getMtitle();
			}
			PreparedStatement pst=connectionz().prepareStatement("insert into adminpanel (points,email,phone,message,etitle,emessage,ctitle,cmessage,mtitle,mmessage,action,trainid) values (?,?,?,?,?,?,?,?,?,?,?,?) ON DUPLICATE KEY UPDATE email=?,phone=?,message=?,etitle=?,emessage=?,ctitle=?,cmessage=?,mtitle=?,mmessage=?,action=?;");
			pst.setString(1,range);
			pst.setBoolean(2,email);
			pst.setBoolean(3,call);
			pst.setBoolean(4,message);
			pst.setString(5,et);
			pst.setString(6, em);
			pst.setString(7,ct);
			pst.setString(8, cm);
			pst.setString(9,mt);
			pst.setString(10,mm);
			pst.setString(11,rs.getAction());
			pst.setString(12,rs.getTrainid());
			pst.setBoolean(13,email);
			pst.setBoolean(14,call);
			pst.setBoolean(15,message);
			pst.setString(16,et);
			pst.setString(17, em);
			pst.setString(18,ct);
			pst.setString(19, cm);
			pst.setString(20,mt);
			pst.setString(21, mm);
			pst.setString(22, rs.getAction());
			flag=pst.executeUpdate();
			
	}catch(Exception ex) {
		ex.printStackTrace();
	}
		return flag;
	}
	
}
