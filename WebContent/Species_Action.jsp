<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.csm.DBManager" %>
<%@ page import="com.csm.dao.SpeciesManage" %>
<%@ page import="com.csm.entity.Species" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Species Process Data</title>
</head>
<body>
<%
    try {
        String ST = request.getParameter("species_type");
        String SG = request.getParameter("species_group");
        String LS = request.getParameter("lifestyle");
        String CS = request.getParameter("conservation_status");

        // Calling DBManager
        DBManager dbMgr = new DBManager();

        // Using object calling jdbc getconnection
        dbMgr.getConnection();

        // Two parameters passing
        Species c = new Species(ST,SG,LS,CS);

        // Calling EnclosureManage
        SpeciesManage eMag = new SpeciesManage();
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
