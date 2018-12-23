package DAO;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import BEAN.Member;
import DB.DBConnection;

public class MemberDAO {
	public static int getIDLop(int idLop)
	{
		return idLop;
	}
	public static List<Member>Displaymember()
	{
		Connection conn =null;
		List<Member> list=new ArrayList<>();
		try {
			conn=DBConnection.CreateConnection();
			PreparedStatement ptmt=conn.prepareStatement("select * from member");
			ResultSet rs =null;
			rs= ptmt.executeQuery();
			while(rs.next())
			{
				int MemberID=rs.getInt("MemberID");
				String MemberName=rs.getString("MemberName");
				String MemberPass=rs.getString("MemberPass");
				String Name=rs.getString("Name");
				int IDlop=rs.getInt("IDlop");
				String NgaySinh=rs.getString("NgaySinh");
				String GioiTinh=rs.getString("GioiTinh");
				String DiaChi=rs.getString("DiaChi");
				String Phone=rs.getString("Phone");
				String image=rs.getString("image");
				Member member=new Member();
				member.setMemberid(MemberID);
				member.setImage(image);
				member.setMembername(MemberName);
				member.setMemberpass(MemberPass);
				member.setName(Name);
				member.setIDLop(IDlop);
				member.setNgaySinh(NgaySinh);
				member.setSex(GioiTinh);
				member.setDiaChi(DiaChi);
				member.setPhone(Phone);
				list.add(member);
			
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public static List<Member>DisplaymemberChuaCoLop()
	{
		Connection conn =null;
		List<Member> list=new ArrayList<>();
		try {
			conn=DBConnection.CreateConnection();
			String sql="SELECT * FROM webthitoeic.member where IDlop =12";
			PreparedStatement ptmt=conn.prepareStatement(sql);
			ResultSet rs =null;
			rs= ptmt.executeQuery();
			while(rs.next())
			{
				int MemberID=rs.getInt("MemberID");
				String MemberName=rs.getString("MemberName");
				String MemberPass=rs.getString("MemberPass");
				String Name=rs.getString("Name");
				int IDlop=rs.getInt("IDlop");
				String NgaySinh=rs.getString("NgaySinh");
				String GioiTinh=rs.getString("GioiTinh");
				String DiaChi=rs.getString("DiaChi");
				String Phone=rs.getString("Phone");
				String image=rs.getString("image");
				Member member=new Member();
				member.setMemberid(MemberID);
				member.setImage(image);
				member.setMembername(MemberName);
				member.setMemberpass(MemberPass);
				member.setName(Name);
				member.setIDLop(IDlop);
				member.setNgaySinh(NgaySinh);
				member.setSex(GioiTinh);
				member.setDiaChi(DiaChi);
				member.setPhone(Phone);
				list.add(member);
			
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public static int CountThiSinhChuaCoLop()
	{
		int count = 0;
		
		Connection conn =DBConnection.CreateConnection();
		String sql = "select count(*) from webthitoeic.member where IDlop is null";
		
		try 
		{
			PreparedStatement ptmt = conn.prepareStatement(sql);
			
			ResultSet rs = ptmt.executeQuery();
			
			rs.next();
			
			count = rs.getInt(1);
			
				
		} 
		catch (SQLException e) 
		{
			
			e.printStackTrace();
		}
		
		return count;
	}
	public static List<Member>Display1member(Long MemberID)
	{
		Connection conn =null;
		List<Member> list=new ArrayList<>();
		try {
			conn=DBConnection.CreateConnection();
			PreparedStatement ptmt=conn.prepareStatement("select * from member where MemberID="+"'"+MemberID+"'");
			ResultSet rs =null;
			rs= ptmt.executeQuery();
			while(rs.next())
			{
				String MemberName=rs.getString("MemberName");
				String MemberPass=rs.getString("MemberPass");
				String Name=rs.getString("Name");
				int IDlop=rs.getInt("IDlop");
				String NgaySinh=rs.getString("NgaySinh");
				String GioiTinh=rs.getString("GioiTinh");
				String DiaChi=rs.getString("DiaChi");
				String Phone=rs.getString("Phone");
				String image=rs.getString("image");
				Member member=new Member();
				member.setImage(image);
				member.setMembername(MemberName);
				member.setMemberpass(MemberPass);
				member.setName(Name);
				member.setIDLop(IDlop);
				member.setNgaySinh(NgaySinh);
				member.setSex(GioiTinh);
				member.setDiaChi(DiaChi);
				member.setPhone(Phone);
				member.setMemberid(MemberID);
				list.add(member);
			
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public static boolean insertmember(Member p) throws ServletException {
		 Connection conn=DBConnection.CreateConnection();
		 try {
			//String anh=MemberDAO.Themhinhmember(request,response);
			 String sql = "insert into member(MemberName,MemberPass,Name,categorymemberid,NgaySinh,GioiTinh,DiaChi,Phone,IDlop)"
				 		+ " values (?,?,?,?,?,?,?,?,?)";
			     
			        	PreparedStatement ptmt=conn.prepareStatement(sql);
			        	ptmt.setString(1, p.getMembername());
			        	//String name=p.getName();
			        	ptmt.setString(2, p.getMemberpass());
			        	ptmt.setString(3, p.getName());
			        	ptmt.setInt(4, 1);
			        	ptmt.setString(5, p.getNgaySinh());
			        	ptmt.setString(6, p.getSex());
			        	ptmt.setString(7, p.getDiaChi());
			        	ptmt.setString(8, p.getPhone());
			        	ptmt.setInt(9, 12);
			            return ptmt.executeUpdate() == 1;
			        
		} 
		 catch (SQLException ex) {
	           ex.getErrorCode();
	        }
	        return false;
	    }
	 public static boolean deleteMemBer(long MemberID) {
		 Connection conn=DBConnection.CreateConnection();
	        String sql = "delete from member where MemberID= ?";
	        try {
	        	PreparedStatement ptmt=conn.prepareStatement(sql);
	        	ptmt.setLong(1, MemberID);
	            return ptmt.executeUpdate() == 1;
	        } catch (SQLException ex) {
	            Logger.getLogger(MemberDAO.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return false;
	    }
	 public static boolean updatemember(Long id,Member p) throws ServletException {
		 Connection conn=DBConnection.CreateConnection();
		 try {
			//String anh=MemberDAO.Themhinhmember(request,response);
			 String sql = "UPDATE member SET MemberName = ?, MemberPass = ?, Name = ?"
			 		+ ",categorymemberid=?,NgaySinh=?,GioiTinh=?,DiaChi=?,Phone=? WHERE MemberID="+"'"+id+"'";
			     
			        	PreparedStatement ptmt=conn.prepareStatement(sql);
			        	ptmt.setString(1, p.getMembername());
			        	ptmt.setString(2, p.getMemberpass());
			        	ptmt.setString(3, p.getName());
			        	ptmt.setInt(4, 1);
			        	ptmt.setString(5, p.getNgaySinh());
			        	ptmt.setString(6, p.getSex());
			        	ptmt.setString(7, p.getDiaChi());
			        	ptmt.setString(8, p.getPhone());
			        	//ptmt.setString(9, p.getImage());
			            return ptmt.executeUpdate() == 1;
			        
		} 
		 catch (SQLException ex) {
	           ex.getErrorCode();
	        }
	        return false;
	    }
	 public static boolean updatemembervaoLop(int id,int lop) throws ServletException {
		 Connection conn=DBConnection.CreateConnection();
		 try {
			 String sql = "UPDATE member SET IDlop=? WHERE MemberID="+"'"+id+"'";
			     
			        	PreparedStatement ptmt=conn.prepareStatement(sql);
			        	ptmt.setInt(1, lop);
			            return ptmt.executeUpdate() == 1;
			        
		} 
		 catch (SQLException ex) {
	           ex.getErrorCode();
	        }
	        return false;
	    }

}
