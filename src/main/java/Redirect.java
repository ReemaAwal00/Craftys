/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */
@WebServlet(urlPatterns = {"/"})
public class Redirect extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Check if the requested URL is for a static resource
        String path = request.getRequestURI().substring(request.getContextPath().length());
        if (path.startsWith("/css/") || path.startsWith("/img/") || path.startsWith("/js/") || path.startsWith("/CraftysAdmin/")) {
            String fullPath = getServletContext().getRealPath(path);
            response.setContentType(getServletContext().getMimeType(fullPath));
            Files.copy(Paths.get(fullPath), response.getOutputStream());
            return;
        }

        response.sendRedirect(request.getContextPath() + "/UserServlet?page=index");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
