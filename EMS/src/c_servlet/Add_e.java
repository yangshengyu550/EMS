package c_servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import m_bean.DBUtil;

/**
 * Servlet implementation class Add_e
 */
@WebServlet("/Add_e")
public class Add_e extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Add_e() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int eno = Integer.parseInt(request.getParameter("no"));
		String ename = request.getParameter("name");
		String esex = request.getParameter("sex");
		int eage = Integer.parseInt(request.getParameter("age"));
		String eedu = request.getParameter("education");
		String edep = request.getParameter("department");
		int ewage = Integer.parseInt(request.getParameter("wage"));
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
