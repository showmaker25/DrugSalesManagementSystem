package servlet;
import java.io 
.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.User;
import service.Userservce;
import serviceimp.Useserviceimp;
@WebServlet("/MangesearchServlet")
public class MangesearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public  MangesearchServlet() {
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
		Userservce  us=new Useserviceimp();
		User user=us.updateSelete(id);
		request.setAttribute("User", user);
		request.getRequestDispatcher("searchuser.jsp").forward(request, response);
	}
}