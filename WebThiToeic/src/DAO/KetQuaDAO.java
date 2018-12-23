package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import BEAN.CauHoi;
import BEAN.Result;
import DB.DBConnection;

public class KetQuaDAO {
	public static List<Result>DisplayKetQua()
	{
		Connection conn =null;
		List<Result> list=new ArrayList<>();
		try {
			conn=DBConnection.CreateConnection();
			PreparedStatement ptmt=conn.prepareStatement("select * from result");
			ResultSet rs =null;
			rs= ptmt.executeQuery();
			while(rs.next())
			{
				int correctanswernum=rs.getInt("correctanswernum");
				int incorrectanswernum=rs.getInt("incorrectanswernum");
				String time=rs.getString("time");
				int examinationid=rs.getInt("examinationid");
				int memberid=rs.getInt("memberid");
				
				Result kq=new Result();
				kq.setCorrectanswernum(correctanswernum);
				kq.setIncorrectanswernum(incorrectanswernum);
				kq.setTime(time);
				kq.setExaminationid(examinationid);
				kq.setMemberid(memberid);
				list.add(kq);
			
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
}
