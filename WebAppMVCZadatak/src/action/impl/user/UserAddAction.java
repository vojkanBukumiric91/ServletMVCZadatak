package action.impl.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import action.AbstractAction;
import constants.ViewConstants;
import domain.User;

public class UserAddAction extends AbstractAction  {

	@Override
	public String execute(HttpServletRequest request) {
		String view = ViewConstants.ADD_USER;
		
		
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		User user = new User(firstname, lastname, username, password);
		List<User> users = (List<User>) request.getServletContext().getAttribute("users");
		
		return view;
	}

}
