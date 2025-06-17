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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
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
           <form id="bridgeForm" action="report" method="post">
            <h4 style="color:green;"> ${success}</h4>
            <h4 style="color:red;"> ${message}</h4>

                <div class="mb-3">
                    <label for="bridgeName" class="form-label">Bridge Name *</label>
                    <input type="text" class="form-control" id="bridgeName" placeholder="Enter bridge name" value="${bridgeDto.name}" name="name" >
                </div>
                <div class="mb-3">
                    <label for="location" class="form-label">Location *</label>
                    <input type="text" class="form-control" id="location" placeholder="Enter location" name="location"   value="${bridgeDto.location}"  required>
                </div>
                <div class="mb-3">
                    <label for="inspectionDate" class="form-label">Inspection Date *</label>
                    <input type="date" class="form-control" id="inspectionDate" name="date" required  value="${bridgeDto.date}" >
                </div>
                <div class="mb-3">
                    <label for="bridgeLength" class="form-label">Bridge Length (meters) *</label>
                    <input type="number" class="form-control" id="bridgeLength" placeholder="Enter length"   value="${bridgeDto.length}"  name="length" required>
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

               <script>


                   $(document).ready(function () {
              console.log('runing ready funtion');

                       $('form').on('submit', function (e) {
                       console.log('on submit');
                           let isValid = true;

                           $('.error-text').remove();

                           const name = $('#bridgeName').val().trim();
                           const location = $('#location').val().trim();
                           const date = $('#inspectionDate').val();
                           const length = $('#bridgeLength').val().trim();
                           const check = $('#isApproved').val();

                           if (name === '') {
                               $('#bridgeName').after('<small class="text-danger error-text">Bridge name is required.</small>');
                               isValid = false;
                           }

                           if (location === '') {
                               $('#location').after('<small class="text-danger error-text">Location is required.</small>');
                               isValid = false;
                           }

                           if (date === '') {
                               $('#inspectionDate').after('<small class="text-danger error-text">Date is required.</small>');
                               isValid = false;
                           }

                           if (length === '' || isNaN(length) || Number(length) <= 0) {
                               $('#bridgeLength').after('<small class="text-danger error-text">Enter a valid length.</small>');
                               isValid = false;
                           }
                           if (check === '') {
                               $('#isApproved').after('<small class="text-danger error-text">Please select an option.</small>');
                               isValid = false;
                           }

                           if (!isValid) {
                               e.preventDefault();
                           }
                       });
                   });
               </script>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
