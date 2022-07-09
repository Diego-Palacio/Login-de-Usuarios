
package controladores;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registro")
public class Registro extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("NameRegistro");
		String uemail = request.getParameter("EmailRegistro");
		String upwd = request.getParameter("passwordRegistro");
		//String umobile = request.getParameter("contact");
		RequestDispatcher disp = null;
		Connection con = null;

		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema?useSSL=false", "DiegoPalacio", "2Minutos2Minutos");
			System.out.println(con);
			final String STATEMENT = "insert into usuario (nombre, email, contraseña) values (?,?,?)";
			PreparedStatement pst = con.prepareStatement(STATEMENT);
			pst.setString(1, uname);
			pst.setString(2, uemail);
			pst.setString(3, upwd);
			//pst.setString(4, umobile);
			
			int rowCount = pst.executeUpdate();
			disp = request.getRequestDispatcher("login.jsp");
			if (rowCount > 0) {
				request.setAttribute("status", "success");
			} else {
				request.setAttribute("status", "failed");
			}
			
			disp.forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}

}

