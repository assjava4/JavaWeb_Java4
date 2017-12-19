/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.TbLoaitintuc;
import model.TbTintuc;
import service.FileService;
import service.LoaitinService;
import service.taikhoanService;
import service.tintucService;

/**
 *
 * @author DucHuy
 */
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 10,
        maxFileSize = 1024 * 1024 * 50,
        maxRequestSize = 1024 * 1024 * 100
)
public class NewsServlet extends HttpServlet {
private static final String UPLOAD_DIR = "images/";
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
        tintucService TTService = new tintucService();

        String tieude = request.getParameter("tieude");
        String noidung = request.getParameter("noidung");
        String motangan = request.getParameter("tomtat");
        String hinhanh = uploadFile(request);
        //int status = Integer.parseInt(request.getParameter("status"));
        Date ngaydang = new Date();
        int user;
        int loaitin = Integer.parseInt(request.getParameter("loaitin"));
        int luotxem = 0;

        try {
            TbTintuc tt = new TbTintuc();
            taikhoanService tkservice = new taikhoanService();
            LoaitinService ltservice = new LoaitinService();
            TbLoaitintuc ltt = ltservice.getTbLoaiTinById(loaitin);

            tt.setTentieude(tieude);
            tt.setTomtatnd(motangan);
            tt.setNoidung(noidung);
            tt.setNgaydang(ngaydang);
            tt.setHinhanh(hinhanh);
            tt.setTbUsers(tkservice.getTbUserById("4"));
            tt.setTbLoaitintuc(ltt);
            tt.setLuotxem(luotxem);
            TTService.InsertTinTuc(tt);
            response.sendRedirect("index.jsp");
            //response.sendRedirect("./admin/QuanLyTinTuc.jsp");
        } catch (Exception e) {
            response.sendRedirect("addtintuc.jsp");
            //response.sendRedirect("./admin/QuanLyTinTuc.jsp");
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
private String uploadFile(HttpServletRequest request) throws IOException, ServletException {
        String fileName = "";
        try {
            Part filePart = request.getPart("photo");

            //fileName: picture-001.jpg
            fileName = filePart.getSubmittedFileName();
            String filename = fileName;

            //applicationPath: C:\Users\Lonely\Documents\NetBeansProjects\Shop_Bonfire\build\web
            String applicationPath = request.getServletContext().getRealPath("");
            fileName = FileService.ChangeFileName(fileName);
            //File.separator: \ 
            String basePath = applicationPath + File.separator + UPLOAD_DIR + File.separator;

            InputStream inputStream = null;
            OutputStream outputStream = null;
            try {
                File outputFilePath = new File(basePath + fileName);
                inputStream = filePart.getInputStream();
                outputStream = new FileOutputStream(outputFilePath);
                int read = 0;
                final byte[] bytes = new byte[1024];
                while ((read = inputStream.read(bytes)) != -1) {
                    outputStream.write(bytes, 0, read);
                }
            } catch (Exception e) {
                e.printStackTrace();
                fileName = "";
            } finally {
                if (inputStream != null) {
                    inputStream.close();
                }
                if (outputStream != null) {
                    outputStream.close();
                }
            }
        } catch (Exception e) {
            fileName = "";
        }
        return fileName;
    }
}
