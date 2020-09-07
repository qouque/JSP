package kr.or.ddit.servlet04;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;

@WebServlet("/serverExplorer.do")
public class ServerExplorerServlet extends HttpServlet {
	
	private ServletContext application;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		
		application = getServletContext();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String param = req.getParameter("uri");
		String currentPath = "/";
		if(StringUtils.isNotBlank(param)) {
			currentPath = param;
		}
		String realPath = application.getRealPath(currentPath);
		File folder = new File(realPath);
		File[] listFiles = folder.listFiles();
		
		req.setAttribute("listFiles", listFiles);
		
		req.getRequestDispatcher("/WEB-INF/views/serverExplorer.jsp").forward(req, resp);
		
	}
	
}























