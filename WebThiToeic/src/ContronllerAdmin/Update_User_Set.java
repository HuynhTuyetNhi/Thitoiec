package ContronllerAdmin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Member;
import DAO.MemberDAO;

/**
 * Servlet implementation class Update_User_Set
 */
@WebServlet("/Update_User_Set")
public class Update_User_Set extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update_User_Set() {
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
		
		
		long IDmember=Integer.parseInt(request.getParameter("ismemberID"));
		//String TenGiangVien=request.getParameter("isMemberPass");
		String ishoten = request.getParameter("isName");
		String istendn = request.getParameter("isMemberName");
		String ismatkhau = request.getParameter("isMemberPass");
		String sex=request.getParameter("isGioiTinh");
		String isdt = request.getParameter("isPhone");
		String isdc =request.getParameter("isDiaChi");
		String isngaysinh=request.getParameter("isNgaySinh");
		Member member=new Member();
		member.setName(ishoten);
		member.setMembername(istendn);
		member.setMemberpass(ismatkhau);
		member.setSex(sex);
		member.setPhone(isdt);
		member.setNgaySinh(isngaysinh);
		member.setDiaChi(isdc);
		boolean test=MemberDAO.updatemember(IDmember, member);
		if (test)
		{
			request.setAttribute("msgupdatemember","update thành công");
			RequestDispatcher rd =request.getRequestDispatcher("UserForWard?pageid=1");
			rd.forward(request, response);
		}
		else 
		{
			request.setAttribute("msgupdatemember","update thất bại xin kiểm tra lại");
			RequestDispatcher rd =request.getRequestDispatcher("UserForWard?pageid=1");
			rd.forward(request, response);
		}
		
		}
	

}
