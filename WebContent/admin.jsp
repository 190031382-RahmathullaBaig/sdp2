<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Miles</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/s3Slider.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="content/js/jquery.min.js"></script>
<script src="content/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        $('.nav-link dropdown-toggle').dropdown();
    });
</script>
<style>
    /*Nav bar*/
    .bs-example{
        margin: 1px;
        font-size: 23px;
        background-color: #FFFFFF;
    }
.car {
  width: 80px;
  height: 38px;
}
/*about*/
.about-section {
 
 text-align: center;
 background-color: #FFFFFF;
 color: rgb(7, 6, 6);
 font-family: Arial, Helvetica, sans-serif;
 line-height: 1.5;
}
/*contact us*/
body {
  font-family: Arial, Helvetica, sans-serif;
}

.contactt {
  color:black;
}
* {
  box-sizing: border-box;
}

/* Style inputs */
input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #f4f8f4;
}

/* Style the container/contact section */
.container {
  border-radius: 20px;
  background-color: #FFFFFF;
  padding: 10px;
}

/* Create two columns that float next to eachother */
.column {
  float: left;
  width: 50%;
  margin-top: 6px;
  padding: 20px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}

/*footer*/
.footer-basic {
  padding:40px 0;
  background-color:#ffffff;
  color:#4b4c4d;
}

.footer-basic ul {
  padding:0;
  list-style:none;
  text-align:center;
  font-size:18px;
  line-height:1.6;
  margin-bottom:0;
}

.footer-basic li {
  padding:0 10px;
}

.footer-basic ul a {
  color:inherit;
  text-decoration:none;
  opacity:0.8;
}

.footer-basic ul a:hover {
  opacity:1;
}

.footer-basic .social {
  text-align:center;
  padding-bottom:25px;
}

.footer-basic .social > a {
  font-size:24px;
  width:40px;
  height:40px;
  line-height:40px;
  display:inline-block;
  text-align:center;
  border-radius:50%;
  border:1px solid #ccc;
  margin:0 8px;
  color:inherit;
  opacity:0.75;
}

.footer-basic .social > a:hover {
  opacity:0.9;
}

.footer-basic .copyright {
  margin-top:15px;
  text-align:center;
  font-size:13px;
  color:#aaa;
  margin-bottom:0;
}

</style>
<script>
  window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    document.getElementById("navbar").style.top = "0";
  } else {
    document.getElementById("navbar").style.top = "-50px";
  }
}
</script>
</head>
<body>
<!-- Nav bar -->
<div class="bs-example">
<nav class="navbar navbar-expand-lg py-3 navbar-light bg-light">
  <a href="#" class="navbar-brand">
            <img src="./images/photo10.png"  alt="CoolBrand" class="car">
        </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Services</a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="addcar.jsp">Add a car</a>
          <a class="dropdown-item" href="list.jsp">List of cars</a>
        </div>
      </li>
      </ul>
      <div class="navbar-nav ml-auto">
                <a href="#" class="nav-item nav-link">Logout</a>
            </div>
  </div>
</nav>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</div>
<!-- image slider -->
<div class="slider">
  <div class="slide current">
    <div class="content">
      <h1>Slide One</h1>
    </div>
  </div>
  <div class="slide">
    <div class="content">
      <h1>Slide Two</h1>
    </div>
  </div>
  <div class="slide">
    <div class="content">
      <h1>Slide Three</h1>
    </div>
  </div>
</div>
<div class="buttons">
  <button id="prev"><i class="fas fa-arrow-left"></i></button>
  <button id="next"><i class="fas fa-arrow-right"></i></button>
</div>

<script src="main.js"></script>
<!-- about us -->
<div class="about-section" id="about">
  <br></br>
  <h1>About Us</h1>
  <img src="./images/photo10.png" height=100px alt="Italian Trulli">
  <br></br>
  <p>
    The range of services includes short-term car rentals, long term car rentals, long tern car lease, airport services, multi city journeys, local journeys- half day and full day usage as directed by customer.
    Through cutting age technology, we provide great deal in car rental with the guaranteed lowest price. We constantly provide new, clean cars with professional and experienced chauffeurs. 
    Our 24x7 online reservation system offer you to hire car any where in MILES by just on a single mouse click. Bookings at Miles.com India can be made by logging on to the website, calling the 24x7 customer care center or walking into any of the cabgurgaon.com lounges. 
    As an online car rental company, MILES acts as a one-stop shop for any kind of car rental needs.
  </p>
  <br></br>
</div>

<!-- contact us-->
<div class="container" id="contact">
  <div class="contactt" style="text-align:center" >
    <h2>Contact Us</h2>
    <p>Swing by for a cup of coffee, or leave us a message:</p>
  </div>
  <div class="row">
    <div class="column">
      <a>
      <img src="./images/photo10.png"   width="550" height="450">
    </a>
    </div>
    <div class="column">
      <form action="/action_page.php">
        <label for="fname">Name</label>
        <input type="text" id="fname" name="firstname" placeholder="Name">
        <label for="lname">Email</label>
        <input type="text" id="lname" name="lastname" placeholder="Email">
        <label for="country">Country</label>
        <select id="country" name="country">
          <option value="australia">Admin</option>
          <option value="canada">User</option>
        </select>
        <label for="subject">Subject</label>
        <textarea id="subject" name="subject" placeholder="Write something.." style="height:170px"></textarea>
        <input type="submit" value="Submit">
      </form>
    </div>
  </div>
</div>
<!--footer-->
<div class="footer-basic">
  <footer>
      <div class="social">
        <a href="https://www.instagram.com/?hl=en"><i class="fa fa-instagram" aria-hidden="true"></i></a>
        <a href="#"><i class="fa fa-snapchat" aria-hidden="true"></i></a>
        <a href="#"><i class="fa fa-twitter-square" aria-hidden="true"></i></a>
        <a href="#"><i class="fa fa-facebook-square" aria-hidden="true"></i></a>
      </div>
      <ul class="list-inline">
          <li class="list-inline-item"><a href="#">Home</a></li>
          <li class="list-inline-item"><a href="#">Services</a></li>
          <li class="list-inline-item"><a href="#">About</a></li>
          <li class="list-inline-item"><a href="#">Terms</a></li>
          <li class="list-inline-item"><a href="#">Privacy Policy</a></li>
      </ul>
  </footer>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>