package servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.User;
import service.Userservce;
import serviceimp.Useserviceimp;
@WebServlet("/UserinforupdateServlet")
public class UserinforupdateServlet extends HttpServlet{
		private static final long serialVersionUID = 1L;
	    public UserinforupdateServlet() {
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
			   request.getRequestDispatcher("ident.jsp").forward(request, response);
			   String psw=request.getParameter("password");
			   request.getRequestDispatcher("user.jsp").forward(request, response);
			  User u=new User(psw);
			  us.user_update(u);
		} 
	}
}

