<!DOCTYPE html>
<html>
<head>
  <title>Navbar with Inline CSS</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css">

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" defer></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">


<body style="margin:0; padding:0; background-color:black;">

  <!-- Background image with dark overlay -->
  <div style="background-image: url('https://images.filmibeat.com/img/popcorn/movie_lists/50-popular-kannada-actresses-name-with-photos-20250205223516-7207.jpg');
              background-size: cover;
              background-position: center;
              position: fixed;
              width: 100%;
              height: 100%;
              opacity: 0.4;
              z-index: -1;">
  </div>

</head>

<!-- Navbar starts -->
<nav class="navbar navbar-expand-lg" style="background-color: #064420;">
  <div class="container-fluid">

    <!-- Logo and Brand -->
    <a class="navbar-brand" href="#" style="color: white; font-weight: bold;">
      <img src="https://www.creativefabrica.com/wp-content/uploads/2024/11/19/RR-elegant-logo-Graphics-875512-580x387.jpg"
           alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
      MeetUps
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
            aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Navbar links -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
<li class="nav-item">
             <a class="nav-link active" style="color:white" aria-current="page" href="index.jsp">
               <i class="fa-solid fa-house"></i> Home
             </a>
                    <li class="nav-item">
                      <a class="nav-link" style="color:white" href="login.jsp"><i class="fa-solid fa-right-to-bracket"></i> Login</a>
                    </li>

                    <li class="nav-item">
                      <a class="nav-link" style="color:white" href="Register.jsp"><i class="fa-solid fa-right-to-bracket"></i> Register</a>
                    </li>
                     <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" style="color:white" href="#" role="button" data-bs-toggle="dropdown"
                                   aria-expanded="false"><i class="fa-solid fa-globe"></i>
                                    Language
                      </a>
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
                    <button class="btn btn-outline-success" type="submit">Search</button>
                  </form>
                </div>
              </div>
            </nav>

<!-- Navbar ends -->
<div style="width: 350px; margin: 50px auto; padding: 30px; border: 1px solid #ccc; border-radius: 10px; background-color:#adb5bd;">
  <h3 style="text-align: center; font-weight: bold;">Login</h3>

  <form id="myForm" action="login" method="post">
    <!-- Phone Number Field -->
    <div class="mb-3">
      <label for="phone" class="form-label" style="font-weight: bold;">Phone Number</label>
      <input type="tel" class="form-control" id="phone" placeholder="Enter phone number" name="phone"
             style="padding: 8px; border-radius: 5px; border: 1px solid #ccc;">
    </div>

    <!-- Password Field -->
    <div class="mb-3">
      <label for="password" class="form-label" style="font-weight: bold;">Password</label>
      <input type="password" class="form-control" id="password" placeholder="Enter password" name="pass"
             style="padding: 8px; border-radius: 5px; border: 1px solid #ccc;">
    </div>

    <!-- Checkbox -->
    <div class="form-check mb-3">
      <input type="checkbox" class="form-check-input" id="rememberCheck">
      <label class="form-check-label" for="rememberCheck" style="font-weight: bold;">click your only racchu fan</label>
    </div>

    <!-- Red Login Button -->
    <button type="submit"
            style="width: 50%; background-color:blue; color: white; padding: 10px; border: none; border-radius: 5px; font-weight: bold;">
      Login
    </button>
   <button type="button" onclick="cancelForm()"
   style="width:40%;background-color:blue; color: white; padding: 10px; border: none; border-radius: 5px; font-weight: bold;"">Cancel</button>
   </form>

   <script>
     function cancelForm() {
       document.getElementById("myForm").reset(); // Clear form inputs
            // Redirect to index page
     }
   </script>
  </form>
</div>
</body>
</html>
