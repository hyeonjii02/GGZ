package ggz.memberAction;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ggz.dao.MemberDao;
import ggz.vo.Member;

public class MemberUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		response.setCharacterEncoding("UTF-8");
		request.getParameter("UTF-8");
	
		String url="";
		boolean isRedirect=false;
		HttpSession session = request.getSession(); 
		
		MemberDao memberDao = MemberDao.getInstance();
		String update = request.getParameter("update");		
		
		if(update!=null && update.equals("y")) {
			String password=request.getParameter("password");
			String addr=request.getParameter("addr");
			String phone=request.getParameter("phone");

			
			Member member = (Member) session.getAttribute("member");
			

			member.setPassword(password);
			member.setAddr(addr);
			member.setPhone(phone);

			memberDao.update(member);
			session.setAttribute("member",member);
			isRedirect = true;
			url = "./update.GGZ?myUpdate=y";
		}else {
			Member member = (Member)session.getAttribute("member");
			request.setAttribute("name",member.getName());
			request.setAttribute("addr", member.getAddr());
			request.setAttribute("phone",member.getPhone());
			request.setAttribute("password",member.getPassword());
			request.setAttribute("up", request.getParameter("myUpdate"));
		 	url = "./member/myPage.jsp";
		}

		return  new ActionForward(isRedirect, url);
	}

}
