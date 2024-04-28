package Com.AdminInfo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Blockchain.ptop;
import Com.Connection.ConnectionFactory;

/**
 * Servlet implementation class Fund_info_Data
 */
@WebServlet("/Fund_info_Data")
public class Fund_info_Data extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Fund_info_Data() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		HttpSession session = request.getSession(true);
//		String A_Email_ID = (String) session.getAttribute("A_Email_ID");
//		String A_Name = (String) session.getAttribute("A_Name");
		Connection connection;
		try {
			connection = ConnectionFactory.getInstance().getConnection();

			Statement st = connection.createStatement();

			String Status_Info = "Accept";
			int noofnode = 4;

			Statement sta = connection.createStatement();
			
			
			st.executeUpdate("update tbl_user_fund_info set Status_Info='"
					+ Status_Info + "' where F_ID='" + id + "'");
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Fund Request Accecpt Successfully');");
			out.println("</script>");
			request.getRequestDispatcher("/Access_File_Request.jsp").include(
					request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
