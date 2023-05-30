package fuyu.controller;


import fuyu.domain.Student;
import fuyu.model.StudentModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/*
查询学生信息的Servlet
 */
@WebServlet(urlPatterns = "/StudentServlet")
public class StudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
        try{
            //1.调用java类处理数据
            StudentModel studentModel=new StudentModel();
            List<Student> list= studentModel.findAll();
            //2.显示到JSP
            request.setAttribute("list",list);
            request.getRequestDispatcher("/jsp/list.jsp").forward(request,response);

        }catch(Exception e){
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
