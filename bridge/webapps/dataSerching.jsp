<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bridge Report</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #c9d6ff, #e2e2e2);
            min-height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .form-section {
            background: white;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }
        .banner-image {
            width: 50%;
            height: auto;
            object-fit: cover;
            border-radius: 10px;
            margin-top: 20px;
        }
        .main-heading {
            margin: 40px 0 20px;
            color: #0d6efd;
            font-size: 2.5rem;
            font-weight: bold;
        }
        .btn-center {
            margin:j 30px auto;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary shadow">
    <div class="container-fluid">
        <a class="navbar-brand fw-bold" href="#">Bridge Report</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="form.jsp">Form</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<form action="report" method="doget">
<div class="mb-3">
  <label for="bridgeId" class="form-label">Bridge ID</label>
   <input type="number" class="form-control" id="findId" placeholder="Enter the bridge ID "   name="id" required>
   </div>
 <button type="submit" class="btn btn-primary">Submit Report</button>
 </form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
