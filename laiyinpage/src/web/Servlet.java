package web;

import dao.ProductDao;
import entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "Servlet")
public class Servlet extends HttpServlet {

    public void init() throws ServletException{

    }



    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("utf-8");
        List<ProductEntity> products = null;
        int id = Integer.parseInt(request.getParameter("id"));
        try {
            products = new ProductDao().getProductPic(id);
            System.out.println("get ProductsList Successfully");
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        request.setAttribute("productList",products);
        request.getRequestDispatcher("detail.jsp").forward(request,response);

    }


    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
       doGet(request, response);
    }

    public void destroy(){
        super.destroy();
    }

}
