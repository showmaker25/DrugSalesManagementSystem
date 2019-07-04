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
		//������Ӧʽ��ʽ
		response.setContentType("text/html,charset=utf-8");
		String name=request.getParameter("name");
		MedicineDao md=new Medicineimp();
		md.searchProduct(name);
		if(name.equals("��������п����")) {
			request.getRequestDispatcher("ptt.jsp").forward(request, response);
		}else if(name.equals("��Ч������")) {
			request.getRequestDispatcher("sxjx.jsp").forward(request, response);
		}
		else if(name.equals("Ѫ֬������")) {
			request.getRequestDispatcher("xzk.jsp").forward(request, response);
		}
		else if(name.equals("��θ��ʳƬ")) {
			request.getRequestDispatcher("jwxs.jsp").forward(request, response);
		}
		else if(name.equals("����������")) {
			request.getRequestDispatcher("blg.jsp").forward(request, response);
		}
		else if(name.equals("��Ī���ֽ���")) {
			request.getRequestDispatcher("amxl.jsp").forward(request, response);
		}
		else {
			PrintWriter p=response.getWriter();
			p.write(" ҩƷ������ !!!");
		}
	
			
		
	}
}
