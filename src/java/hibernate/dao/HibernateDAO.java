/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package hibernate.dao;

import hibernate.entity.Account;
import hibernate.until.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author thanh
 */
public class HibernateDAO {
    private Session session;
    public HibernateDAO() {
        SessionFactory factory = HibernateUtil.getSessionFactory();
        this.session = factory.getCurrentSession();
    }
    public void save(Account acc) {
        try {
            session.getTransaction().begin();
            session.save(acc);
            session.flush();
            session.getTransaction().commit();
        } catch (Exception ex) {
            if (session.getTransaction().isActive()) {
                session.getTransaction().rollback();
            }
            ex.printStackTrace();
        }

    }
    public Account authenticate(String username, String password) {
        try {
            session.getTransaction().begin();
            String sql = "from Account where username = ? and passwords = ? ";
            
            Query query = session.createQuery(sql);
           query.setString(0, username);
           query.setString(1,password);
           // List result =  query.list();
            Account us =(Account) query.uniqueResult();
            session.flush();
            session.getTransaction().commit();
            return us;

        } catch (Exception e) {

            if (session.getTransaction().isActive()) {
                session.getTransaction().rollback();
            }
            e.printStackTrace();
        }
        return null;
    }
    public Account[] searchByRole(String role) {
        try {
            session.getTransaction().begin();
            String sql = " from Account where roles like ? ";
            Query query = session.createQuery(sql);
            query.setString(0,"%"+role+"%");
            List list = query.list();
            Account[] result = new Account[list.size()];
            list.toArray(result);
            session.flush();
            session.getTransaction().commit();
            return result;
        } catch (Exception e) {
            if (session.getTransaction().isActive()) {
                session.getTransaction().rollback();
            }
            e.printStackTrace();
        }
        return null;
    }
    public void update(Account acc, int id) {
        try {
            session.getTransaction().begin();
            Account u = (Account) session.get(Account.class, id);
            u.setUsername(acc.getUsername());
            u.setPasswords(acc.getPasswords());
            u.setRoles(acc.getRoles());
            session.update(u);
            session.flush();
            session.getTransaction().commit();
        } catch (Exception e) {
            if (session.getTransaction().isActive()) {
                session.getTransaction().rollback();
            }
            e.printStackTrace();
        }

    }
     public void delete(int id) {
        try {
            session.getTransaction().begin();
            session.delete(session.get(Account.class, id));
            session.flush();
            session.getTransaction().commit();
        } catch (Exception e) {
            if (session.getTransaction().isActive()) {
                session.getTransaction().rollback();
            }
        }
    }
}
