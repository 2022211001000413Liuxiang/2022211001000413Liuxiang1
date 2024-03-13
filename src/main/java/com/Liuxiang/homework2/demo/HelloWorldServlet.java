package com.Liuxiang.homework2.demo;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class HelloWorldServlet  extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        PrintWriter writer = response.getWriter();
        writer.println("Name : Liuxiang");
        writer.println("ID : 2022211001000413");
        LocalDateTime currentDateTime = LocalDateTime.now();
        // 创建一个格式器
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

        // 格式化当前时间并输出
        String formattedDateTime = currentDateTime.format(formatter);
       writer.println("Data and TimeSun " + formattedDateTime);
    }


    public void doPost(HttpServletRequest request, HttpServletResponse response) {
    }
}