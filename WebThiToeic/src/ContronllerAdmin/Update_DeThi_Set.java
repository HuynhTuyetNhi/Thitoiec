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
 * Servlet implementation class Update_DeThi_Set
 */
@WebServlet("/Update_DeThi_Set")
public class Update_DeThi_Set extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update_DeThi_Set() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setCharacterEncoding("UTF-8");
		
		int dethiID = Integer.parseInt(request.getParameter("isdethiID"));
		String tendethi = request.getParameter("isdethi");
		int socaude = Integer.parseInt(request.getParameter("issocaude"));
		int socautrungbinh = Integer.parseInt(request.getParameter("issocautrungbinh"));
		int socaukho = Integer.parseInt(request.getParameter("issocaukho"));
		String thoigianmode = request.getParameter("isthoigianmode");
		int thoigianlambai = Integer.parseInt(request.getParameter("isthoigianlambai"));
		String loplambai1 =request.getParameter("isloplambai");
		int loplambai=1;
		if(loplambai1.equals("Anh Văn 2"))
		{
			loplambai=2;
		}
		if(loplambai1.equals("Anh Văn 3"))
		{
			loplambai=3;
		}
		if(loplambai1.equals("Anh Văn 4"))
		{
			loplambai=4;
		}
		if(loplambai1.equals("Anh Văn 5"))
		{
			loplambai=5;
		}
		boolean test=DethiDAO.updateDeThi(dethiID,tendethi,thoigianlambai,thoigianmode,loplambai);
		if (test)
		{
			request.setAttribute("msgupdatedethi","update thành công");
			RequestDispatcher rd =request.getRequestDispatcher("DeThiforward?pageid=4");
			rd.forward(request, response);
		}
		else 
		{
			request.setAttribute("msgupdatedethi","update thất bại xin kiểm tra lại");
			RequestDispatcher rd =request.getRequestDispatcher("DeThiforward?pageid=4");
			rd.forward(request, response);
		}
		
		}
}
