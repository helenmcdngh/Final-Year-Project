import java.sql.SQLException;
import java.util.ArrayList;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;

@ManagedBean
@ViewScoped
public class SubjectController 
{
	private ArrayList<Subject> subject;
	DAO dao;
	
	public SubjectController() throws Exception
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
	
	public ArrayList<Subject> getSubjects() 
	{
		return subject;
	}

	public void loadSubjects() throws Exception 
	{
		subject = dao.getSubjectDetails();
	}
	
	public String updateSubject(Subject subject) throws Exception 
	{
		try 
		{
			dao.updateSubject(subject);
			return "subjects";
		}
		catch (Exception e) 
		{
			FacesMessage message =  new FacesMessage("Error: " + e);
			FacesContext.getCurrentInstance().addMessage(null, message);
			return e.toString();
		}
	}
	
	public String addSubject(Subject subject) throws Exception
	{
		try
		{
			dao.addSubject(subject);
			return "subjects";
		}
		catch (Exception e) 
		{
			FacesMessage message =  new FacesMessage("Error: " + e);
			FacesContext.getCurrentInstance().addMessage(null, message);
			return e.toString();
		}
	}
	
}
