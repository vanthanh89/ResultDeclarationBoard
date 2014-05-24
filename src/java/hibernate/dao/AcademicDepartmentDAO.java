/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hibernate.dao;

import hibernate.entity.Marks;
import hibernate.entity.MarksId;
import hibernate.entity.ReEvaluation;
import hibernate.entity.Student;
import hibernate.entity.Subjects;
import hibernate.entity.Users;
import hibernate.until.HibernateUtil;
import java.util.Date;
import java.util.List;
import org.hibernate.Hibernate;
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
            MarksId marksid = new MarksId(studentId, subjectId);
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
                marks.setIsPassed("failed");
            }
            if (sub.getMinMark() <= mark) {
                marks.setIsPassed("passed");
            }
            session.save(marks);
            session.flush();
            session.getTransaction().commit();
        } catch (Exception e) {
            if (session.getTransaction().isActive()) {
                session.getTransaction().rollback();
                e.printStackTrace();
            }

        }
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

    public Subjects getSubjectById(int subjectId) {
        CreateSession create = new CreateSession();
        Session session = create.getSession();
        try {
            session.getTransaction().begin();
            String sql = " from Subjects where subjectId =" + subjectId + "";
            Query query = session.createQuery(sql);
            Subjects result = (Subjects) query.uniqueResult();
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

    public List getAllReevaluation() {
        CreateSession create = new CreateSession();
        Session session = create.getSession();
        try {
            session.getTransaction().begin();
            String sql = " from ReEvaluation where isUpdated ='pending' ";
            Query query = session.createQuery(sql);

            List<ReEvaluation> result = (List<ReEvaluation>) query.list();

            for (ReEvaluation re : result) {
                Hibernate.initialize(re.getMarks());
                Hibernate.initialize(re.getMarks().getSubjects());
            }
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

    public void updateMark(MarksId mId, int mark) {
        CreateSession create = new CreateSession();
        Session session = create.getSession();
        try {
            session.getTransaction().begin();
            Marks marks = (Marks) session.get(Marks.class, mId);
            marks.setMark(mark);
            Date d = new Date(System.currentTimeMillis());
            marks.setTestDate(d);
            marks.setIsReevaluated("Reevaluated");
            if (mark < marks.getSubjects().getMinMark()) {
                marks.setIsPassed("failed");
            } else {
                marks.setIsPassed("passed");
            }
            session.update(marks);
            session.flush();
            session.getTransaction().commit();
        } catch (Exception e) {
            if (session.getTransaction().isActive()) {
                session.getTransaction().rollback();
            }
            e.printStackTrace();
        }
    }

    public void updateReevaluation(int reEvaluationid) {
        CreateSession create = new CreateSession();
        Session session = create.getSession();
        try {
            session.getTransaction().begin();
            ReEvaluation re = (ReEvaluation) session.get(ReEvaluation.class, reEvaluationid);
            re.setIsUpdated("Updated");
            session.update(re);
            session.flush();
            session.getTransaction().commit();
        } catch (Exception e) {
            if (session.getTransaction().isActive()) {
                session.getTransaction().rollback();
            }
            e.printStackTrace();
        }
    }

    public Marks getMarkById(MarksId id) {
        CreateSession create = new CreateSession();
        Session session = create.getSession();
        try {
            session.getTransaction().begin();
            Marks m = (Marks) session.get(Marks.class, id);
            return m;
        } catch (Exception e) {
            if (session.getTransaction().isActive()) {
                session.getTransaction().rollback();
            }
            e.printStackTrace();
        }
        return null;
    }

    public List getMarkByStudentId(int studentId) {
        CreateSession create = new CreateSession();
        Session session = create.getSession();
        try {
            session.getTransaction().begin();
            String sql = " from Marks where studentId =" + studentId + "";
            Query query = session.createQuery(sql);
            List<Marks> result = (List<Marks>) query.list();
            for (Marks re : result) {
                Hibernate.initialize(re.getStudent());
                Hibernate.initialize(re.getSubjects());
            }
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

    public void insertReevaluation(int studentId, int subjectId) {
        CreateSession create = new CreateSession();
        Session session = create.getSession();
        try {

            session.getTransaction().begin();
            ReEvaluation re = new ReEvaluation();
            MarksId mid = new MarksId(studentId,subjectId);
            Marks m =(Marks) session.get(Marks.class, mid);
            re.setMarks(m);
            re.setIsUpdated("Unpaid");
            session.save(re);
            session.flush();
            session.getTransaction().commit();
        } catch (Exception e) {
            if (session.getTransaction().isActive()) {
                session.getTransaction().rollback();
                e.printStackTrace();
            }

        }
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
