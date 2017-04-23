package main;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;

@ManagedBean
@ViewScoped
public class TopicController 
{
	private ArrayList<Topics> topic;
	DAO dao;
	
	public TopicController() throws Exception
	{
		try 
		{
			dao = new DAO();
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	
	public ArrayList<Topics> getTopics() 
	{
		return topic;
	}

	public void loadTopics() throws Exception 
	{
		topic = dao.getTopicDetails();
	}
	
	public String updateTopic(Topics topic) throws Exception 
	{
		try 
		{
			dao.updateTopic(topic);
			return "topics";
		}
		catch (Exception e) 
		{
			FacesMessage message =  new FacesMessage("Error: " + e);
			FacesContext.getCurrentInstance().addMessage(null, message);
			return e.toString();
		}
	}
	
	public String addTopic(Topics topic) throws Exception
	{
		try
		{
			dao.addTopic(topic);
			return "topics";
		}
		catch (Exception e) 
		{
			FacesMessage message =  new FacesMessage("Error: " + e);
			FacesContext.getCurrentInstance().addMessage(null, message);
			return e.toString();
		}
	}
	
}
