package com.Liuxiang.homework2.demo;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
public class HelloWorldServlet  extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        PrintWriter writer = response.getWriter();
        writer.println("Name : Liuxiang");
        writer.println("ID : 2022211001000413");
        writer.println("Data and TimeSun Mar 10 10:01:53 CST 2024");
    }


    public void doPost(HttpServletRequest request, HttpServletResponse response) {
    }
}