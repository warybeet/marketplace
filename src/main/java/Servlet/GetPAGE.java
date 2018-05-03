/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Daos.ProductDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Danielhua
 */
@WebServlet(name = "GetPAGE", urlPatterns = {"/GetPAGE"})
public class GetPAGE extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
     
           ProductDao pDao = new ProductDao("marketplace");
        //从jsp页面获取当前页数  
        int currentPage = Integer.parseInt(request.getParameter("currentPage"));  
        //查询数据库获得数据计算出总页数  
        int countPage =  pDao.getCountPage();  
          
        //将当前页数，总页数，以及找出的数据返回给jsp页面  
        request.setAttribute("countPage", countPage);  
        request.setAttribute("currentPage", currentPage);  
        request.setAttribute("product",  pDao.getProduct(currentPage));  
        request.getRequestDispatcher("page.jsp").forward(request,  
                response);  
      
        }
    }


