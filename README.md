# Public-Train-Booking-System
Develop/build an train ticket booking app using servlets and struts2 framework.
Develop/build an train ticket booking app using servlets and struts2 framework. There are two pages, admin page and reservation page.The admin page can manage all the trains and the tickets booked in each train.Also he can set the message to be sent to each user who reserves the ticket based on the points.The reservation fetches the details from the xml file which contains the details of the train,like its seating capacity and the travel source and destinations.The user can reserve and cancel their tickets in the reservation page.Also there is a waiting list column where the tickets which are pending to be reserved are in the waiting list table.It automatically gets confirmed if any tickets are cancelled

1.Download and install Eclipse Java
https://www.youtube.com/watch?v=xqS31gwunp0

2.Download and install XAMPP Panel for mysql
https://www.youtube.com/watch?v=-f8N4FEQWyY

4.Download and install apache tomcat server
https://www.youtube.com/watch?v=PH-bK3g2YmU

3.After following the steps in the above videos open the project.

4.open phymyadmin and import the 3 sql files provided

5.Run the project

Railway Ticket Reservation System  This is an servlet web app based on MVC concept.  HTML , CSS , JS , Scriptlets were used for front end  Mysql server was used for back end  Struts2 Framework was used for connecting front end and backend.  Jdbc is used to connect front end and backend  2 Packages were created one for all actions classes and other for all class files.  All operations that were processed were implemented in action class  Ajax is used to get the data from the backend  All are stored as objects while moving them through the backend EG: A class Train is created with 8 member variables and Getter&Setter
14 were created for the member variables. 1.private int Uid; 2. private int total; 3. private String Source; 4. private String Destination; 5. private int price; 6. private String Status; 7. private String phone; 8. private String trainid;  The train details are stored in xml file in the format <train name="Madurai Express" value="tr1"> <station name="Madurai"> <id>101</id> <seats>70</seats> <points>15</points> </station>
15
  
