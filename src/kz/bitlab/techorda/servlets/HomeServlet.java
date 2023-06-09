package kz.bitlab.techorda.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.techorda.db.Blog;
import kz.bitlab.techorda.db.DBConnection;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/home.html")
public class HomeServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        ArrayList <Blog> blogs = DBConnection.getAllBlogs();
        request.setAttribute("blogs", blogs);

        request.getRequestDispatcher("/blog.jsp").forward(request, response);
    }
    public void doPost(HttpServlet request, HttpServlet response) throws ServletException, IOException {

    }
}