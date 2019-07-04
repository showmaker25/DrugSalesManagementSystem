package servlet;

import java.io 
.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Dao.MedicineDao;
import Daoimp.Medicineimp;
@WebServlet("/MedicinesearchServlet")
public class MedicinesearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public MedicinesearchServlet() {
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
		String name=request.getParameter("name");
		MedicineDao md=new Medicineimp();
		md.searchProduct(name);
		if(name.equals("葡萄糖酸锌胶囊")) {
			request.getRequestDispatcher("ptt.jsp").forward(request, response);
		}else if(name.equals("速效救心丸")) {
			request.getRequestDispatcher("sxjx.jsp").forward(request, response);
		}
		else if(name.equals("血脂康胶囊")) {
			request.getRequestDispatcher("xzk.jsp").forward(request, response);
		}
		else if(name.equals("健胃消食片")) {
			request.getRequestDispatcher("jwxs.jsp").forward(request, response);
		}
		else if(name.equals("板蓝根颗粒")) {
			request.getRequestDispatcher("blg.jsp").forward(request, response);
		}
		else if(name.equals("阿莫西林胶囊")) {
			request.getRequestDispatcher("amxl.jsp").forward(request, response);
		}
		else {
			PrintWriter p=response.getWriter();
			p.write(" 药品不存在 !!!");
		}
	
			
		
	}
}
