 
Helen McDonagh 3rd year project
STUDYBUDDY
G00320304 | Computing in Software Development | 24th of April 2017 
Table of Content
Introduction 
Technology Used 
Features\Design of Implementation 
Architecture of the Solution 
Design Methodology 
Known Bugs 
Limitations 
Recommendations for Future Development 
System Requirements 
Conclusion  
References  

 
Introduction
My Project is an application that will help secondary school store their notes for all their subjects in one place and it also has helpful information for studying and for their exams. There is a list of all subjects that the student can use and then develop the notes from then on. 
The information will be stored in a SQL database and kept, the database is the key factor for this application. I wanted to make this application because I have seen that some students having problems writing down their notes losing vital sheets of paper. So, I thought why not make it portal and paperless, so all they would have to do is turn on their computers and run it and have all of it in front of them. 
I am used to java is has been one of my core languages for the last three years, and SQL. This project has helped me develop SQL queries and how to build a database. The database that I am using I created myself, and it will be stored locally on the machine. I am using apache tomcat for a server to show the application on localhost.
Technology Used
The technology I used in my project are the following:
•	Java
•	SQL
•	GitHub
•	JSF
•	Apache Tomcat
•	Chrome
 
Features\Design of the Implementation
I designed this project as a single-user system for one user at a time, all they need to do is look up for the subject they want to add notes for, then add a subject topic id and then add their notes. After that they can read their notes in numerical order ascending by subject id. There is a page on that has resources to help the student find exam papers, other sources of information on all junior and leaving certificate subjects, history channel and national geographic to help them learn through forms of media.
The application produces a webpage in eclipse, which then you can copy the link and paste it into any web browser. It will the show you the homepage which then allows you to navigate throughout the other pages. This project will not need any static or dynamic software updates for any aspects of it. This project is to help students with their studies and help them concentrate. 
Eclipse
I used Eclipse for all the main project working through the java and xhtml pages. The main coding of the project is in DAO file; the DAO file handles all the prepare Statements to return the data from the database to the web page.
 
The above image is showing the statement that is selecting the data from the studybuddy database so you can return it in the page. It is a very simple select command. It will only return what is select from the database.

   
Here is how I am sourcing all the data by selecting it from database, and then I have an insert statement to add the topics to the database. It will then output the data to the page. I added Bootstrap to the project to help with styling it over all, before it looked quite cold and basic.
   
Here is the output and the code behind the add notes page. Data is read in through inputted text under the following headings:
-	Topic ID
-	Topic Name
-	Details
These refer back to the topicController file that then goes to the DAO file.
 
WampServer\SQL
I used a wampserver  to create the studybuddy database, I then create three tables and then I called them “subjects”, “topics”, “subject_topics”. Here are the sql commands I used to create the database and tables.
Create Database ‘studybuddy’;
Create table if not exists ‘subjects’ (id` int(3) not null,`name` text not null,primary key (`id`)) ENGINE=InnoDB;
Create table if not exists `subject_topics` ( `subjectid` int(3) not null,  `topicid` int(11) not null,  primary key (`subjectid`,`topicid`),  key `topicid` (`topicid`)) ENGINE=InnoDB;
Create table if not exists `topics` (  `topicid` int(11) not null,  `topicname` text not null,  `details` mediumtext not null,  primary key (`topicid`),  key `topicid` (`topicid`))ENGINE=InnoDB;
I connected the subjects table by id to the subject_topics table by subjectid. Then I connected subject_topics table by topicID to the topics table by topicID. This connects the tables so when I create a new topic, I create a row in the subject_topics table first and then add my notes in the topics table. So when I want to select all the English notes for example I create a join that will select everything from all tables and display all the notes under the subject english.
The database overall is quite simply design so anyone can read it and understand what it’s actually purpose is. I choose to use mysql because I understand how it works. 


 
Architecture of the Solution
Architecture of the project
Design Methodology
Structure and images software used
Known Bugs
Flaws 
Limitations
slow
Recommendations for Future Development
What would you have done differently change software
System Requirements
System req
Technology Used and Why
Tech used
Conclusion
Tech used

