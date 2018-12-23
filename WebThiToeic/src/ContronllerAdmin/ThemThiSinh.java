package ContronllerAdmin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Answeruser;
import BEAN.Member;
import DAO.LambaithiDAO;
import DAO.MemberDAO;

/**
 * Servlet implementation class ThemThiSinh
 */
@WebServlet("/ThemThiSinh")
public class ThemThiSinh extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThemThiSinh() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idlop=request.getParameter("idlop");
		request.setAttribute("idlop", idlop);
		
		List<Member> listMemBer=MemberDAO.DisplaymemberChuaCoLop();
		request.setAttribute("listMemBer", listMemBer);	
		RequestDispatcher rd =request.getRequestDispatcher("View/admin2/ThemThiSinh.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int SoThiSinhChuaCoLop=MemberDAO.CountThiSinhChuaCoLop();
		int idlop=Integer.parseInt(request.getParameter("idlop"));
		for (int i =1; i<= SoThiSinhChuaCoLop; i++)
		{
			String answer = request.getParameter("ans["+i+"]");
			
			if (answer != null)
			{
				int id = Integer.parseInt(request.getParameter("ans["+i+"]"));
				MemberDAO.updatemembervaoLop(id, idlop);
			}
				
		}
		List<Member> listMemBer=MemberDAO.DisplaymemberChuaCoLop();
		request.setAttribute("listMemBer", listMemBer);	
		RequestDispatcher rd =request.getRequestDispatcher("View/admin2/ThemThiSinh.jsp");
		rd.forward(request, response);
		
	}

}
