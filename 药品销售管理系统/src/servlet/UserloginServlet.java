package servlet;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.User;
import service.Userservce;
import serviceimp.Useserviceimp;
@WebServlet("/UserloginServlet")
public class UserloginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
    public UserloginServlet() {
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
			User user;
			try {
				String usm=request.getParameter("username");
				String psw = request.getParameter("password");
				user = us.Login(usm, psw);
				System.out.println(user);
				if(user==null) {	
					request.getRequestDispatcher("failLogin.jsp").forward(request, response);
				}else {
					if(usm.equals("admin")&&psw.equals("admin")) {
						request.getRequestDispatcher("Adminindex.jsp").forward(request, response);
					} else
					request.getRequestDispatcher("userinfor.jsp").forward(request, response);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
		}
	} 
}
	

