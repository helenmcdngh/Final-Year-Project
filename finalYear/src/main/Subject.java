package main;
import javax.faces.bean.ManagedBean;
		
@ManagedBean
public class Subject
{
	private String id;
	private String name;
	
	//main constructor
	public Subject(String id, String name)
	{
		this.id = id;
		this.name = name;
	}
	public Subject()
	{
		//null constructor
	}
	public String getId() 
	{
		return id;
	}
	public void setId(String id) 
	{
		this.id = id;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}	
}
