/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hibernate.dao;

import hibernate.entity.Marks;
import hibernate.entity.MarksId;
import hibernate.entity.Student;
import hibernate.entity.Subjects;
import hibernate.entity.Users;
import hibernate.until.HibernateUtil;
import java.util.Date;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author thanh
 */
public class AcademicDepartmentDAO {

//    private Session session;
//
//    public AcademicDepartmentDAO() {
//        SessionFactory factory = HibernateUtil.getSessionFactory();
//        this.session = factory.getCurrentSession();
//    }
    public void uploadMark(int studentId, int subjectId, int mark) {
        CreateSession create = new CreateSession();
        Session session = create.getSession();
        try {

            session.getTransaction().begin();
            Marks marks = new Marks();
            MarksId marksid = new MarksId(studentId,subjectId);
            marks.setId(marksid);
            Student stu = (Student) session.get(Student.class, studentId);
            Subjects sub = (Subjects) session.get(Subjects.class, subjectId);
            marks.setStudent(stu);
            marks.setSubjects(sub);
            marks.setMark(mark);
            
            marks.setIsReevaluated("notReevaluated");
            Date d = new Date(System.currentTimeMillis());
            marks.setTestDate(d);
            if (sub.getMinMark() > mark) {
                marks.setIsPassed("fail");
            }
            if (sub.getMinMark() <= mark) {
                marks.setIsPassed("pass");
            }
            session.save(marks);
            session.flush();
            session.getTransaction().commit();
        } catch (Exception e) {
            if (session.getTransaction().isActive()) {
                session.getTransaction().rollback();
                 e.printStackTrace();
            }
            System.out.println(e);
        }
    }
    public void insert(int studentId, int subjectId, int mark)
    {
        CreateSession create = new CreateSession();
        Session session = create.getSession();
       
    }
    public List getAllSubject() {
        CreateSession create = new CreateSession();
        Session session = create.getSession();
        try {
            session.getTransaction().begin();
            String sql = " from Subjects ";
            Query query = session.createQuery(sql);
            List lstSubject = query.list();
//            session.flush();
            session.getTransaction().commit();
            return lstSubject;
        } catch (Exception ex) {
            if (session.getTransaction().isActive()) {
                session.getTransaction().rollback();
            }
        }
        return null;
    }

    public boolean checkStudentId(int studentId) {
        CreateSession create = new CreateSession();
        Session session = create.getSession();
        try {
            session.getTransaction().begin();
            String sql = " from Student where studentId = " + studentId + " ";
            Query query = session.createQuery(sql);
            List lst = query.list();
//            session.flush();
            session.getTransaction().commit();
            if (lst.isEmpty()) {
                return false;
            }
            return true;
        } catch (Exception ex) {
            if (session.getTransaction().isActive()) {
                session.getTransaction().rollback();
            }
        }
        return false;
    }

    public boolean checkStudentwithSubject(int studentId, int subjectId) {
        CreateSession create = new CreateSession();
        Session session = create.getSession();
        try {
            session.getTransaction().begin();
            String sql = " from Marks where studentId = " + studentId + " and subjectId = " + subjectId + " ";
            Query query = session.createQuery(sql);
            List lst = query.list();
            session.flush();
            session.getTransaction().commit();

            if (lst.isEmpty()) {
                return false;
            }
            return true;
        } catch (Exception ex) {
            if (session.getTransaction().isActive()) {
                session.getTransaction().rollback();
            }
        }
        return false;
    }

    public List getMarkPending() {
        CreateSession create = new CreateSession();
        Session session = create.getSession();
        try {
            session.getTransaction().begin();
            String sql = " from Marks where isReleased ='pending'";
            Query query = session.createQuery(sql);
            List lst = query.list();
            session.flush();
            session.getTransaction().commit();

            return lst;
        } catch (Exception ex) {
            if (session.getTransaction().isActive()) {
                session.getTransaction().rollback();
            }
        }
        return null;
    }
    public Subjects getSubjectById(int subjectId)
    {
        CreateSession create = new CreateSession();
        Session session = create.getSession();
        try {
            session.getTransaction().begin();
            String sql = " from Subjects where subjectId ="+subjectId+"";
            Query query = session.createQuery(sql);
            Subjects result =(Subjects) query.uniqueResult();
            session.flush();
            session.getTransaction().commit();
            return result;
        } catch (Exception ex) {
            if (session.getTransaction().isActive()) {
                session.getTransaction().rollback();
            }
        }
        return null;
    }
//    public void approvalMark(int markId) {
//        CreateSession create = new CreateSession();
//        Session session = create.getSession();
//        try {
//            session.getTransaction().begin();
//            Marks m = (Marks) session.get(Marks.class, markId);
//            m.setIsReleased("released");
//            Date d = new Date(System.currentTimeMillis());
//            m.setTestDate(d);
//            session.update(m);
//            session.flush();
//            session.getTransaction().commit();
//        } catch (Exception e) {
//            if (session.getTransaction().isActive()) {
//                session.getTransaction().rollback();
//            }
//            e.printStackTrace();
//        }
//    }

    public boolean checknull(String str) {
        if (str.equals("") || str.equals(null)) {
            return true;
        }
        return false;
    }

    public boolean checkNumber(String num) {
        for (char c : num.toCharArray()) {
            if (!Character.isDigit(c)) {
                return false;
            }
        }
        return true;
    }

}
