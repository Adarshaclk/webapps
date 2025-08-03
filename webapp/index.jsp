<!DOCTYPE html>
<html>
<head>
  <title>MeetUps Page</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" defer></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>

<body style="margin:0; padding:0; background-color:black;">

  <!-- Background image -->
  <div style="background-image: url('https://images.filmibeat.com/img/popcorn/movie_lists/50-popular-kannada-actresses-name-with-photos-20250205223516-7207.jpg');
              background-size: cover;
              background-position: center;
              position: fixed;
              width: 100%;
              height: 100%;
              z-index: -3;">
  </div>

  <!-- Black gradient overlay to the right -->
  <div style="position: fixed;
              width: 100%;
              height: 100%;
              background: linear-gradient(to left, transparent 30%, black 100%);
              opacity: 0.7;
              z-index: -2;">
  </div>

  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg" style="background-color: #064420;">
    <div class="container-fluid">
      <a class="navbar-brand" href="#" style="color: white; font-weight: bold;">
        <img src="https://www.creativefabrica.com/wp-content/uploads/2024/11/19/RR-elegant-logo-Graphics-875512-580x387.jpg" alt="Logo" width="40" height="40" class="d-inline-block align-text-top">
        MeetUps
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
              data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
              aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" style="color:white" aria-current="page" href="index.jsp">
              <i class="fa-solid fa-house"></i> Home
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" style="color:white" href="login.jsp"><i class="fa-solid fa-right-to-bracket"></i> Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" style="color:white" href="Register.jsp"><i class="fa-solid fa-right-to-bracket"></i> Register</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" style="color:white" href="#" role="button" data-bs-toggle="dropdown"
               aria-expanded="false"><i class="fa-solid fa-globe"></i> Language</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="kannada.html">Kannada</a></li>
              <li><a class="dropdown-item" href="hindi.html">Hindi</a></li>
              <li><a class="dropdown-item" href="Telugu.html">Telugu</a></li>
               <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="#">Other</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" aria-disabled="true">Disabled</a>
          </li>
        </ul>
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" />
          <button class="btn btn-secondary btn-lg" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>

  <!-- Hero text -->
  <div style="position: absolute; top: 70%; left: 5%; transform: translateY(-100%);
               color: white; font-weight: bold; font-size: 48px; text-align: left; z-index: 1;">
    Welcome to MeetUps<br>
    Get a Chance to Meet your Celebrity!!!
  </div>

</body>
</html>
