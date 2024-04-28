package Com.UserInfo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Blockchain.ptop;
import Com.Connection.ConnectionFactory;
import java.time.*;

/**
 * Servlet implementation class User_Fund_info
 */
@WebServlet("/User_Fund_info")
public class User_Fund_info extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// Connection connection = null;
	PreparedStatement ptmt = null;
//	ResultSet resultSet = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public User_Fund_info() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request,response);
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(false);
		
		String fund_cost, U_Email_ID, fund_id, U_Name = null;
		String fund_Uname=request.getParameter("fund_name");
		String fund_emailid=request.getParameter("fund_emailid");
		String fund_name=request.getParameter("fund_Fname");
		String f_cost=request.getParameter("fund_cost");
		String fund_Ncost=request.getParameter("fund_Ncost");
		
		
		System.out.println(fund_Uname);
	
		System.out.println(fund_emailid);
		
		
		Connection connection;
		try {
	      //  Date Date_Donation = new Date();
			connection = ConnectionFactory.getInstance().getConnection();

	     
            Statement statement = connection.createStatement();
        
         //   ResultSet resultset =statement.executeQuery("select * from tbl_user_fund_info") ; 
         ResultSet resultSet =statement.executeQuery("Select collection from tbl_user_fund_info where U_Fund_name='" +fund_name+ "'"); 
         int collection=0;
         if (resultSet.next()) {
             // Retrieve the integer value from the specified column (assuming the column index is 1)
             collection = resultSet.getInt(1);
             System.out.println("Collection: " + collection);
          }
         collection+=Integer.parseInt(fund_Ncost);
         Statement sta = connection.createStatement();
         sta.executeUpdate("update tbl_user_fund_info set collection='"+collection+"' where U_Fund_name='" +fund_name+ "'");
         
         
        // String colstr=Integer.toString(collection);
         String Ufund_emailid=(String)session.getAttribute("U_Email_ID");
         String Ufund_Uname=(String)session.getAttribute("U_Name");
         
         LocalDate currentDate = LocalDate.now();
         String Curr_Date=currentDate.toString();
        		 
        		 // String dateString =currentDate.toString() ;
         
         String queryString = "insert into user_fund_details(Fund_Name,UF_Name,UF_Email_ID,UF_total,Date) values(?,?,?,?,?)";
			connection =ConnectionFactory.getInstance().getConnection();
			ptmt = connection.prepareStatement(queryString);
			ptmt.setString(1,fund_name);
			ptmt.setString(2,Ufund_Uname);
			ptmt.setString(3,Ufund_emailid);
			ptmt.setString(4,fund_Ncost);
			ptmt.setString(5,Curr_Date);
			int i = ptmt.executeUpdate();
			
			if(i>0)
         {
	        	
				out.println("<script type=\"text/javascript\">");
		//		out.println(collecction);
				out.println("alert('Fund Send  Successfully " +collection+ "');");
				out.println("</script>");
		
				request.getRequestDispatcher("U_Fund_Show.jsp").include(
						request, response);
			}
         
//			Statement st = connection.createStatement();
//			
//			String fund="Army";
//			
//	   	
//			
//			ResultSet rs = st.executeQuery("Select collection from tbl_user_fund_info where U_Fund_name='fund_name'");
			
			//int coll=0;
			//String  coll=rs.getString(1);
	   	    //  st.executeUpdate("Select * from tbl_user_fund_info");
		//	int collectionValue=rs.getInt(0);
//			if (rs.next()) {
//			    // Retrieve the integer value from the "collection" column
//			    collectionValue = rs.getString(3);
//			    
//			    // Now you can use the integer value as needed
//			  //  System.out.println("Collection Value: " + collectionValue);
//			}
			
			//st.executeUpdate("update tbl_user_fund_info set collection="+collecction+" where U_Fund_name='" + fund_name + "'");
			
			
			
	       
	        
//			{ 
//				
//			response.setContentType("text/plain"); 
//
//		    //PrintWriter out = response.getWriter();
//
//			out.println("Hello, this is the response from the server! ::- - "+fund_name);
//
//		    out.close();
//		    }
			
	         
//	        
	    } catch (SQLException e1) {
	        e1.printStackTrace();
	        // Handle any SQL exceptions
	    }
	}

}
