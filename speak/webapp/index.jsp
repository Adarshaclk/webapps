<html>
<head>
    <title>Speaker</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Auja speakers</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link active" href="#">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Link</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown">
                        Dropdown
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
                <li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a></li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search">
                <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>

<div class="d-flex justify-content-center align-items-center" style="height: 80vh;">
    <form action="sound" method="post" class="p-4 border rounded shadow bg-light">
        <div class="form-group">
            <label for="brand">Brand:</label>
            <input type="text" class="form-control" placeholder="Enter brand name" name="brand" id="brand">
        </div>
        <div class="form-group">
            <label for="brand">price:</label>
            <input type="number" class="form-control" placeholder="Enter price" name="brand" id="brand">
        </div>
        <div class="form-group">
            <label for="color">Color:</label>
            <input type="text" class="form-control" placeholder="Enter color" name="color" id="color">
        </div>
        <div class="form-group">
            <label for="weight">Weight:</label>
            <input type="number" class="form-control" placeholder="Enter the weight" name="weight" id="weight">
        </div>
        <div class="form-group">
            <label for="sound">Sound in dB:</label>
            <select class="form-control" name="sound" id="sound">
                <option disabled selected>Select a sound level</option>
                <option value="100">100db</option>
                <option value="200">200db</option>
                <option value="300">300db</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary btn-block">Submit</button>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>

</body>
</html>
