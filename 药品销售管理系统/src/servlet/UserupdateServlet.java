package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.Userservce;
import serviceimp.Useserviceimp;
@WebServlet("/UserupdateServlet")
public class UserupdateServlet extends HttpServlet{
		private static final long serialVersionUID = 1L;
	    public UserupdateServlet() {
	        super();
	    }
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doPost(request, response);
		}
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			{   
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
				//设置响应式格式
				response.setContentType("text/html,charset=utf-8");
			   Userservce  us=new Useserviceimp();
			   String usm=request.getParameter("username");
			   String psw=request.getParameter("password");
			   us.update(usm, psw);
			   request.getRequestDispatcher("index.jsp").forward(request, response);
		} 
	}
}
