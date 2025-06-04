package com.productServlet;

import com.productDto.ProductDto;
import com.productService.ProdServImp;
import com.productService.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns ="/product")
public class ProductServ extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
     String id=req.getParameter("productId");
     String name=req.getParameter("name");
     String price=req.getParameter("price");
     String quant=req.getParameter("quant");
     String cat=req.getParameter("catgory");

        ProductDto productDto=new ProductDto();
        productDto.setId(id);
        productDto.setName(name);
        productDto.setPrice(price);
        productDto.setQuant(quant);
        productDto.setCat(cat);

        System.out.println("details "+productDto);
        ProdServImp prodServImp=new ProdServImp();
        boolean saved=prodServImp.save(productDto);
        if(saved){
            RequestDispatcher dispatcher =
                    req.getRequestDispatcher("success.jsp");

            req.setAttribute("message", "Save Success");
            req.setAttribute("productDto", productDto);
            dispatcher.forward(req,resp);

        }
        else{
            RequestDispatcher dispatcher =req.getRequestDispatcher("index.jsp");
            req.setAttribute("message", "Saving of product Failed");
            dispatcher.forward(req,resp);
        }

        }


    }
