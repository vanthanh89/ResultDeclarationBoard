/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hibernate.dao;

import hibernate.entity.Marks;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;

/**
 *
 * @author thanh
 */
public class Statistics {

    public ResultSet sp_StudentByMarksInSubject(int subjectId)
    {
        try {
            ConnectionDB conn = new ConnectionDB();
            Connection con = conn.getConnecttion();
            CallableStatement cStmt = con.prepareCall("{CALL sp_StudentByMarksInSubject(?)}");
            cStmt.setInt(1, subjectId);
            cStmt.execute();
            ResultSet rs1 = cStmt.getResultSet();
            return rs1;
        } catch (SQLException ex) {
            Logger.getLogger(Statistics.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public ResultSet sp_SubjectByFailedNumberBySemester(int semesterId)
    {
        try {
            ConnectionDB conn = new ConnectionDB();
            Connection con = conn.getConnecttion();
            CallableStatement cStmt = con.prepareCall("{CALL sp_SubjectByFailedNumberBySemester(?)}");
            cStmt.setInt(1, semesterId);
            cStmt.execute();
            ResultSet rs1 = cStmt.getResultSet();
            return rs1;
        } catch (SQLException ex) {
            Logger.getLogger(Statistics.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public ResultSet sp_StudentByMarksInSemesterTop5(int semesterId)
    {
        try {
            ConnectionDB conn = new ConnectionDB();
            Connection con = conn.getConnecttion();
            CallableStatement cStmt = con.prepareCall("{CALL sp_StudentByMarksInSemesterTop5(?)}");
            cStmt.setInt(1, semesterId);
            cStmt.execute();
            ResultSet rs1 = cStmt.getResultSet();
            return rs1;
        } catch (SQLException ex) {
            Logger.getLogger(Statistics.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public ResultSet sp_SubjectByPassedRateBySemester(int semesterId)
    {
        try {
            ConnectionDB conn = new ConnectionDB();
            Connection con = conn.getConnecttion();
            CallableStatement cStmt = con.prepareCall("{CALL sp_SubjectByPassedRateBySemester(?)}");
            cStmt.setInt(1, semesterId);
            cStmt.execute();
            ResultSet rs1 = cStmt.getResultSet();
            return rs1;
        } catch (SQLException ex) {
            Logger.getLogger(Statistics.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
