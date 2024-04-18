<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.csm.dao.KeeperManage" %>
<%@ page import="com.csm.entity.Keeper" %>
<%@ page import="com.csm.DBManager" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Edit Keeper</title>
    <style>
        body {
            font-family: 'Times New Roman', Times, serif;
            background-color: #334A51;
            padding: 20px;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        .container {
            max-width: 400px;
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }

        h2 {
            text-align: center;
            color: #007bff;
            margin-bottom: 20px;
        }

        label {
            font-size: 19px;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="date"],
        input[type="number"] {
            width: 95%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="text"]:hover,
        input[type="date"]:hover,
        input[type="number"]:hover {
            color: green;
        }

        .btn-save {
            width: 100%;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: white;
            font-size: 18px;
            cursor: pointer;
        }

        .btn-save:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Edit Form for Keeper</h2>
    <%
    String keeperIdString = request.getParameter("Keeper_Id");
    if (keeperIdString != null) {
        try {
            int keeperId = Integer.parseInt(keeperIdString);
            KeeperManage keeperManage = new KeeperManage();
            Keeper keeper = keeperManage.getById(keeperId);
    %>
        <form method="POST" action="Keeper_update.jsp">
            <input type="hidden" name="keeperId" value="<%=keeperId%>">
            <label for="keeperName">Keeper Name</label>
            <input type="text" id="keeperName" name="keeperName" value="<%=keeper.getKeeperName()%>" required>

            <label for="dateOfBirth">Date of Birth</label>
            <input type="date" id="dateOfBirth" name="dateOfBirth" value="<%=keeper.getDateOfBirth()%>" required>

            <label for="rank">Rank</label>
            <input type="text" id="rank" name="rank" value="<%=keeper.getRank()%>" required>

            <button type="submit" class="btn-save">Save</button>
        </form>
    <%
            } catch (ClassNotFoundException | SQLException e) {
                out.println(e.getMessage());
            }
        } else {
            out.println("Keeper ID is not found");
        }
    %>
</div>

</body>
</html>
