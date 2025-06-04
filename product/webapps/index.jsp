<html>
<head>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<div align="center">
<form action="product" method="post">
<input type="number" placeholder="enter product id" name="productId"><br>
<input type="text" placeholder="enter the product name" name="name"><br>
<input type="number" placeholder="enter the center" name="price"><br>
<input type="number" placeholder="enter the quantity" name="quant"><br>
<div class="form-group">
        <label for="catogary">Size</label>
        <select class="custom-select" id="size" name="catgory">
            <option selected>Open this select menu</option>
            <option value="electronics">electronics</option>
            <option value="clothing">clothing</option>
            <option value="books">books</option>
            <option value="home">home</option>
        </select>
      <input type="submit" value="submit">
</form>
</div>

</body>
</html>