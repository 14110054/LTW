package getdata.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import database.Database;

/**
 * Servlet implementation class ChuyenNganh_GV
 */
@WebServlet("/ChuyenNganh_GV")
public class ChuyenNganh_GV extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChuyenNganh_GV() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	String  CN= request.getParameter("TenCN");
		
	Map<String, String> map = new LinkedHashMap<String,String>();
	 Database db = new Database();
	  ResultSet rs = null;
	  try {
			rs = db.getData("select MaGV,TenGV from giangvien  where  ChuyenNganh='"+CN+"'");
			
			if(CN =="-1")
			{
				map.put("-1", "Chọn");
			}
			else{
				while(rs.next())
				{
					map.put(rs.getString("MaGV"), rs.getString("TenGV"));
				}
			}
			
			String json = null;

	          json = new Gson().toJson(map);
	          response.setContentType("application/json");
	          response.setCharacterEncoding("UTF-8");
	          response.getWriter().write(json);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
	}
}
