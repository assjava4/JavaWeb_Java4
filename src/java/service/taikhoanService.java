/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import java.util.ArrayList;
import model.TbUsers;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.NewHibernateUtil;

/**
 *
 * @author DucHuy
 */
public class taikhoanService {

    public boolean InsertUser(TbUsers user) {
        //Mở kết nối CSDL
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null; //Tạo một giao dịch

        try {
            tx = session.getTransaction(); //Lấy Transaction từ kết nối ở trên
            tx.begin();

            session.saveOrUpdate(user); //Thêm hoặc Sửa user 
            tx.commit();

            return true;
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback(); //Quay dữ liệu về từ đầu
                System.out.println(e.getMessage());
            }
        }
        return false; //Trả về False nếu xảy ra lỗi

    }

    public TbUsers GetUsersByEmailorUsersName(String userName) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            String strQuery = "from TbUsers where tenuser='" + userName + "'  or email='" + userName + "'";
            Query query = session.createQuery(strQuery);
            TbUsers user = (TbUsers) query.uniqueResult();
            tx.commit();
            return user;
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }
        return null;
    }

    public static boolean CheckUserExit(String username, String email) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.getTransaction();
            tx.begin();

            String strQuery = "from TbUsers where tenuser='" + username + "'  or email='" + email + "'";
            Query query = session.createQuery(strQuery);

            TbUsers user = (TbUsers) query.uniqueResult();
            if (user != null) {
                return true;
            }
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
                System.out.println(e.getMessage());
            }
        } finally {
            session.close();
        }
        return false;
    }

    public TbUsers getTbUserById(String idUser) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            String strQuery = "from TbUsers where iduser=" + idUser;
            Query query = session.createQuery(strQuery);
            TbUsers quyen = (TbUsers) query.uniqueResult();
            tx.commit();
            return quyen;
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }
        return null;
    }

    public static  ArrayList<TbUsers> Getall() {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            String string = "from TbUsers";
            Query query = session.createQuery(string);

            ArrayList<TbUsers> arrayList = (ArrayList<TbUsers>) query.list();
            if (arrayList != null) {
                return arrayList;
            }
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            session.close();
        }
        return null;
    }
}
