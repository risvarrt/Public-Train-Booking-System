package com.struts.object;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.LinkedHashMap;

public class Train {
	  public LinkedHashMap<Integer, Tickets> hm= new LinkedHashMap<Integer, Tickets>();
		  
	  public Train()
	  {
		  hm.clear();
	  }

	  public void clear()
	  {
		  hm.clear();
	  }
	 public void add(ArrayList<Board> b) {
		 for(int i=0;i<b.size();i++)
		 {
			 Tickets tobj=new Tickets();
			 tobj.setSeats(b.get(i).getSeats());
			 tobj.setStation(b.get(i).getStation());
			 hm.put(b.get(i).getId(),tobj);
		 }
	}
//	 public void change(char c, int num)
//	 {
//		 hm.replace(Character.toString(c),num); 
//	 }
	  
//	ArrayList<String> stations =new ArrayList<String>();
	
	/*
	 * public int getSeats() { return seats; }
	 * 
	 * public void setSeats(int seats) { this.seats = seats; }
	 */
}	
