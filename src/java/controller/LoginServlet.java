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
import javax.servlet.http.HttpSession;
import model.TbUsers;
import service.MD5;
import service.taikhoanService;

/**
 *
 * @author DuongNguyen
 */
public class LoginServlet extends HttpServlet {

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
        
        String username, password;
        username = request.getParameter("uname");
        password = request.getParameter("psw");

        boolean KiemTra;
        String passmahoa = MD5.Encoding(password);
        taikhoanService tk = new taikhoanService();
        KiemTra = tk.CheckLogin(username, passmahoa);

        HttpSession session = request.getSession();
        
        if (KiemTra) {
            if (session.getAttribute("usName") != null) {
                String usname = (String) session.getAttribute("usName");
                System.out.println(usname);
                if (usname.equals(username)) {
                    String url = "/ErrorSession.jsp";
                    getServletContext().getRequestDispatcher(url).forward(request, response);
                }
            }
            session.setAttribute("usName", username);
            TbUsers taikhoan = tk.GetUsersByEmailorUsersName(username);
            session.setAttribute("userlog_role", taikhoan.getTbQuyen().getIdquyen());
            session.setAttribute("userlog_trangthai", taikhoan.getIdtrangthai());
            System.out.println("Danh nhap thanh cong");
            response.sendRedirect("index.jsp");
        } else {
            System.out.println("Danh nhap that bai");
            response.sendRedirect("index.jsp");
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
