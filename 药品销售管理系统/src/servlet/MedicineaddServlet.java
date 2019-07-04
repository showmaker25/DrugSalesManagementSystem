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
import Model.Medicine;
@WebServlet("/MedicineaddServlet")
public class MedicineaddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public MedicineaddServlet() {
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
		MedicineDao md=new Medicineimp();
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String num=request.getParameter("number");
		Medicine mc=new Medicine(Integer.parseInt(id),name,Integer.parseInt(num));
		md.insertGoods(mc);;	
		request.getRequestDispatcher("medicinechange.jsp").forward(request, response);
	}
}

