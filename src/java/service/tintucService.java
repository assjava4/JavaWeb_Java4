/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import java.util.ArrayList;
import model.TbTintuc;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.NewHibernateUtil;

/**
 *
 * @author DucHuy
 */
public class tintucService {
    public ArrayList<TbTintuc> GetAllTinTucTheoIdLoaiTin(int id) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList<TbTintuc> Listtintuc = new ArrayList<>();
        try {
            tx = session.getTransaction();
            tx.begin();
            String strquery = "from TbTintuc where idloaitin=" + id;
            Query query = session.createQuery(strquery);
            Listtintuc = (ArrayList<TbTintuc>) query.list();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }
        return Listtintuc;
    }

    public ArrayList<TbTintuc> GetAllListTinTuc() {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList<TbTintuc> Listtintuc = new ArrayList<>();
        try {
            tx = session.getTransaction();
            tx.begin();
            String strquery = "from TbTintuc order by idtintuc Desc";
            Query query = session.createQuery(strquery);
            Listtintuc = (ArrayList<TbTintuc>) query.list();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }
        return Listtintuc;
    }

    public boolean InsertTinTuc(TbTintuc tt) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;

        try {
            tx = session.getTransaction();
            tx.begin();
            session.saveOrUpdate(tt);
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
     public ArrayList<TbTintuc> GetSoLuongTinTucTheoLoai(int idloaitin, int soluong) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList<TbTintuc> ListTinTUc = new ArrayList<>();
        try {
            tx = session.getTransaction();
            tx.begin();
            String strquery = "from TbTintuc where idloaitin=" + idloaitin + " order by idtintuc Desc";

            Query query = session.createQuery(strquery);
            query.setMaxResults(soluong);
            ListTinTUc = (ArrayList<TbTintuc>) query.list();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }
        return ListTinTUc;
    }

    public boolean DeleteAlLTin(int idtin) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;

        try {
            tx = session.getTransaction();
            tx.begin();
            TbTintuc tin = new TbTintuc();
            tin.setIdtintuc(idtin);
            session.delete(tin);
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
    public int usercount = 0;

    public ArrayList<TbTintuc> GetAllTinTucTheoLoaiTin(int pageSize, int pageNumber, int idloaitin) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList Listtintuc = new ArrayList<TbTintuc>();

        try {
            tx = session.getTransaction();
            tx.begin();

            Query query = session.createQuery("from TbTintuc where idloaitin=" + idloaitin);
            usercount = query.list().size();
            query = query.setFirstResult(pageSize * (pageNumber - 1));
            query.setMaxResults(pageSize);
            Listtintuc = (ArrayList) query.list();

            tx.commit();

        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }

        } finally {
            session.close();
        }

        return Listtintuc;
    }
    public static ArrayList<TbTintuc> Getall() {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            String string = "from TbTintuc";
            Query query = session.createQuery(string);

            ArrayList<TbTintuc> arrayList = (ArrayList<TbTintuc>) query.list();
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
    public TbTintuc getOnebyid(String id) {
       Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            String string = "from TbTintuc where idtintuc="+id;
            Query query = session.createQuery(string);
            TbTintuc tintuc = (TbTintuc) query.uniqueResult();
            if (tintuc != null) {
                return tintuc;
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
    public TbTintuc GettintucByID(String tinID) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            String strQuery = "from TbTintuc where idtintuc=" + tinID;
            Query query = session.createQuery(strQuery);
            TbTintuc user = (TbTintuc) query.uniqueResult();
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
}
