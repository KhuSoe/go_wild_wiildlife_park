<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Add Keeper</title>
  <!-- Bootstrap 5 CSS link -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Font Awesome CSS link -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

  <style>
    body {
      font-family: 'Times New Roman', Times, serif;
      background-image: url('https://img.freepik.com/free-photo/elephant-road_1048-4467.jpg?size=626&ext=jpg&ga=GA1.1.839138248.1690820211&semt=ais');
      padding: 20px;
      font-size: 20px;
    }

    .container {
      max-width: 400px;
      background-color: #2A2C3F;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      margin: 0 auto;
    }

    h2 {
      text-align: center;
      color: white;
      margin-bottom: 20px;
    }

    label {
      color: white;
      display: block;
      margin-bottom: 5px;
    }

    input[type="text"],
    input[type="number"],
    input[type="date"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    input[type="date"] {
      /* Custom styling for date input */
      /* Remove the default arrow icon */
      appearance: none;
      -webkit-appearance: none;
      /* Hide the spin button */
      -moz-appearance: textfield;
    }

    .btn {
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .btn-primary {
      background-color: #007bff;
      color: #ffffff;
    }

    .btn-danger {
      background-color: #dc3545;
      color: #ffffff;
    }

    .btn i {
      margin-right: 5px;
    }
  </style>
</head>
<body>
<div class="container mt-4">
  <a href="Main.jsp" id="home" class="text-decoration-none">
    <i class="fas fa-home"></i> Home
  </a>
  <form action="Keeper_Action.jsp" target="_top">
    <h2>Keeper</h2>
    <div class="mb-3">
      <label for="keeper_name">Keeper Name</label>
      <input type="text" name="keeper_name" required>
    </div>
    <div class="mb-3">
      <label for="date_of_birth">Date of Birth</label>
      <input type="date" name="date_of_birth" required>
    </div>

    <div class="mb-3">
      <label for="rank">Rank</label>
      <input type="text" name="rank" required>
    </div>
    <div class="mb-3">
      <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Save</button>
      <button type="reset" class="btn btn-danger"><i class="fas fa-times-circle"></i> Clear</button>
    </div>
  </form>
</div>
</body>
</html>
