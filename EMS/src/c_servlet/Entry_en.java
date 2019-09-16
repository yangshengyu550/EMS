package c_servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import m_bean.DBUtil;

/**
 * Servlet implementation class Entry_en
 */
@WebServlet("/Entry_en")
public class Entry_en extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Entry_en() {
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
		String ename = request.getParameter("ename");
		String esex = request.getParameter("esex");
		int eage = Integer.parseInt(request.getParameter("eage"));
		String eedu = request.getParameter("eedu");
		String edep = request.getParameter("edep");
		int ewage = Integer.parseInt(request.getParameter("ewage"));
		String sql = "insert into employee(eno,ename,esex,eage,eedu,edep,ewage) values ("+eno+",'"+ename+"','"+esex+"',"+eage+",'"+eedu+"','"+edep+"',"+ewage+")";
		DBUtil run = new DBUtil();
		int n = run.updateSQL(sql);
		if (n >= 1) {
			request.getRequestDispatcher("operate_success.jsp").forward(
					request, response);
		} else {
			request.getRequestDispatcher("operate_error.jsp").forward(request,
					response);
		}
		
	}

}
