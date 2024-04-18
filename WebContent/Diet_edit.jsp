<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.csm.DBManager" %>
<%@ page import="com.csm.dao.DietManage" %>
<%@ page import="com.csm.entity.Diet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Diet</title>
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
  <h2>Edit form for Diet</h2>
  <form method="POST" action="Diet_update.jsp">
  <%
    String sId = request.getParameter("DietID");
    if (sId == null) {
      out.println("Diet ID is not found");
    } else {
      int id = Integer.parseInt(sId);
      DietManage dao = new DietManage();
      try {
        Diet c = dao.getById(id);
  %>
        <input type="hidden" name="diet_id" value="<%=c.getDietID() %>">
  
        <label for="diet_type">Diet Type</label>
        <input type="text" name="diet_type" id="diet_type" value="<%=c.getDiet_Type() %>" required>
  
        <label for="diet_feed">Number of feed per day</label>
        <input type="number" name="diet_feed" id="diet_feed" value="<%=c.getNo_of_feed() %>" required>
  
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
