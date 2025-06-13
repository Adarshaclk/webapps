<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Light Green Navbar &amp; Styled Form</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
  <style>
    .navbar-lightgreen {
      background-color: #90ee90 !important; /* Light green */
    }
    .navbar-lightgreen .navbar-brand,
    .navbar-lightgreen .nav-link {
      color: #000 !important; /* Black text for contrast */
    }
    .card-custom {
      border-radius: 1rem;
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
    }
    .form-section {
      margin-top: 3rem;
      margin-bottom: 3rem;
    }
  </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-lightgreen">
  <div class="container">
    <a class="navbar-brand" href="#">Havamana a weather report</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
      aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item">
          <a class="nav-link active" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="weather.jsp" tabindex="-1" aria-disabled="true">weather form</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<h1 align="center">welcome to the weather report web applications<h1>
<div align="center">
<a class="btn btn-primary" href="weather.jsp" role="button">weather</a>

</div>
</body>
</html>
