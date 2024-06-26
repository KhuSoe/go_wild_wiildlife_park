<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Add Animal</title>
  <!-- Bootstrap 5 CSS link -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Font Awesome CSS link -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

  <style>
    body {
      font-family: 'Times New Roman', Times, serif;
      background-image:url('https://img.freepik.com/free-photo/view-tiger-animal-wild_23-2150374850.jpg?t=st=1690820219~exp=1690823819~hmac=6c3a0d79a21844b3075ec6975bc6f2ee087eaeab24c70f0ef5c09ba34a87f593&w=740') ;
      padding: 20px;
      font-size: 20px;
    }

    .container {
      max-width: 400px;
      background-color: #171023;
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
    input[type="number"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
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
  <form action="Animal_Action.jsp" target="_top">
    <h2>Animal</h2>
    <div class="mb-3">
      <label for="animal_id">Animal ID</label>
      <input type="number" name="animal_id" required>
    </div>
    <div class="mb-3">
      <label for="animal_name">Animal Name</label>
      <input type="text" name="animal_name" required>
    </div>
    <div class="mb-3">
      <label for="gender">Gender</label>
      <input type="text" name="gender" required>
    </div>
    <div class="mb-3">
      <label for="year_of_arrival">Year of Arrival</label>
      <input type="number" name="year_of_arrival" required>
    </div>
    <div class="mb-3">
      <label for="species_species_id">Species ID</label>
      <input type="number" name="species_species_id" required>
    </div>
    <div class="mb-3">
      <label for="keeper_keeper_id">Keeper ID</label>
      <input type="number" name="keeper_keeper_id" required>
    </div>
    <div class="mb-3">
      <label for="enclosures_enclosure_id">Enclosure ID</label>
      <input type="number" name="enclosures_enclosure_id" required>
    </div>
    <div class="mb-3">
      <label for="diet_diet_id">Diet ID</label>
      <input type="number" name="diet_diet_id" required>
    </div>
    <div class="mb-3">
      <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Save</button>
      <button type="reset" class="btn btn-danger"><i class="fas fa-times-circle"></i> Clear</button>
    </div>
  </form>
</div>
</body>
</html>
