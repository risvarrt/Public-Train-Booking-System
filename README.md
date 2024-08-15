
# Public Train Ticket Booking System

## Overview

The Public Train Ticket Booking System is a web application designed to facilitate the booking and management of train tickets. Developed using Java, Servlets, Struts2, and MySQL, this application allows users to reserve and cancel tickets, while admins can manage train details and booking records. The application is implemented using the MVC (Model-View-Controller) design pattern to ensure a clean separation of concerns and maintainable code.

## Features

- **User Interface:**
  - **Reservation Page:** Users can view available trains, book tickets, and manage their reservations.
  - **Admin Page:** Admins can add, update, and remove trains, view booking details, and set messages for users.

- **Backend Functionality:**
  - **Ticket Booking:** Users can book tickets, view available seats, and manage reservations.
  - **Waiting List:** Automatically manage waiting lists when tickets are fully booked.
  - **Data Storage:** Store booking and train information in a MySQL database.
  - **XML Integration:** Fetch train details from an XML file.

- **APIs:**
  - **REST API:** Perform CRUD operations for train and booking data. Integrated with Zoho Creator and secured with OAuth 2.0.

## Technologies Used

- **Programming Languages:** Java
- **Frameworks:** Struts2
- **Server:** Apache Tomcat
- **Database:** MySQL
- **IDE:** Eclipse
- **Other Tools:** Visual Studio Code, POSTMAN for API testing

## Installation

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/your-username/Public-Train-Ticket-Booking-System.git
   ```

2. **Set Up the Database:**
   - Import the provided SQL script to set up the database schema and sample data.

3. **Configure the Application:**
   - Update the database connection details in the `web.xml` file and `struts.xml` configuration files as needed.

4. **Build and Deploy:**
   - Use Eclipse or any preferred IDE to build the project.
   - Deploy the WAR file to Apache Tomcat server.

5. **Run the Application:**
   - Start the Tomcat server and navigate to `http://localhost:8080/YourAppName` to access the application.

## Usage

- **User:**
  - Access the reservation page to book and manage tickets.
  - View available trains and seat availability.

- **Admin:**
  - Access the admin page to manage trains and view booking details.
  - Add, update, or remove train records and manage user reservations.

## Future Enhancements

- **Specific Seat Booking:** Allow users to select specific seats.
- **Notification System:** Implement email or SMS notifications for booking confirmations.
- **Front-End Improvements:** Enhance the user interface with modern design elements.

## References

- [Java Tutorial](https://www.javatpoint.com/java-tutorial)
- [OOP Concepts](https://www.javatpoint.com/java-oops-concepts)
- [JDBC Tutorial](https://www.javatpoint.com/java-jdbc)
- [Struts2 Tutorial](https://www.javatpoint.com/struts-2-tutorial)
- [MySQL Documentation](https://dev.mysql.com/doc/)
