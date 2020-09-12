package login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CreateUser")
public class CreateUser extends HttpServlet {
	
	public static int i =0;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		String email = request.getParameter("mail");

		System.out.println(uname+"  "+pass+"   "+email+"\n\n\n\n\n");
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/anshu", "root", "1234");
			Statement st=conn.createStatement();
			
			st.executeUpdate("insert into users values('"+uname+"','"+pass+"')"); 
			st.close();
			conn.close();
			i=1;
		
			
			
		response.sendRedirect("index.jsp");
		
	}catch(Exception e) {
		i=2;
		response.sendRedirect("index.jsp");
		System.out.println("Error/**********************************************************/********************************/");
	}}

}
