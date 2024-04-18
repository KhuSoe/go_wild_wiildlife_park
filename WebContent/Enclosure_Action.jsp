<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.csm.DBManager" %>
<%@ page import="com.csm.dao.EnclosureManage" %>
<%@ page import="com.csm.entity.Enclosure" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enclosures Process Data</title>
</head>
<body>
<%
    try {
        String Et = request.getParameter("type");
        String El = request.getParameter("location");

        // Calling DBManager
        DBManager dbMgr = new DBManager();

        // Using object calling jdbc getconnection
        dbMgr.getConnection();

        // Two parameters passing
        Enclosure c = new Enclosure(Et, El);

        // Calling EnclosureManage
        EnclosureManage eMag = new EnclosureManage();
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
