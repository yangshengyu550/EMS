package logincheck;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class Logcheck
 */
@WebServlet("/Logcheck")
public class Logcheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logcheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String userid = request.getParameter("username");
		String userpsw = request.getParameter("password");
		String usercheckcode = request.getParameter("checkcode");
		String info = "";
		boolean flag = false;
		HttpSession session = request.getSession();
		String servercheckcode = (String) session.getAttribute("checkCode");
		if(!servercheckcode.equalsIgnoreCase(usercheckcode)){
			info = "验证码错误，请重新输入！" ;
		}else if("zhangsan".equals(userid) && "123".equals(userpsw)){
			info = "登陆成功，正在跳转！";
			flag =true;
		}else{
			info="用户名或者密码不正确，请重新输入！";
		}
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<script type='text/javascript'>alert('"+info+"');</script>");
		if(flag){
			response.setHeader("refresh", "0.2;url=http://localhost:8080/PM/HomePage.jsp");
		}else{
			response.setHeader("refresh", "0.2;url=http://localhost:8080/PM/index.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
