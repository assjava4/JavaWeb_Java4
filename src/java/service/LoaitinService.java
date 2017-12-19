/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import java.util.ArrayList;
import model.TbLoaitintuc;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.NewHibernateUtil;

/**
 *
 * @author DucHuy
 */
public class LoaitinService {
        public TbLoaitintuc getTbLoaiTinById(int idloai) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            String strQuery = "from TbLoaitintuc where idloaitin=" + idloai;
            Query query = session.createQuery(strQuery);
            TbLoaitintuc loaitin = (TbLoaitintuc) query.uniqueResult();
            tx.commit();
            return loaitin;
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
        public static ArrayList<TbLoaitintuc> Getall() {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            String string = "from TbLoaitintuc";
            Query query = session.createQuery(string);

            ArrayList<TbLoaitintuc> arrayList = (ArrayList<TbLoaitintuc>) query.list();
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

    public ArrayList<TbLoaitintuc> GetAllListLoaiTinTuc() {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList<TbLoaitintuc> Listloaitintuc = new ArrayList<>();
        try {
            tx = session.getTransaction();
            tx.begin();
            String strquery = "from TbLoaitintuc order by idloaitin Desc";
            Query query = session.createQuery(strquery);
            Listloaitintuc = (ArrayList<TbLoaitintuc>) query.list();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }
        return Listloaitintuc;
    }

    public boolean InsertLoaiTin(TbLoaitintuc ltt) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;

        try {
            tx = session.getTransaction();
            tx.begin();
            session.saveOrUpdate(ltt);
            tx.commit();
            return true;
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }
        return false;
    }
}
