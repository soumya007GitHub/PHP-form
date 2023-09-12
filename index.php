
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enquiry Form</title>
    <!-- BootStrap CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/a359d5e7cb.js" crossorigin="anonymous"></script>
    <style>
        body{
            background-image: url("images/1.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            
        }
        ::placeholder{
            color : white;
        }
        .container{
            background-color : rgba(6, 6, 6, 0.5);
            margin-top : 5%;
            border-radius : 10px;
        }
        input, textarea{
            color : white;
            background-color : transparent;
            display : inline-block;
        outline:none; border:0;
        border-bottom : 1px solid white;
        }
        .row1 input{
            width : 80%;
        }
        .row3{
            text-align:center;
        }
    </style>
</head>
<body>
<div class="hero">
    <div class = "container">
      <form  method = "post" action = "index.php" id ="form-raise" style = "padding:40px; border-radius : 10px;">
      <h2 class="mb-3" style = "text-align:center; color:white;">FIND YOUR RIGHT CAR</h2>
      <div class = "row row1" style = " margin-top:50px;">
        <div class = "col-lg-4 col-md-4 col-sm-4">
    <input type="name" name = "name" class = "row1" id="name" placeholder="Name" required>
        </div>
        <div class = "col-lg-4 col-md-4 col-sm-4">
    <input type="number" name = "phonenumber" id="phonenumber" placeholder="Phone Number." required>
        </div>
        <div class = "col-lg-4 col-md-4 col-sm-4">
            <input type="email" name = "email" id="email" placeholder="Email" required>
            </div>
      </div>
      <h5 style = "margin-top: 30px; display:inline-block; color:white;">Select Vehicle Type</h5><br>
      <div class = "row row2" style = "margin-top : 10px; margin-bottom:10px; color:white;">
        <div class = "col-lg-3 col-sm-6 col-md-6">
  <input type="checkbox" id="vehicle1" name="cartype[]" value="SUV" style = "background-color : transparent;">
  <label for="vehicle1">SUV</label>
        </div>
        <div class = "col-lg-3 col-sm-6 col-md-6">
  <input type="checkbox" id="vehicle2" name="cartype[]" value="Hatchback" style = "background-color : transparent;">
  <label for="vehicle2">Hatchback</label>
        </div>
  <div class = "col-lg-3 col-sm-6 col-md-6">
  <input type="checkbox" id="vehicle3" name="cartype[]" value="Sedan" style = "background-color : transparent;">
  <label for="vehicle3">Sedan</label>
  </div>
  <div class = "col-lg-3 col-sm-6 col-md-6">
  <input type="checkbox" id="vehicle4" name="cartype[]" value="MUV" style = "background-color : transparent;">
  <label for="vehicle4">MUV</label>
  </div>
      </div>
  <div class = "row row3">
    <div class = "col-lg-12 col-md-12 col-sm-12">
    <textarea id="address" name = "address" rows="3" placeholder="Address" required style = "width:80%;"></textarea>
    </div>
</div>

  <button type="submit" class="btn btn-danger" style = "font-weight: bold; font-size: 18px; padding: 10px 50px; margin-top : 10px; margin-left: 42%; background-color : rgb(255, 64, 0);">Submit</button>
</form>
<?php 
$servername = "localhost"; 
$username = "root"; 
$password = ""; 
$database = "carsdekho";
$conn = mysqli_connect($servername, $username, $password, $database); 
if ($_SERVER['REQUEST_METHOD'] == "POST"){ 
    $name = $_POST["name"]; 
    $phone_number = $_POST['phonenumber']; 
    $email = $_POST['email'];
    $address = $_POST['address'];
    $cartype = $_POST['cartype'];
    $allCars = implode(", ",$cartype);
    $sql = "INSERT INTO `contact_form` (`name`, `phone_number`, `email`, `address`, `car_types`) VALUES ('$name', '$phone_number', '$email', '$address', '$allCars');"; 
    $result = mysqli_query($conn, $sql);
} 
?>
</div>
</div>
<!-- BootStrap js -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>