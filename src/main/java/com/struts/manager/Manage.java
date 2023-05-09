package com.struts.manager;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

import com.struts.Database;
import com.struts.action.AvailabiltyAction;
import com.struts.action.BuyAction;
import com.struts.action.CancelcAction;
import com.struts.action.CancelpAction;
import com.struts.action.Station;
import com.struts.action.StationAction;
import com.struts.action.ViewAction;
import com.struts.action.ViewAction1;
import com.struts.admin.BuyItem;
import com.struts.object.Board;
import com.struts.object.OptionVal;
import com.struts.object.Passengers;
import com.struts.object.Ticket;
import com.struts.object.Tickets;
import com.struts.object.Train;
public class Manage {

	public static Train t=new Train();
	
	public static Connection con;
	public static Connection connectionz() throws Exception{
		//System.out.println("summa"+t.hm);
		Class.forName("com.mysql.jdbc.Driver");
		con= DriverManager.getConnection("jdbc:mysql://localhost:3306/struts","root","");
		return con;
	}
	public static int viewc(ViewAction rs)
	{
		int count=0;
	
		try {
			
			 PreparedStatement ps=connectionz().prepareStatement("select * from trainc where trainid='"+rs.getTrainid()+"';");  
			  ResultSet rs1=ps.executeQuery();  
			  
			  while(rs1.next()){  
			   Ticket user=new Ticket();  
			   user.setUid(rs1.getInt(1)); 
			   user.setTrainid(Database.Trains.get(rs1.getString(2)));
			   user.setPhone(rs1.getString(3));
			   user.settotal(rs1.getInt(4)); 
			   user.setSource( t.hm.get(rs1.getInt(5)).getStation());  
			   user.setDestination(t.hm.get(rs1.getInt(6)).getStation());
			   user.setPrice(rs1.getInt(7));
			   user.setStatus(rs1.getString(8));
			   rs.getList().add(user);  
			   count++;
			  }  
			  
			  con.close();  
			 }catch(Exception e){e.printStackTrace();}  
			          
			 return count;  
	}
	public static int viewp(ViewAction1 rs)
	{
		int count=0;
		try {
			
			 PreparedStatement ps=connectionz().prepareStatement("select * from trainp where trainid='"+rs.getTrainid()+"';");  
			  ResultSet rs1=ps.executeQuery(); 
			  
			  while(rs1.next()){  
				  Ticket user=new Ticket();  
				   user.setUid(rs1.getInt(1)); 
				   user.setTrainid(Database.Trains.get(rs1.getString(2)));
				   user.setPhone(rs1.getString(3));
				   user.settotal(rs1.getInt(4)); 
				   user.setSource( t.hm.get(rs1.getInt(5)).getStation());  
				   user.setDestination(t.hm.get(rs1.getInt(6)).getStation());
				   user.setPrice(rs1.getInt(7));
				   user.setStatus(rs1.getString(8));
				   rs.getList().add(user);  
				   count++;
			  }  
			  
			  con.close();  
			 }catch(Exception e){e.printStackTrace();}  
			          
			 return count;  
	}
	public static int getlist(StationAction rs)
	{
		int count=0;
		try {
			ArrayList<Integer> listKeys = new ArrayList<Integer>(t.hm.keySet());
			System.out.println(listKeys);
			 PreparedStatement ps=connectionz().prepareStatement("SELECT * FROM trainc WHERE sstation BETWEEN "+listKeys.get(0)+" and "+rs.getStation()+" AND dstation BETWEEN "+rs.getStation()+" and '"+listKeys.get( listKeys.size() - 1 )+"'");  
			  ResultSet rs1=ps.executeQuery();  
			  
			  while(rs1.next()){  
				  Passengers user=new Passengers(); 
				  user.setUid(rs1.getInt(1)); 
				  user.setTotal(rs1.getInt(4)); 
				   user.setPhone(rs1.getString(3));
				   user.setSource(t.hm.get(rs1.getInt(5)).getStation());  
				   user.setDestination(t.hm.get(rs1.getInt(6)).getStation());  
				   rs.getList().add(user);  
			  }  
			 
			  con.close();  
			 }catch(Exception e){e.printStackTrace();}  
			          
			 return count;  
	}
	public static int getavail(AvailabiltyAction rs)
	{
		int count=0;
		try {
			
			
			 Set<Entry<Integer,Tickets>> entrySet=t.hm.entrySet();
			 
	        for (Entry<Integer,Tickets> entry : entrySet) {
	        	Board obj =new Board();
	        	
	              obj.setId(entry.getKey());
	              obj.setStation(entry.getValue().getStation());
	              obj.setSeats(entry.getValue().getSeats());
	              rs.getList().add(obj);
	           // count++;
	        }
	     
			 }catch(Exception e){e.printStackTrace();}  
			          
			 return count;  
	}
	public static int station(Station rs)
	{
		int count=0;
		try {
			
			
			 Set<Entry<Integer,Tickets> > entrySet
	            = t.hm.entrySet();
	 
	        for (Entry<Integer,Tickets> entry : entrySet) {    
	        	OptionVal obj=new OptionVal();
	        	obj.setStation(entry.getValue().getStation());
	        	obj.setId(entry.getKey());
	            rs.getList().add(obj);
	        }
	     
			 }catch(Exception e){e.printStackTrace();}  
			          
			 return count;  
	}
	public static int buy(BuyAction rs)
	{
	//	System.out.print(AvailabiltyAction.getList1());
		int flag=0;
		String status="CONFIRMED";
//		ArrayList<Integer> temp=new ArrayList<Integer>();
		int price=rs.getTotal()*BuyAction.cost;
		int points=0;
		//System.out.println("b4 buying"+t.hm);
		int n,s,d;
		n=rs.getTotal();
		s=rs.getSource();
		d=rs.getDestination();
		for(int i=s;i<d;i++)
		{
			char c=(char)i;
			
			int num=t.hm.get(i).getSeats()-n;
			if(num<0)
			{
				//t.hm.replace(Character.toString(c),0);
				status="PENDING";
				break;
			}
		}
		if(status.equals("CONFIRMED"))
		{
			for(int i=s;i<d;i++)
			{
				points=points + AvailabiltyAction.getMap().get(i);
				char c=(char)i;
				int num=t.hm.get(i).getSeats()-n;
				if(num>=0)
				{
					Tickets temp=new Tickets();
					temp.setSeats(num);
					temp.setStation(t.hm.get(i).getStation());
					t.hm.put(i,temp);
					
					ArrayList<Board> b = Database.vehicleDtabase.get(rs.getTrainid());
					for(int j=0;j<b.size();j++)
					{
						if(b.get(j).getId()==i)
						{
							Board temp1=new Board();
							temp1.setId(i);
							temp1.setSeats(num);
							temp1.setStation(t.hm.get(i).getStation());
							b.set(j, temp1);
							break;
						}
					}
					Database.vehicleDtabase.replace(rs.getTrainid(), b);
					//t.hm.replace(Character.toString(c),num);
				}
			}
			points=points*rs.getTotal();
			//System.out.println("A4 buying"+t.hm);
			//System.out.println(t.seats);
			try {
				PreparedStatement pst=connectionz().prepareStatement("INSERT INTO trainc (phone,count,sstation,dstation,price,status,points,trainid) values (?,?,?,?,?,?,?,?)");
				pst.setString(1, rs.getPhone());
				pst.setInt(2, rs.getTotal());
//				pst.setString(3, t.hm.get(rs.getSource()).getStation());
//				pst.setString(4, t.hm.get(rs.getDestination()).getStation());
				pst.setInt(3, rs.getSource());
				pst.setInt(4, rs.getDestination());
				pst.setInt(5, price);
				pst.setString(6, status);
				pst.setInt(7, points);
				pst.setString(8,rs.getTrainid());
				flag=pst.executeUpdate();
			}catch(Exception ex) {
				ex.printStackTrace();
			}
			return points;
		}
		else if(status.equals("PENDING"))
		{
			try {
				PreparedStatement pst=connectionz().prepareStatement("INSERT INTO trainp (phone,count,sstation,dstation,price,status,trainid) values (?,?,?,?,?,?,?)");
				pst.setString(1, rs.getPhone());
				pst.setInt(2, rs.getTotal());
//				pst.setString(3, t.hm.get(rs.getSource()).getStation());
//				pst.setString(4, t.hm.get(rs.getDestination()).getStation());
				pst.setInt(3, rs.getSource());
				pst.setInt(4, rs.getDestination());
				pst.setInt(5, price);
				pst.setString(6, status);
				pst.setString(7,rs.getTrainid());
				flag=pst.executeUpdate();
				
		}catch(Exception ex) {
			ex.printStackTrace();
		}
			//System.out.println("Pending buying"+t.hm);
		return flag;
		}
		return flag;
		
	}
	
	public static int deletep(CancelpAction rs)
	{
		int flag=0;
		try {
		PreparedStatement dst=connectionz().prepareStatement("DELETE FROM trainp WHERE uid='"+rs.getUid()+"';");
		 flag=dst.executeUpdate();
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return flag;
	}
	
	public static int deletec(CancelcAction rs)
	{
		int flag=0,flag1=0,flag3=0;
		boolean flag2=true;
		int cs,cd,ps,pd,points=0;
		int ct,pt;
		String status="CONFIRMED";
		try {
			PreparedStatement pst=connectionz().prepareStatement("SELECT * FROM trainc WHERE uid='"+rs.getUid()+"';");
			
			 ResultSet rs1=pst.executeQuery();
			 rs1.next();
			 ct=rs1.getInt(4); 
			 cs=rs1.getInt(5);  
			 cd=rs1.getInt(6);  
//			 System.out.println("nc"+ct);
//		 	 System.out.println("Sc"+cs);
//		 	 System.out.println("Dc"+cd);

			 PreparedStatement dst=connectionz().prepareStatement("DELETE FROM trainc WHERE uid='"+rs.getUid()+"';");
			 flag=dst.executeUpdate();
			 for(int i=cs;i<cd;i++)
			 {
				 	char c=(char)i;
				 	
					int num=t.hm.get(i).getSeats()+ct;
					if(num>=0)
					{
						Tickets temp=new Tickets();
						temp.setSeats(num);
						temp.setStation(t.hm.get(i).getStation());
						t.hm.replace(i,temp);
						ArrayList<Board> b = Database.vehicleDtabase.get(rs.getTrainid());
						for(int j=0;j<b.size();j++)
						{
							if(b.get(j).getId()==i)
							{
								Board temp1=new Board();
								temp1.setId(i);
								temp1.setSeats(num);
								temp1.setStation(t.hm.get(i).getStation());
								b.set(j, temp1);
								break;
							}
						}
						Database.vehicleDtabase.replace(rs.getTrainid(), b);
					} 
			 }
			 //System.out.println("After deleting"+t.hm);
			 PreparedStatement pst1=connectionz().prepareStatement("select * from trainp");  
			 ResultSet rs2=pst1.executeQuery();  
			 while(rs2.next())
			 {
				pt=rs2.getInt(4); 
		   	    ps=rs2.getInt(5);  
		 	    pd=rs2.getInt(6);  
		 	   for(int i=ps;i<pd;i++)
				{
		 		   //System.out.println(i);
					
					//System.out.print(c);
		 		   
					int num=t.hm.get(i).getSeats()-pt;
					if(num<0)
					{
						status="PENDING";
						break;
					}
				}
		 	  if(status.equals("CONFIRMED"))
				{
					for(int i=ps;i<pd;i++)
					{
						points=points + AvailabiltyAction.getMap().get(i);
						int num=t.hm.get(i).getSeats()-pt;
						if(num>=0)
						{
							Tickets temp=new Tickets();
							temp.setSeats(num);
							temp.setStation(t.hm.get(i).getStation());
							t.hm.replace(i,temp);
							ArrayList<Board> b = Database.vehicleDtabase.get(rs.getTrainid());
							for(int j=0;j<b.size();j++)
							{
								if(b.get(j).getId()==i)
								{
									Board temp1=new Board();
									temp1.setId(i);
									temp1.setSeats(num);
									temp1.setStation(t.hm.get(i).getStation());
									b.set(j, temp1);
									break;
								}
							}
							Database.vehicleDtabase.replace(rs.getTrainid(), b);
						}
					}
					
					//System.out.println(t.hm);
					try {
						PreparedStatement pst2=connectionz().prepareStatement("INSERT INTO trainc (phone,count,sstation,dstation,price,status,points,trainid) values (?,?,?,?,?,?,?,?)");
						pst2.setString(1, rs2.getString(3));
						pst2.setInt(2, rs2.getInt(4));
						pst2.setInt(3, rs2.getInt(5));
						pst2.setInt(4, rs2.getInt(6));
						pst2.setInt(5, rs2.getInt(7));
						pst2.setString(6, status);
						pst2.setInt(7, rs2.getInt(4)*points);
						pst2.setString(8,  rs2.getString(2));
						flag1=pst2.executeUpdate();
						PreparedStatement dst1=connectionz().prepareStatement("DELETE FROM trainp WHERE uid='"+rs2.getInt(1)+"';");
						flag3=dst1.executeUpdate();
					}catch(Exception ex) {
						ex.printStackTrace();
					}
					//System.out.println("Pending transform"+t.hm);
					return flag;
				}
				else if(status.equals("PENDING"))
				{
					continue;
				}	    
		}

		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return flag;
	}
	public static int getmessage(BuyAction rs)
	{
		int count=0;
		try {
		PreparedStatement ps=connectionz().prepareStatement("SELECT * FROM adminpanel where trainid='"+rs.getTrainid()+"';");
		
		 ResultSet rs1=ps.executeQuery();  
		  
		  while(rs1.next()){  
			  int from = Integer.parseInt(rs1.getString(4).split("-")[0]);
			  int to = Integer.parseInt(rs1.getString(4).split("-")[1]);
			  if(rs.getPoints()>=from && rs.getPoints()<to)
			  {
				  BuyItem action=new BuyItem();  
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
				   rs.setObj(action);
				   count++;
			  }
			  
		  }  
		  
		  con.close(); 
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return count;
	}
	
}
