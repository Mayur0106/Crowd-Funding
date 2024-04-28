package Com.OwnerInfo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Com.Connection.ConnectionFactory;

/**
 * Servlet implementation class Add_Fund
 */
@WebServlet("/Add_Fund")
public class Add_Fund extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection connection = null;
	PreparedStatement ptmt = null;
	ResultSet resultSet = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_Fund() {
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
		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession(false);
		String fund_cost, U_Email_ID, fund_name,U_Name = null;
		U_Email_ID=(String)session.getAttribute("O_Email_ID");
		U_Name=(String) session.getAttribute("O_Name");
		fund_cost = request.getParameter("fund_cost");
		System.out.println(fund_cost);
		System.out.println(U_Email_ID);
		String due_date= request.getParameter("due_date");
		System.out.println(due_date);
		fund_name = request.getParameter("fund_name");
		System.out.println(fund_name);
		
		try {
String Status_Info="Pending";
			String queryString = "insert into tbl_user_fund_info(U_Name,U_Email_ID,U_Fund_name,U_Fund_cost,Status_Info,due_date) values(?,?,?,?,?,?)";
			connection = ConnectionFactory.getInstance().getConnection();
			ptmt = connection.prepareStatement(queryString);
			
			ptmt.setString(1, U_Name);
			ptmt.setString(2, U_Email_ID);
			ptmt.setString(3, fund_name);
			ptmt.setString(4, fund_cost);
			ptmt.setString(5, Status_Info);
			ptmt.setString(6, due_date);
			
			int i = ptmt.executeUpdate();

			if (i > 0) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Fund Add Successfully');");
				out.println("</script>");
				request.getRequestDispatcher("NGO_Fund_Data.jsp").include(request,
						response);
			} 

		} catch (SQLException e1) {
			e1.printStackTrace();
		}
	}

}
