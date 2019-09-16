package c_servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import m_bean.DBUtil;

/**
 * Servlet implementation class Update_e
 */
@WebServlet("/Update_check")
public class Update_check extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update_check() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int eno = Integer.parseInt(request.getParameter("eno"));
		String sql = "select * from employee where eno="+eno+"";
		DBUtil run = new DBUtil();
		ResultSet rs = run.querySQL(sql);
		try {
			if (rs.next()) {
			request.setAttribute("rs", rs);
			request.getRequestDispatcher("update_eo_view.jsp").forward(request, response);
			}else{
				System.out.println("²Ù×÷Òì³£");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}
