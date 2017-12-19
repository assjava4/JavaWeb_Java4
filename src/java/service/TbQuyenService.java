/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import model.TbQuyen;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.NewHibernateUtil;

/**
 *
 * @author DucHuy
 */
public class TbQuyenService {
    public TbQuyen getTbQuyenById(String idQUyen) {
            Session session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            String strQuery = "from TbQuyen where idquyen=" + idQUyen ;
            Query query = session.createQuery(strQuery);
            TbQuyen quyen = (TbQuyen) query.uniqueResult();
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
}
