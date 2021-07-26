package ggz.quizAction;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ggz.memberAction.Action;
import ggz.memberAction.ActionForward;

public class MyPageSelectAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		String url="";
		boolean isRedirect=false;
		
		return  new ActionForward(isRedirect, url);
	}

}
