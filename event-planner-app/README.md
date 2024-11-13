# Event Planner App

This is a full-stack Spring Boot web application for managing events, where users can create, view, edit, and delete events.
Each event includes items that attendees can bring, making it perfect for organizing gatherings.

## Demo Video
[Demo of event-planner-app](event-planner-demo.mp4)


## Features
- **CRUD Operations**: Create, view, edit and delete events and associated items.
- **User-Friendly Interface**: Designed frontend with FreeMarker Templates, HTML, CSS, and Bootstrap.
- **Scalable Cloud Deployment**: Hosted on AWS Elastic Beanstalk with a MySQL database on AWS RDS for a reliable cloud infrastructure.
- **Technologies Used**: Java, Spring Boot, MySQL, FreeMarker, HTML, CSS, and Bootstrap.

## Project Structure
```
event-planner-app/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/eben/apps/eventplanner/
│   │   │       ├── controller/        # Controllers for handling requests
│   │   │       ├── model/             # Model classes representing data
│   │   │       └── repository/        # Repository interfaces for data access
│   │   └── resources/
│   │       ├── templates/             # FreeMarker templates for views
│   │       └── application.properties # Configuration file
│   └── test/
│       └── java/
│           └── com/eben/apps/eventplanner/ # Test classes
│
├── target/                            # Compiled output files (generated)
├── pom.xml                             # Project dependencies and build config
└── README.md                           # README file for the project

```

## Installation and Setup
#### Prerequisites
- **Java 17**
- **Maven**: To build/run the project.
- **MySQL**: Will be used as our database.
- **IDE**: I used Eclipse.

## Clone the repository
To run the project locally on your machine, clone this reposotiory and navigate to event-planner-app.


```
git clone https://github.com/EbenFuentes/Spring-Boot-Projects.git
cd Spring-Boot-Projects/eveent-planner-app

```



### Database Configuration
1. **Create a Database**:
	- You can use mySQL Workbench or mySQL CLI.
    - Create a database, ``event_planner_db`` (or any name)
    - [MySQL guide for creating a database](https://dev.mysql.com/doc/mysql-getting-started/en/)
2. **Configure Database Credentials**:
	- In the project root, ``event-planner-app``, create a file named ``env.properties``.
    - Add the following lines. Replace ``<MySQL_user>`` and ``<MySQL_password>`` with your MySQL credentials. Replace ``event_planner_db`` with the name of your database if you used a different name.
    - ``application.properties`` should already be configured to use ``env.properties``, if created at the project root directory.
	
```
DB_URL=jdbc:mysql://127.0.0.1:3306/event_planner_db
DB_USER=<MySQL_user>
DB_PASSWORD=<MySQL_password>

```

### Running Locally
1. **Run the Application:**
	- Open Eclipse or your preferred IDE. Open ``event-planner-app`` in Eclipse. Look for ``EventPlannerAppApplication.java`` in ``src/main/java/com/eben/apps/eventplanner``
    - Right-cllck on ``EventPlannerAppApplication.java`` and select **Run as > Java Application**.
2. **Access the Application:**
	- Once the application is running, it should be running locally. It can be accessed in your web browser through:
	```
	http://localhost:8080
	```
	

