<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.csm.dao.AnimalManage" %>
<%@ page import="com.csm.entity.Animal" %>
<%@ page import="com.csm.DBManager" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Edit Animal</title>
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
            background-image: url('https://images.unsplash.com/photo-1602491453631-e2a5ad90a131?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60');
            background-repeat: no-repeat;
            background-size: cover;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }

        h2 {
            text-align: center;
            color: white;
            margin-bottom: 20px;
        }

        label {
            color: white;
            font-size: 19px;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="number"],
        select {
            width: 95%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="text"]:hover,
        input[type="number"]:hover {
            color: green;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: white;
            font-size: 18px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Edit form for Animal</h2>
    <form method="POST" action="Animal_update.jsp">
        <%
            String sId = request.getParameter("AnimalID");
            if (sId == null) {
                out.println("Animal ID is not found");
            } else {
                int id = Integer.parseInt(sId);
                AnimalManage dao = new AnimalManage();
                try {
                    Animal a = dao.getById(id);
        %>
                    <input type="hidden" name="animal_id" value="<%=a.getAnimal_Id() %>">
                    
                    <label for="animal_name">Animal Name</label>
                    <input type="text" name="animal_name" id="animal_name" value="<%=a.getAnimal_Name() %>" required>
                    
                    <label for="gender">Gender</label>
                    <input type="text" name="gender" id="gender" value="<%=a.getGender() %>" required>
                    
                    <label for="year_of_arrival">Year of Arrival</label>
                    <input type="number" name="year_of_arrival" id="year_of_arrival" value="<%=a.getYear_of_Arrival() %>" required>
                    
                    <label for="species_id">Species ID</label>
                    <input type="number" name="species_id" id="species_id" value="<%=a.getSpecies_Species_Id() %>" required>
                    
                    <label for="keeper_id">Keeper ID</label>
                    <input type="number" name="keeper_id" id="keeper_id" value="<%=a.getKeeper_Keeper_Id() %>" required>
                    
                    <label for="enclosure_id">Enclosure ID</label>
                    <input type="number" name="enclosure_id" id="enclosure_id" value="<%=a.getEnclosures_Enclosure_Id() %>" required>
                    
                    <label for="diet_id">Diet ID</label>
                    <input type="number" name="diet_id" id="diet_id" value="<%=a.getDiet_Diet_Id() %>" required>
                    
                    <input type="submit" value="Update">
        <%
                } catch (ClassNotFoundException ex) {
                    out.println(ex.getMessage());
                } catch (SQLException e) {
                    out.println(e.getMessage());
                }
            }
        %>
    </form>
</div>

</body>
</html>
