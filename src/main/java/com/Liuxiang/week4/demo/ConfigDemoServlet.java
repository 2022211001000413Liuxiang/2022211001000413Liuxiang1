package com.Liuxiang.week4.demo;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
        name = "ConfigDemoServlet",
        urlPatterns = {"/config"},
        initParams = {
                @WebInitParam(name = "yourname", value = "liuxiang"),
                @WebInitParam(name = "studentid", value = "2022211001000413"
                )
        }
)
public class ConfigDemoServlet extends HttpServlet {

    private ServletConfig servletConfig;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        this.servletConfig = config;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String yourName = servletConfig.getInitParameter("yourName");
        String studentId = servletConfig.getInitParameter("studentId");

        String yourname=servletConfig.getInitParameter("yourname");
        String studentid=servletConfig.getInitParameter("studentid");

        response.setContentType("text/plain");
        response.getWriter().println("Use @WebServlet annotation " );
        response.getWriter().println("Name: " + yourname);
        response.getWriter().println("Student ID: " + studentid);

        response.getWriter().println("Use @WebInitParams annotation" );
        response.getWriter().println("Name: " + yourName);
        response.getWriter().println("Student ID: " + studentId);
    }
}