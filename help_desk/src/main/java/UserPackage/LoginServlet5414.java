package UserPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet5414")
public class LoginServlet5414 extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username =request.getParameter("username");
		String password = request.getParameter("password");
		
		try {
			List<UserModel5414> userlogin = UserController5414.loginValidate(username, password);
			if(userlogin != null && !userlogin.isEmpty()) {
				request.getSession().setAttribute("user", userlogin.get(0));
                request.getSession().setAttribute("loginMsg", "Login Successful!");

				response.sendRedirect("index.jsp");
			}else {
				String alertMessage ="Invalid Credentials,please try again";
				response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='login5414.jsp'</script>");
			}
		}catch (Exception e) {
            e.printStackTrace();
        }
		
	}

}
