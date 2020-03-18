package listener;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import domain.User;

/**
 * Application Lifecycle Listener implementation class ContextListener
 *
 */
@WebListener
public class ContextListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public ContextListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  {
    	List<User> users = new ArrayList<User>();
    	
    	users.add(new User("Petar","Petrovic","user1", "user1"));
		users.add(new User("Milos","Milosevic","user2", "user2"));
		users.add(new User("Petar","Jankovic","user3", "user3"));
		users.add(new User("Ana","Jovanovic","user4", "user4"));
		sce.getServletContext().setAttribute("users", users);
      
    }
	
}
