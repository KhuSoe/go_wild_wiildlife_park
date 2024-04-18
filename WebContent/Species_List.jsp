<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.csm.dao.SpeciesManage" %>
<%@ page import="com.csm.entity.Species" %>
<%@ page import="java.util.List" %>


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Species Lists</title>

    <style>
        /* Your custom styles go here */
        body {
            background-color: #AFA8BA;
            background-size: cover;
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
            text-color: white;
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

        .table-container {
            margin-top: 40px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th,
        td {
            padding: 8px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        .delete-link {
            color: #ff0000;
            text-decoration: none;
        }

        .delete-link:hover {
            color: #cc0000;
            text-decoration: underline;
        }

        .edit-link {
            color: #005580;
            text-decoration: none;
        }

        .edit-link:hover {
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
<center><h1>Species Lists</h1></center>

<div class="container table-container">
    <div class="row justify-content-center">
        <div class="col-lg-10">
            <table class="table table-bordered table-striped mt-4">
                <thead class="thead-dark">
                <tr>
                    <th>Species ID</th>
                    <th>Species Type</th>
                    <th>Species Group</th>
                    <th>LifeStyle</th>
                    <th>Conservation Status</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>
                <%
                    try {
                        SpeciesManage speciesMgr = new SpeciesManage();
                        List<Species> speciesList = speciesMgr.fetchAll();

                        for (Species species : speciesList) {
                %>
                <tr>
                    <td><%= species.getSpeciesId() %></td>
                    <td><%= species.getSpeciesType() %></td>
                    <td><%= species.getSpeciesGroup() %></td>
                    <td><%= species.getLifestyle() %></td>
                    <td><%= species.getConservationStatus() %></td>
                    <td><a class="edit-link" href="Species_edit.jsp?Species_Id=<%= species.getSpeciesId() %>">Edit</a></td>
                    <td><a class="delete-link" href="Species_Delete.jsp?SpeciesId=<%= species.getSpeciesId() %>">Delete</a></td>                    
                </tr>
                <%
                        }
                    } catch (ClassNotFoundException e) {
                        // Handle ClassNotFoundException
                        // Redirect to an error page or show a user-friendly message
                        response.sendRedirect("error.jsp?message=Unable%20to%20load%20class");
                    } catch (SQLException e) {
                        // Handle SQLException
                        // Redirect to an error page or show a user-friendly message
                        response.sendRedirect("error.jsp?message=Unable%20to%20fetch%20data%20from%20the%20database");
                    }
                %>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
