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
            width: 100%;
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
            margin: 30px auto;
        }
    </style>
</head>
<body>
<!-- Navbar -->
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

<div class="container mt-4">
    <img src="https://drupal-prod.visitcalifornia.com/sites/default/files/styles/opengraph_1200x630/public/VCW_D_Bigsur_T3_Hero_Central%20Coast_Hero_BixbyBridgeBIg%20Sur_VCL_CC_BigSur_BixbyBridge_.jpgFarnum%20copy-1280x642.jpg.webp?itok=ov_HJOUi" class="banner-image img-fluid" alt="Bridge 1">
    <img src="https://images.squarespace-cdn.com/content/v1/5a5986b2cf81e095e172ce87/1597531116722-41NP8HVUE7BPQI0DYJES/flyingdawnmarie-bixby-creek-bridge-04-banner.jpg" class="banner-image img-fluid" alt="Bridge 2">
    <h1 class="text-center main-heading">All India Bridge Inspection Committee</h1>
    <div class="text-center">
        <a class="btn btn-lg btn-outline-primary btn-center" href="form.jsp" role="button">Go to Form</a>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
