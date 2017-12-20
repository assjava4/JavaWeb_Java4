/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.RandomString;
import model.TbUsers;
import service.*;

/**
 *
 * @author DucHuy
 */
public class RegisterServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        taikhoanService taikhoansv = new taikhoanService();
        String tendangnhap, matkhau, email, hovaten, sodienthoai, diachi, avatar;
        int quyen, trangthai;
        Date ngaytao = new Date();

        tendangnhap = request.getParameter("tendangnhap");
        matkhau = request.getParameter("matkhau");
        email = request.getParameter("email");
        hovaten = request.getParameter("hovaten");
        sodienthoai = request.getParameter("sodienthoai");
        diachi = request.getParameter("diachi");

        TbQuyenService tbQuyenService = new TbQuyenService();
        TbUsers us = new TbUsers();
        String mkmh = MD5.Encoding(matkhau);
        
        String random = RandomString.randomString(10);

        us.setTenuser(tendangnhap);
        us.setMatkhau(mkmh);
        us.setEmail(email);
        us.setHoten(hovaten);
        us.setSodienthoai(sodienthoai);
        us.setDiachi(diachi);
        us.setNgaytao(ngaytao);
        us.setTbQuyen(tbQuyenService.getTbQuyenById("3"));
        us.setIdtrangthai("notactive");
        us.setAvatar("avator.jpg");
        us.setRandomkey(random);

        boolean rs = taikhoansv.InsertUser(us);
        if (rs) {

            ServletContext context = getServletContext();

            String host = context.getInitParameter("host");
            String port = context.getInitParameter("port");
            String user = context.getInitParameter("user");
            String pass = context.getInitParameter("pass");

            String chude = "Xác nhận tài khoản";
            String message = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
				+ request.getContextPath() + "/xacnhantaikhoan.jsp?key=" + random;

            String resultMessage = "";

            try {
                RegisterMailService.SendingMail(user, pass, host, port, chude, hovaten, message, email);
                resultMessage = "The e-mail was sent successfully";
                getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
            } catch (Exception ex) {
                ex.printStackTrace();
                resultMessage = "There were an error: " + ex.getMessage();
                getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
            } finally {
                //request.setAttribute("Message", resultMessage);
                System.out.println(resultMessage);
            }

            System.out.println("Thanh cong");
            String url = "/index.jsp";
            getServletContext().getRequestDispatcher(url).forward(request, response);
        } else {
            System.out.println("That bai");
            String url = "/index.jsp";
            getServletContext().getRequestDispatcher(url).forward(request, response);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
