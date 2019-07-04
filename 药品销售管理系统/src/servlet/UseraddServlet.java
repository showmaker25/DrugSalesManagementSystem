package servlet;
import Model.User;
import service.Userservce;
import serviceimp.Useserviceimp;
import java.io 
.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/UseraddServlet")
public class UseraddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UseraddServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		//设置响应式格式
		response.setContentType("text/html,charset=utf-8");
		String id=request.getParameter("id");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String name=request.getParameter("name");
		String sex=request.getParameter("sex");
		String tele=request.getParameter("tele");
		String birth=request.getParameter("birth");
		User user=new User(id,username,password,name,sex,tele,birth);
	Userservce  us=new Useserviceimp();
		us.user_add(user);		
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
}


