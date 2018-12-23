package ContronllerAdmin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DethiDAO;
import DAO.LopHocDAO;

/**
 * Servlet implementation class DeleteDeThi
 */
@WebServlet("/DeleteDeThi")
public class DeleteDeThi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteDeThi() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		long idDeThi=Long.parseLong(request.getParameter("iddethi"));
		boolean test =DethiDAO.deleteDeThi(idDeThi);
		if (test)
		{
			request.setAttribute("msgdeletedethi","Xóa thành công");
			RequestDispatcher rDispatcher=request.getRequestDispatcher("DeThiforward?pageid=4");
			rDispatcher.forward(request, response);
		}
		else 
		{
			request.setAttribute("msgdeletelop","Xóa thất bại xin kiểm tra lại");
			RequestDispatcher rDispatcher=request.getRequestDispatcher("DeThiforward?pageid=4");
			rDispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
