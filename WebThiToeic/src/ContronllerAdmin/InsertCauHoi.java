package ContronllerAdmin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.CauHoi;
import DAO.CauHoiDAO;

/**
 * Servlet implementation class InsertCauHoi
 */
@WebServlet("/InsertCauHoi")
public class InsertCauHoi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertCauHoi() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd =request.getRequestDispatcher("View/Admin/AddCauHoi.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String CauHoi = request.getParameter("isTenCauHoi");
		String DapAnA = request.getParameter("isDapAnA");
		String DapAnB = request.getParameter("isDapAnB");
		String DapAnC = request.getParameter("isDapAnC");
		String DapAnD = request.getParameter("isDapAnD");
		String DapAn = request.getParameter("isDapAn");
		int LoaiCau =Integer.parseInt(request.getParameter("isLoaiCau"));
		
		CauHoi cauhoi =new CauHoi();
		cauhoi.setTenCauHoi(CauHoi);
		cauhoi.setDapAnA(DapAnA);
		cauhoi.setDapAnB(DapAnB);
		cauhoi.setDapAnC(DapAnC);
		cauhoi.setDapAnD(DapAnD);
		cauhoi.setDapAn(DapAn);
		cauhoi.setLoaiCauID(LoaiCau);
		
		//boolean test = CategoryDAO.insertCategory(category);
		boolean test=CauHoiDAO.insertCauHoi(cauhoi);
		if (test)
		{
			request.setAttribute("msgaddcauhoi","thêm thành công");
			RequestDispatcher rDispatcher=request.getRequestDispatcher("CauHoiforward?pageid=3");
			rDispatcher.forward(request,response);
		}
		else 
		{
			request.setAttribute("msgaddcauhoi","thêm thất bại");
			RequestDispatcher rd = request.getRequestDispatcher("CauHoiforward?pageid=3");
			rd.forward(request,response);
		}
		
	}
	}

