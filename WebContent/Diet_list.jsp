<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "java.util.ArrayList" %>
    <%@ page import = "com.csm.dao.DietManage" %>
    <%@ page import = "com.csm.entity.Diet" %>
    <%@ page import = "com.csm.DBManager" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Diet Lists</title>
</head>

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

<body>

<div class="menu_bar">
    <ul>
      <li><a href="Main.jsp" class="active">Home</a></li>
    </ul>
  </div>

<center><h1>Diet Lists</h1></center>

<%
	try{
		DBManager dbMgr = new DBManager();
		dbMgr.getConnection();
		
		DietManage eMgr = new DietManage();
		ArrayList<Diet> diets = eMgr.fetchAll();
		
%>

	<center><table border="1">
	<tr>
		<th>Diet ID</th>
		<th>Diet Type</th>
		<th>Number of feed per day</th>
		<th>Edit</th>
		<th>Delete Diet</th>  
	</tr>
<%
	for (Diet diet :diets){
%>

	<tr>
	<td><%=diet.getDietID() %></td>
	<td><%=diet.getDiet_Type() %></td>
	<td><%=diet.getNo_of_feed() %></td>
	<td><a href="Diet_edit.jsp?DietID=<%= diet.getDietID() %>">Edit</a></td>
	<td><a href="Diet_delete.jsp?DietID=<%= diet.getDietID() %>">Delete</a></td>
 
	</tr>

<%
	}
%>

	</table></center>

<%
	}catch(ClassNotFoundException e){
		e.printStackTrace();
	}catch(SQLException e){
		e.printStackTrace();
	}
%>


</body>
</html>