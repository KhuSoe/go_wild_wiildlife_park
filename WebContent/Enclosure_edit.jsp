<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.csm.dao.EnclosureManage" %>
<%@ page import="com.csm.entity.Enclosure" %>
<%@ page import="com.csm.DBManager" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Edit Enclosure</title>
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
  input[type="number"] {
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
        <h2>Edit Enclosure</h2>

        <%
            String enclosureIdString = request.getParameter("Enclosure_Id");
            int enclosureId = Integer.parseInt(enclosureIdString);

            EnclosureManage dao = new EnclosureManage();
            Enclosure enclosure = null;

            try {
                enclosure = dao.getById(enclosureId);
            } catch (ClassNotFoundException ex) {
                out.println(ex.getMessage());
            } catch (SQLException e) {
                out.println(e.getMessage());
            }

            if (enclosure == null) {
        %>
            <h3>Enclosure with ID <%= enclosureId %> not found!</h3>
            <a href="Enclosure_List.jsp">Back to Enclosure List</a>
        <%
            } else {
        %>
            <form action="Enclosure_update.jsp" method="post">
                <input type="hidden" name="Enclosure_Id" value="<%= enclosure.getEnclosure_Id() %>">
                <label for="enclosureType">Enclosure Type</label>
                <input type="text" id="enclosureType" name="enclosureType" value="<%= enclosure.getEnclosure_Type() %>" required>
                <label for="location">Location</label>
                <input type="text" id="location" name="location" value="<%= enclosure.getLocation() %>" required>
                <input type="submit" value="Update">
            </form>
        <%
            }
        %>
    </div>

</body>
</html>
