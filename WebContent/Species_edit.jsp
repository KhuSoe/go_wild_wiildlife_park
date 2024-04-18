<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.csm.dao.SpeciesManage" %>
<%@ page import="com.csm.entity.Species" %>
<%@ page import="com.csm.DBManager" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edit Species</title>
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
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"] {
            width: 95%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="text"]:hover {
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
    <h2>Edit Form for Species</h2>
    <%
    String speciesIdString = request.getParameter("Species_Id");
    if (speciesIdString != null) {
        try {
            int speciesId = Integer.parseInt(speciesIdString);
            SpeciesManage speciesManage = new SpeciesManage();
            Species species = speciesManage.getById(speciesId);
    %>
    <form method="POST" action="Species_update.jsp">
        <input type="hidden" name="speciesId" value="<%=speciesId%>">
  
        <label for="speciesType">Species Type</label>
        <input type="text" name="speciesType" id="speciesType" value="<%=species.getSpeciesType()%>" required>
  
        <label for="speciesGroup">Species Group</label>
        <input type="text" name="speciesGroup" id="speciesGroup" value="<%=species.getSpeciesGroup()%>" required>
  
        <label for="lifestyle">Lifestyle</label>
        <input type="text" name="lifestyle" id="lifestyle" value="<%=species.getLifestyle()%>" required>
  
        <label for="conservationStatus">Conservation Status</label>
        <input type="text" name="conservationStatus" id="conservationStatus" value="<%=species.getConservationStatus()%>" required>
  
        <button type="submit" class="btn-save">Save</button>
    </form>
    <%
        } catch (ClassNotFoundException | SQLException e) {
            out.println(e.getMessage());
        }
    } else {
        out.println("Species ID is not found");
    }
    %>
</div>

</body>
</html>
