<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.csm.dao.KeeperManage" %>
<%@ page import="com.csm.entity.Keeper" %>
<%@ page import="com.csm.DBManager" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Keeper List</title>

    <style>
        body {
            background-color: #AFA8BA;
            background-size: cover;
            margin: 0;
            padding: 0;
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
        .table-container {
            margin-top: 40px;
            padding: 0 20px;
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
            
            color: black;
        }

        a.delete-link, a.edit-link {
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
    <center><h1>Keeper Lists</h1></center>
    <div class="container table-container">
        <table>
            <thead>
                <tr>
                    <th>Keeper ID</th>
                    <th>Keeper Name</th>
                    <th>Date Of Birth</th>
                    <th>Rank</th>
                    <th>Edit Keeper</th>
                    <th>Delete Keeper</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    try {
                        // Get connection
                        DBManager dbMgr = new DBManager();
                        try (Connection conn = dbMgr.getConnection()) {
                            // Fetch all keepers
                            KeeperManage eMgr = new KeeperManage();
                            ArrayList<Keeper> keepers = eMgr.fetchAll();

                            // Display the keeper details in the table
                            for (Keeper keeper : keepers) {
                %>
                <tr>
                    <td><%= keeper.getKeeperId() %></td>
                    <td><%= keeper.getKeeperName() %></td>
                    <td><%= keeper.getDateOfBirth().format(java.time.format.DateTimeFormatter.ofPattern("yyyy-MM-dd")) %></td>
                    <td><%= keeper.getRank() %></td>
                    <td><a class="edit-link" href="Keeper_edit.jsp?Keeper_Id=<%= keeper.getKeeperId() %>">Edit</a></td>
                    <td><a class="delete-link" href="Keeper_Delete.jsp?KeeperId=<%= keeper.getKeeperId() %>">Delete</a></td>
                    
                </tr>
                <% 
                            } // End of for loop
                        } // End of try-with-resources for Connection
                    } catch (ClassNotFoundException | SQLException e) {
                        e.printStackTrace();
                    }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
