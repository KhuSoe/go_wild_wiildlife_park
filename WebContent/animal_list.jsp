<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.csm.entity.Animal" %>
<%@ page import="com.csm.dao.AnimalManage" %>
<%@ page import="com.csm.DBManager" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Animal Lists</title>
    <style>
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
  		body{
  		background-color:#AFA8BA;
background-size:cover;}

table,td,th{
border:2px solid black;}

table{
border-collapse: collapse;
width: 80%;}

th{
height:40px;}

td {
height: 30px;}
    </style>
</head>
<body>
<div class="menu_bar">
    <ul>
      <li><a href="Main.jsp" class="active">Home</a></li>
    </ul>
  </div>
    <center><h1>Animal Lists</h1></center>
    <%
        try {
        	
        	AnimalManage animalManage = new AnimalManage();
            ArrayList<Animal> animals = animalManage.fetchAll();
    %>
    <center>
        <table border="1">
            <tr>
                <th>Animal ID</th>
                <th>Animal Name</th>
                <th>Gender</th>
                <th>Year of arrival</th>
                <th>Species ID</th>
                <th>Keeper ID</th>
                <th>Enclosure ID</th>
                <th>Diet ID</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <%
                for (Animal animal : animals) {
            %>
            <tr>
                <td><%= animal.getAnimal_Id() %></td>
                <td><%= animal.getAnimal_Name() %></td>
                <td><%= animal.getGender() %></td>
                <td><%= animal.getYear_of_Arrival() %></td>
                <td><%= animal.getSpecies_Species_Id() %></td>
                 <td><%= animal.getKeeper_Keeper_Id() %></td>
                 <td><%= animal.getEnclosures_Enclosure_Id() %></td>
                 <td><%= animal.getDiet_Diet_Id() %></td>
                 <td><a class="edit-link" href="Animal_edit.jsp?AnimalID=<%= animal.getAnimal_Id() %>">Edit</a></td>
                <td><a href="Animal_delete.jsp?AnimalID=<%= animal.getAnimal_Id() %>">Delete</a></td>
            </tr>
            <%
                }
            %>
        </table>
    </center>
    <%
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    %>
</body>
</html>
