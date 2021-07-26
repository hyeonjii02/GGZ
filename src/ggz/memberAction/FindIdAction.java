package ggz.memberAction;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ggz.dao.MemberDao;
import ggz.vo.Member;

public class FindIdAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		response.setCharacterEncoding("UTF-8");
		String url="";
		boolean isRedirect=false;
		
		MemberDao memberDao= MemberDao.getInstance();
		HttpSession session = request.getSession();
		
		System.out.println("못들어왔니?");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");

			Member member = memberDao.findId(name, phone);
			if(member!=null) {
				session.setAttribute("member", member);
				System.out.println("페스워드뷰로");
				url="./member/findPassword.jsp"; 
				isRedirect=true;
				
				
			}else {
				
				System.out.println("아이디못찾음");
				url="./member/findId.jsp";
				
				isRedirect=true;
			
		}
	
		return  new ActionForward(isRedirect, url);
	
		
		
	}
}
