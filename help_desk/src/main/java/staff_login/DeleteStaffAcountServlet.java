package staff_login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/DeleteStaffAcountServlet")
public class DeleteStaffAcountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if (session != null) {
            Integer staffId = (Integer) session.getAttribute("staffId");

            if (staffId != null) {
                try (Connection conn = DBConnection.getConnection();
                     PreparedStatement stmt = conn.prepareStatement("DELETE FROM staff WHERE id = ?")) {

                    stmt.setInt(1, staffId);
                    int rowsAffected = stmt.executeUpdate();

                    if (rowsAffected > 0) {
                        session.invalidate();
                        response.sendRedirect("Stafflogin.jsp");
                    } else {
                        response.sendRedirect("StaffProfile.jsp?status=delete_failed");
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                    response.sendRedirect("StaffProfile.jsp?status=error");
                }
            } else {
                response.sendRedirect("StaffProfile.jsp?status=invalid_id");
            }
        } else {
            response.sendRedirect("Stafflogin.jsp");
        }
    }
}