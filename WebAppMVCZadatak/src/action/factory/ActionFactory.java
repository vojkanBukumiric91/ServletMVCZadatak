package action.factory;

import action.AbstractAction;
import action.impl.LoginAction;
import action.impl.user.UserAddAction;
import action.impl.user.UserAllAction;

public class ActionFactory {
	public static AbstractAction createActionFactory(String actionName) {
		AbstractAction action =null;
		if(actionName.equalsIgnoreCase("/login")) {
			action = new LoginAction();
		}
		if(actionName.equalsIgnoreCase("/users/add")) {
			action = new UserAddAction();
		}
		if(actionName.equalsIgnoreCase("/users/all")) {
			action = new UserAllAction();
		}
		
		return action;
		
	}
}
