package com.struts;
import java.io.File;
import java.util.*;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.struts.object.Board;
public class Database {
	 public static LinkedHashMap<String,ArrayList<Board>> vehicleDtabase = new LinkedHashMap<>();
	 public static LinkedHashMap<String,String> Trains = new LinkedHashMap<>();
	 public static LinkedHashMap<String,LinkedHashMap<Integer,Integer>> pts = new LinkedHashMap<>();
	 static {
		 try   
			{  
			
			File file = new File("E:\\Zoho\\struts2\\railways2\\src\\main\\webapp\\stlist.xml");  
		
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();  
			
			DocumentBuilder db = dbf.newDocumentBuilder();  
			Document doc = db.parse(file);  
			doc.getDocumentElement().normalize();  
			 NodeList TrainList = doc.getElementsByTagName("train");
	            for(int i = 0; i <TrainList.getLength(); i++) {
	                Node train = TrainList.item(i);
	                if(train.getNodeType() == Node.ELEMENT_NODE) {

	                    Element TrainElement = (Element) train;
	                    Trains.put(TrainElement.getAttribute("value"),TrainElement.getAttribute("name"));
	                    LinkedHashMap<Integer,Integer> hm=new LinkedHashMap<>();
	                    NodeList trainDetails =  train.getChildNodes();
	                    ArrayList<Board> list=new ArrayList<Board>();  
						for(int j = 0; j < trainDetails.getLength(); j++){
	                        Node station = trainDetails.item(j);
	                        if(station.getNodeType() == Node.ELEMENT_NODE) {
	                            Element StationElement = (Element) station;
	                            
	                            Board obj1=new Board();
	                           // ids.add(Integer.parseInt(StationElement.getElementsByTagName("id").item(0).getTextContent()));
	                            obj1.setStation(StationElement.getAttribute("name"));
	                            obj1.setSeats(Integer.parseInt(StationElement.getElementsByTagName("seats").item(0).getTextContent()));
	                            obj1.setId(Integer.parseInt(StationElement.getElementsByTagName("id").item(0).getTextContent()));
	                            list.add(obj1);
	                          
	                            hm.put(Integer.parseInt(StationElement.getElementsByTagName("id").item(0).getTextContent()),Integer.parseInt(StationElement.getElementsByTagName("points").item(0).getTextContent()));
	                            //this.list1.add(obj);
//	                            System.out.println("     " + StationElement.getTagName() + ": " + StationElement.getAttribute("name"));
//	                            System.out.println(StationElement.getElementsByTagName("id").item(0).getTextContent());
//	                            System.out.println(StationElement.getElementsByTagName("seats").item(0).getTextContent());
//	                            System.out.println(StationElement.getElementsByTagName("points").item(0).getTextContent());
	                            }
	                    }
	                    vehicleDtabase.put(TrainElement.getAttribute("value"), list);
	                    pts.put(TrainElement.getAttribute("value"),hm);
	                }
	            }
			}
			catch (Exception e)   
			{  
			e.printStackTrace();  
			}  

	 }
}
