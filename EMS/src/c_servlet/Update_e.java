package c_servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import m_bean.DBUtil;

/**
 * Servlet implementation class Update_e
 */
@WebServlet("/Update_e")
public class Update_e extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update_e() {
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
		int eno = Integer.parseInt(request.getParameter("eno2"));
		String ename = request.getParameter("ename");
		String esex = request.getParameter("esex");
		int eage = Integer.parseInt(request.getParameter("eage"));
		String eedu = request.getParameter("eedu");
		String edep = request.getParameter("edep");
		int ewage = Integer.parseInt(request.getParameter("ewage"));
		int enoold = (int) request.getSession().getAttribute("enoo");
		String sql = "update employee set eno="+eno+",ename='"+ename+"',esex='"+esex+"',eage="+eage+",eedu='"+eedu+"',edep='"+edep+"'"+",ewage="+ewage +" where eno="+enoold;
		DBUtil run = new DBUtil();
		int n = run.updateSQL(sql);
		if(n>=1){
			request.getRequestDispatcher("operate_success.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("operate_error.jsp").forward(request, response);
		}
	}

}
