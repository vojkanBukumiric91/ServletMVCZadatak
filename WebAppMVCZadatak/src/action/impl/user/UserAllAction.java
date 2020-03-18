package action.impl.user;

import javax.servlet.http.HttpServletRequest;

import action.AbstractAction;
import constants.ViewConstants;

public class UserAllAction extends AbstractAction {

	@Override
	public String execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return ViewConstants.ALL_USER;
	}

}
