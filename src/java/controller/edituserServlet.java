/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.TbUsers;
import service.md5;
import service.taikhoanService;

/**
 *
 * @author DucHuy
 */
public class edituserServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
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
        
        String hoten,tendn, email, sdt, diachi, hinh, iduser;
        
        hoten = request.getParameter("hoten");
        tendn = request.getParameter("tendn");
        email = request.getParameter("email");
        sdt = request.getParameter("sdt");
        diachi = request.getParameter("diachi");
        hinh = request.getParameter("hinh");
        
        iduser = request.getParameter("iduser");
        taikhoanService tk = new taikhoanService();
        TbUsers us = tk.getTbUserById(iduser);
        us.setHoten(hoten);
        us.setTenuser(iduser);
        us.setEmail(email);
        us.setSodienthoai(diachi);
        us.setDiachi(diachi);
        us.setAvatar(iduser);
        
        
        response.sendRedirect("editUsers.jsp");
       
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
