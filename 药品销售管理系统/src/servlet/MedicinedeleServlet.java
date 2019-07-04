package servlet;
import java.io 
.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Dao.MedicineDao;
import Daoimp.Medicineimp;
@WebServlet("/MedicinedeleServlet")
public class MedicinedeleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public  MedicinedeleServlet() {
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
		MedicineDao md=new Medicineimp();
		md.deleteGoods(Integer.parseInt(id));	
		request.getRequestDispatcher("medicinechange.jsp").forward(request, response);
	}
}

