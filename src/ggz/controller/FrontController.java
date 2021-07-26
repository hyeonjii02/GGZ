package ggz.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ggz.memberAction.Action;
import ggz.memberAction.ActionForward;
import ggz.memberAction.FindIdAction;
import ggz.memberAction.FindPasswordAction;
import ggz.memberAction.HomeAction;
import ggz.memberAction.JoinInsertAction;
import ggz.memberAction.LoginCheckAction;
import ggz.memberAction.LoginSelectOneAction;
import ggz.memberAction.LogoutAction;
import ggz.memberAction.MemberUpdateAction;
import ggz.quizAction.CTestGradeAction;
import ggz.quizAction.CTestNextAction;
import ggz.quizAction.CTestPreAction;
import ggz.quizAction.CTestSelectAction;
import ggz.quizAction.MTestGradeAction;
import ggz.quizAction.MTestNextAction;
import ggz.quizAction.MTestPreAction;
import ggz.quizAction.MTestSelectAction;
import ggz.quizAction.QuizAction;

@WebServlet("*.GGZ")
public class FrontController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean isRedirect = true;
		String url = "";
		Action action = null;
		ActionForward forward= null;
		String spath = request.getServletPath();
		System.out.println(spath);

		//member controller
		if (spath.equals("/join.GGZ")) {
			action = new JoinInsertAction();
			forward = action.execute(request, response);
		}else if(spath.equals("/home.GGZ")) {
			action = new HomeAction();
			forward = action.execute(request, response);
		}else if(spath.equals("/update.GGZ")) {
			action = new MemberUpdateAction();
			forward = action.execute(request, response);
		}else if (spath.equals("/login.GGZ")) {
			action = new LoginSelectOneAction();
			forward = action.execute(request, response);
		}else if (spath.equals("/logout.GGZ")) {
			action = new LogoutAction();
			forward = action.execute(request, response);
		}else if(spath.equals("/idCheck.GGZ")) {
			action = new LoginCheckAction();
			forward = action.execute(request, response);		
		}else if(spath.equals("/findId.GGZ")){
			action = new FindIdAction();
			forward = action.execute(request, response);
		}else if(spath.equals("/findPassword.GGZ")){
			action = new FindPasswordAction();
			forward = action.execute(request, response);
		}
		//quiz controller
		else if(spath.equals("/quiz.GGZ")) {
			action = new QuizAction();
			forward = action.execute(request, response);
		}else if(spath.equals("/mTest.GGZ")) {
			action = new MTestSelectAction();
			forward = action.execute(request, response);
		}
		else if(spath.equals("/mTestnext.GGZ")) {
			action = new MTestNextAction();
			forward = action.execute(request, response);
		}else if(spath.equals("/mTestpre.GGZ")) {
			action = new MTestPreAction();
			forward = action.execute(request, response);
		}else if(spath.equals("/mTestGrade.GGZ")) {
			action = new MTestGradeAction();
			forward = action.execute(request, response);
		}else if(spath.equals("/cTest.GGZ")) {
			action = new CTestSelectAction();
			forward = action.execute(request, response);
		}else if(spath.equals("/cTestnext.GGZ")) {
			action = new CTestNextAction();
			forward = action.execute(request, response);
		}else if(spath.equals("/cTestpre.GGZ")) {
			action = new CTestPreAction();
			forward = action.execute(request, response);
		}else if(spath.equals("/cTestGrade.GGZ")) {
			action = new CTestGradeAction();
			forward = action.execute(request, response);
		}
		
		
		
		
		
		
		if(forward!=null) {
		isRedirect = forward.isRedirect();
		url = forward.getUrl();
		}
		if(isRedirect) {
			response.sendRedirect(url);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher(url);
			rd.forward(request, response);
		}
				
	}
}
