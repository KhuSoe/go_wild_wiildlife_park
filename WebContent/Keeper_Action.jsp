<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.csm.DBManager" %>
<%@ page import="com.csm.dao.KeeperManage" %>
<%@ page import="com.csm.entity.Keeper" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Keepers Process Data</title>
</head>
<body>
    <%
    try {
        String KN = request.getParameter("keeper_name");
        String DOB = request.getParameter("date_of_birth");
        String Rank = request.getParameter("rank");

        // Calling DBManager
        DBManager dbMgr = new DBManager();

        // Using object calling jdbc getconnection
        dbMgr.getConnection();

        // Two parameters passing
        java.time.LocalDate dateOfBirth = java.time.LocalDate.parse(DOB); // Use fully qualified name for LocalDate
        Keeper c = new Keeper(KN, dateOfBirth, Rank);

        // Calling KeeperManage
        KeeperManage eMag = new KeeperManage();
        int Affect = -1;

        // Calling dao
        Affect = eMag.insert(c);

        if (Affect == 1) {
            out.println("Successfully Insert..");
        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    %>
</body>
</html>
