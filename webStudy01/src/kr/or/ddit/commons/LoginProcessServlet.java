package kr.or.ddit.commons;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import org.apache.commons.lang3.StringUtils;

@WebServlet("/login/loginProcess.do")
public class LoginProcessServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		/*1. 요청 파라미터 확보
		2. 검증
			- 통과 : 3번 처리
			- 불통 : 400 error 발생.
		3. 인증처리 (입력한 아이디와 비밀번호가 동일하면 성공)
			- 성공 : welcome page 로 이동 (Redirection)
					index.jsp 생성(authId 라는 속성으로 현재 로그인한 유저의 아이디를 출력.)
			- 실패(비밀번호 오류로 간주) : loginForm.jsp 로 이동 (동일한 아이디를 다시 입력하지 않도록.)
		*/
		String msg = "";
		String mem_id = req.getParameter("mem_id");
		String mem_pass = req.getParameter("mem_pass");
		HttpSession session = req.getSession();
		
		int statusCode = HttpServletResponse.SC_OK;
		if(StringUtils.isBlank(mem_id) || StringUtils.isBlank(mem_pass)){
			msg = "필수 파라미터 누락";
			statusCode = HttpServletResponse.SC_BAD_REQUEST;
		}
		if(statusCode != 200) {
			resp.sendError(statusCode, msg);
			
		}else {
			if(mem_id.equals(mem_pass)) {
				session.setAttribute("authID", mem_id);
				resp.sendRedirect(req.getContextPath() + "/index.jsp");
			}else {
				req.setAttribute("authID", mem_id);
				req.getRequestDispatcher("/login/loginForm.jsp").forward(req, resp);
			}
		}
		
		
		
	}// doPost 끝
}













