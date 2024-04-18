<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.csm.dao.AnimalManage" %>
<%@ page import="com.csm.entity.Animal" %>
<%@ page import="com.csm.DBManager" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Report 1</title>

    <!-- Bootstrap CSS link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #AFA8BA;
        }

        .header-container {
            background-color: rgb(74, 30, 20); /* Dark transparent overlay */
            padding: 30px;
            color: white;
            text-align: center;
        }

        .header-text {
            font-size: 36px;
            font-weight: bold;
        }
        
        .text-center{
        	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        	font-weight:600;
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
    </style>
</head>
<body>
	<div class="menu_bar">
    <ul>
      <li><a href="Main.jsp" class="active">Home</a></li>
    </ul>
  </div>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                 <h1 class="text-center">Report 1</h1>
                <table class="table table-bordered table-striped mt-4">
                    <thead class="thead-dark">
                        <tr>
                            <th>Animals ID</th>
                            <th>Animals Name</th>
                            <th>Gender</th>
                            <th>Arrived Year</th>
                            <th>Keepers ID</th>
                            <th>Keepers Name</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% 
                            try {
                                AnimalManage aMgr = new AnimalManage();
                                ArrayList<Animal> animals = aMgr.fetchDaveorTemi();

                                for (Animal a : animals) {
                        %>
                        <tr>
                            <td><%= a.getAnimal_Id() %></td>
                            <td><%= a.getAnimal_Name() %></td>
                            <td><%= a.getGender() %></td>
                            <td><%= a.getYear_of_Arrival() %></td>
                            <td><%= a.getKeeper_Keeper_Id() %></td>
                            <td><%= a.getKeeper_Name() %></td>
                        </tr>
                        <% 
                                }
                            } catch (ClassNotFoundException e) {
                                e.printStackTrace();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        %>
                    </tbody>
                </table>
            	</div>
            </div>
        </div>
    </div>

    <!-- Bootstrap 5 JS link (required for Bootstrap features) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>