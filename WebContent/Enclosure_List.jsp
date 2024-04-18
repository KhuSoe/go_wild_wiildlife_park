<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.csm.dao.EnclosureManage" %>
<%@ page import="com.csm.entity.Enclosure" %>
<%@ page import="com.csm.DBManager" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Enclosure List</title>

    <style>
    	body{
    		background-color: #AFA8BA;
    	
    	}
        .menu_bar {
            background-color: black;
            text-align: center;
            height: 60px;
            display: flex;
            align-items: center;
        }

        .menu_bar ul {
            list-style: none;
            color: white;
            font-size: 20px;
            margin: 0;
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .menu_bar ul li a {
            text-decoration: none;
            color: #cabbe9;
            padding: 10px;
            border-radius: 5px;
            font-weight: 700;
        }

        .menu_bar ul li a:hover {
            color: black;
            background-color: white;
        }
        .header-text {
            font-size: 36px;
            font-weight: bold;
        }

        .table-container {
            margin-top: 40px;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
        }

        th, td {
            border: 2px solid black;
            padding: 8px;
            text-align: center;
        }

        th {
            background-color: #cabbe9;
            color: black;
        }

        a.edit-link {
            color: #005580;
            text-decoration: none;
        }

        a.edit-link:hover {
            color: #00bfff;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="menu_bar">
        <ul>
            <li><a href="Main.jsp" class="active">Home</a></li>
        </ul>
    </div>

    <center><h1>Enclosure Lists</h1></center>

    <div class="container table-container">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <table class="table table-bordered table-striped mt-4">
                    <thead class="thead-dark">
                        <tr>
                            <th>Enclosure ID</th>
                            <th>Enclosure Type</th>
                            <th>Location</th>
                            <th>Edit</th>
                            <th>Delete</th>                          
                        </tr>
                    </thead>
                    <tbody>
                        <% 
                            try {
                                DBManager dbMgr = new DBManager();
                                dbMgr.getConnection();

                                EnclosureManage eMgr = new EnclosureManage();
                                ArrayList<Enclosure> enclosures = eMgr.fetchAll();

                                for (Enclosure enclosure : enclosures) {
                        %>
                        <tr>
                            <td><%= enclosure.getEnclosure_Id() %></td>
                            <td><%= enclosure.getEnclosure_Type() %></td>
                            <td><%= enclosure.getLocation() %></td>
                            <td><a href="Enclosure_edit.jsp?Enclosure_Id=<%= enclosure.getEnclosure_Id() %>" class="edit-link">Edit</a></td>                            
                            <td><a href="Enclosure_Delete.jsp?EnclosureId=<%= enclosure.getEnclosure_Id() %>" class="edit-link">Delete</a></td>
                        </tr>
                        <% 
                                } // End of for loop
                            } catch (ClassNotFoundException | SQLException e) {
                                e.printStackTrace();
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
