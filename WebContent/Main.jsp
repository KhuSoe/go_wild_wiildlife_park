<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Go Wild WildLife Park</title>
<!-- Bootstrap 5 CSS link -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome CSS link -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
</head>
<style>

  h1 {
    color: #cabbe9;
    font-weight: bold;
    text-align: center;
  }
  body {
    align-items: center;
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    overflow: hidden; /* Hide any overflowing content from the video */
  }

  .video-background {
    position: fixed; /* Fixed position to cover the whole viewport */
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: -1; /* Place the video behind other elements */
    overflow: hidden;
  }

  .video-background video {
    width: 100%;
    height: 100%;
    object-fit: cover; /* Resize the video to cover the whole container */
  }

  .menu_bar {
  	background-color: balck;
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

  /* Add a new class for dropdown content */
  .dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  }

  /* Style the dropdown links */
  .dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
  }

  /* Change the background color of dropdown links on hover */
  .dropdown-content a:hover {
    background-color: #f1f1f1;
  }

  /* Adjust the dropdown content when hovering on the list item */
  .dropdown:hover .dropdown-content {
    display: block;
  }
</style>

<body>

  <!-- Video background -->
  <div class="video-background">
    <video autoplay muted loop>
      <source src="background.mp4" type="video/mp4"> <!-- Replace 'your-video-file.mp4' with the actual video file path -->
    </video>
  </div>

  <div class="menu_bar">
    <ul>
      <li><a href="Main.jsp" class="active">Home</a></li>
      <li class="dropdown">
        <a href="Diet.jsp">Diet</a>
        <!-- Dropdown content for Diet -->
        <div class="dropdown-content">
          <a href="Diet_list.jsp">View Diet</a>
          <a href="dietButton2.html">Button 2</a>
          <a href="dietButton3.html">Button 3</a>
        </div>
      </li>
      <li class="dropdown">
        <a href="Keeper.jsp">Keepers</a>
        <!-- Dropdown content for Keepers -->
        <div class="dropdown-content">
          <a href="Keeper_list.jsp">Keeper List</a>
          <a href="keepersButton2.html">Button 2</a>
          <a href="keepersButton3.html">Button 3</a>
        </div>
      </li>
      <li class="dropdown">
        <a href="Animal.jsp">Animals</a>
        <!-- Dropdown content for Animals -->
        <div class="dropdown-content">
          <a href="animal_list.jsp">Animal list</a>
          <a href="animalsButton2.html">Button 2</a>
          <a href="animalsButton3.html">Button 3</a>
        </div>
      </li>
      <li class="dropdown">
        <a href="Enclosure.jsp">Enclosures</a>
        <!-- Dropdown content for Enclosures -->
        <div class="dropdown-content">
          <a href="Enclosure_List.jsp">Enclosure List</a>
          <a href="enclosuresButton2.html">Button 2</a>
          <a href="enclosuresButton3.html">Button 3</a>
        </div>
      </li>
      <li class="dropdown">
        <a href="Species.jsp">Species</a>
        <!-- Dropdown content for Species -->
        <div class="dropdown-content">
          <a href="Species_List.jsp">Species List</a>
          <a href="speciesButton2.html">Button 2</a>
          <a href="speciesButton3.html">Button 3</a>
        </div>
      </li>
      <li class="dropdown">
        <a href="Species.jsp">Reports</a>
        <!-- Dropdown content for Species -->
        <div class="dropdown-content">
          <a href="Report1.jsp">Report 1</a>
          <a href="Report2.jsp">Report 2</a>
          <a href="#">Button 3</a>
        </div>
      </li>
    </ul>
  </div>

  <center>
    <h1>Go Wild WildLife Park</h1>
  </center>

  <!-- Bootstrap 5 JS link (required for Bootstrap features like dropdowns) -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
