<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Light Green Navbar & Styled Form</title>
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
    <a class="navbar-brand" href="#">HAVAMANA a weather report</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
      aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link active" href="index.jsp">Home</a></li>
        <li class="nav-item"><a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container form-section">
  <div class="row justify-content-center">
    <div class="col-md-8 col-lg-6">
      <div class="card card-custom">
        <div class="card-body p-4">
          <h4 class="card-title mb-4 text-center">Weather Data Form</h4>
          <form action="check" method="post">
            <div class="row gy-3">
              <div class="col-12">
                <label for="location" class="form-label">Location</label>
                <input type="text" class="form-control" id="location" name="location" placeholder="Enter valid location" required>
              </div>
              <div class="col-12">
                <label for="weather" class="form-label">Weather</label>
                <input type="text" class="form-control" id="weather" name="weather" placeholder="e.g. Sunny, Cloudy" required>
              </div>
              <div class="col-md-6">
                <label for="maxtemp" class="form-label">Max Temperature (&deg;C)</label>
                <input type="number" class="form-control" id="maxtemp" name="maxtemp" placeholder="e.g. 32" required>
              </div>
              <div class="col-md-6">
                <label for="mintemp" class="form-label">Min Temperature (&deg;C)</label>
                <input type="number" class="form-control" id="mintemp" name="mintemp" placeholder="e.g. 18" required>
              </div>
              <div class="col-md-6">
                <label for="humidity" class="form-label">Humidity (%)</label>
                <input type="number" class="form-control" id="humidity" name="humidity" placeholder="e.g. 70" required>
              </div>
              <div class="col-md-6">
                <label for="cloud" class="form-label">Cloudiness (%)</label>
                <input type="number" class="form-control" id="cloud" name="cloud" placeholder="e.g. 50" required>
              </div>
              <div class="col-md-6">
                <label for="raining" class="form-label">Rainfall (mm)</label>
                <input type="number" class="form-control" id="raining" name="raining" placeholder="e.g. 5" required>
              </div>
              <div class="col-md-6">
                <label for="precipitation" class="form-label">Precipitation (mm)</label>
                <input type="number" class="form-control" id="precipitation" name="precipitation" placeholder="e.g. 2" required>
              </div>
              <div class="col-md-6">
                <label for="wind" class="form-label">Wind Speed (km/h)</label>
                <input type="number" class="form-control" id="wind" name="wind" placeholder="e.g. 15" required>
              </div>
              <div class="col-md-6">
                <label for="sunrise" class="form-label">Sunrise</label>
                <input type="time" class="form-control" id="sunrise" name="sunrise" required>
              </div>
              <div class="col-md-6">
                <label for="sunset" class="form-label">Sunset</label>
                <input type="time" class="form-control" id="sunset" name="sunset" required>
              </div>
              <div class="col-md-6">
                <label for="moonrise" class="form-label">Moonrise</label>
                <input type="time" class="form-control" id="moonrise" name="moonrise" required>
              </div>
              <div class="col-md-6">
                <label for="moonset" class="form-label">Moonset</label>
                <input type="time" class="form-control" id="moonset" name="moonset" required>
              </div>
              <div class="col-md-6">
                <label for="rainStart" class="form-label">Rain Start Time</label>
                <input type="time" class="form-control" id="rainStart" name="rainStart">
              </div>
              <div class="col-md-6">
                <label for="rainStop" class="form-label">Rain Stop Time</label>
                <input type="time" class="form-control" id="rainStop" name="rainStop">
              </div>
            </div>
            <div class="d-grid mt-4">
              <button type="submit" class="btn btn-success btn-lg">Submit</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>
