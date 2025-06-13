<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bridge Report</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #e0eafc, #cfdef3);
            min-height: 100vh;
        }
        .form-section {
            background: white;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Bridge Report</a>
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

    <!-- Form Section -->
    <div class="container my-5" id="formSection">
        <div class="form-section">
            <h2 class="mb-4">Bridge Inspection Report Form</h2>
            <form action="report" method="post">
                <div class="mb-3">
                    <label for="bridgeName" class="form-label">Bridge Name *</label>
                    <input type="text" class="form-control" id="bridgeName" placeholder="Enter bridge name" name="name" required>
                </div>
                <div class="mb-3">
                    <label for="location" class="form-label">Location *</label>
                    <input type="text" class="form-control" id="location" placeholder="Enter location" name="location" required>
                </div>
                <div class="mb-3">
                    <label for="inspectionDate" class="form-label">Inspection Date *</label>
                    <input type="date" class="form-control" id="inspectionDate" name="date" required>
                </div>
                <div class="mb-3">
                    <label for="bridgeLength" class="form-label">Bridge Length (meters) *</label>
                    <input type="number" class="form-control" id="bridgeLength" placeholder="Enter length" name="length" required>
                </div>
                <div class="mb-3">
                    <label for="comments" class="form-label">Comments</label>
                    <textarea class="form-control" id="comments" rows="3" name="sent" placeholder="Any observations..."></textarea>
                </div>
              <div class="mb-3">
                <label for="isApproved" class="form-label">Is the bridge is safe</label>
                <select class="form-select" id="isApproved" name="check" required>
                  <option value="">-- Select an option --</option>
                  <option value="Yes">Yes</option>
                  <option value="No">No</option>
                </select>
              </div>
                <button type="submit" class="btn btn-primary">Submit Report</button>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
