import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.naming.*;
import javax.sql.DataSource;
import java.lang.NullPointerException;

//final year project
public class DAO 
{	
	private DataSource mysqlDS;
	public DAO() throws Exception 
	{
		Context context = new InitialContext();
		String jndiName = "java:comp/env/jdbc/studybuddy";
		mysqlDS = (DataSource) context.lookup(jndiName);
	}
	
	// Get info on Subject
	public ArrayList<Subject> getSubjectDetails() throws Exception 
	{
		ArrayList<Subject> subjects = new ArrayList<>();
		Connection conn = mysqlDS.getConnection();
		PreparedStatement myStmt = conn.prepareStatement("select * from subjects");
		ResultSet rs = myStmt.executeQuery();
		while (rs.next())
		{
			String id = rs.getString("id");
			String name = rs.getString("name");
			subjects.add(new Subject(id, name));
		}
		return subjects;
	}
	// Update Subject
	public void updateSubject(Subject subjects) throws SQLException
	{
		Connection conn = mysqlDS.getConnection();
		PreparedStatement myStmt = conn.prepareStatement("update subjects set id=?, name=?");
		myStmt.setString(1, subjects.getId());
		myStmt.setString(2, subjects.getName());		
		myStmt.executeUpdate();
	}
	//add a Manufacturer
	public void addSubject(Subject subjects) throws SQLException
	{
		Connection conn = mysqlDS.getConnection();
		PreparedStatement myStmt = conn.prepareStatement("insert into topics(id,name) values(?,?)");
		myStmt.setString(1, subjects.getId());
		myStmt.setString(2, subjects.getName());
		myStmt.executeUpdate();
	}
	
	//view topics\notes other
	public ArrayList<Topics> getTopicDetails() throws Exception
	{
		ArrayList<Topics> topics = new ArrayList<>();
		Connection conn = mysqlDS.getConnection();
		PreparedStatement myStmt = conn.prepareStatement("select s.subjectID, s.topicID, t.topicName, t.details from subject_topics s join topics t on s.topicID = t.topicID");
		ResultSet rs = myStmt.executeQuery();
		while (rs.next())
		{
			String subjectID = rs.getString("subjectID");
			String topicID = rs.getString("topicID");
			String topicName = rs.getString("topicName");
			String details = rs.getString("details");
			topics.add(new Topics(subjectID,topicID, topicName, details));
		}
		return topics;
	}

	public void addTopic(Topics topic) throws SQLException
	{
		Connection conn = mysqlDS.getConnection();
	
		System.out.println(topic.toString());
		//PreparedStatement myStmt = conn.prepareStatement("Insert into subject_topics values(?,?), topics values(?,?,?)");
		PreparedStatement myStmt = conn.prepareStatement("insert into topics(topicID,topicName,details) values(?,?,?)");
		myStmt.setString(1, topic.getTopicID());
		myStmt.setString(2, topic.getTopicName());
		myStmt.setString(3, topic.getDetails());
		//System.out.println(myStmt);
		myStmt.executeUpdate();
	}
	public void updateTopic(Topics topic) throws SQLException 
	{
		Connection conn = mysqlDS.getConnection();
		PreparedStatement myStmt = conn.prepareStatement("update topics set topicID = ?, topicName = ?, details = ?");
		myStmt.setString(1, topic.getTopicID());	
		myStmt.setString(2, topic.getTopicName());	
		myStmt.setString(3, topic.getDetails());	
		myStmt.executeUpdate();
		
	}

	public ArrayList<SubTopics> getSubTopicDetails() throws SQLException 
	{
		ArrayList<SubTopics> subTopic = new ArrayList<>();
		Connection conn = mysqlDS.getConnection();
		PreparedStatement myStmt = conn.prepareStatement("select * from subject_topics");
		ResultSet rs = myStmt.executeQuery();
		while (rs.next())
		{
			String subID = rs.getString("subjectID");
			String topID = rs.getString("topicID");
			subTopic.add(new SubTopics(subID, topID));
		}
		return subTopic;
	}

	public void addSubTopics(SubTopics subTopic) throws SQLException 
	{
		Connection conn = mysqlDS.getConnection();
		PreparedStatement myStmt = conn.prepareStatement("Insert into subject_topics values(?,?)");
		myStmt.setString(1, subTopic.getSubID());
		myStmt.setString(2, subTopic.getTopID());
		myStmt.executeUpdate();
	}


}