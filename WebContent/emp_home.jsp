<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Home | Employee</title>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie-edge">
    <!--Bootstrap css import-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <!--Jquery import-->
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <style>
        html {
            scroll-behavior: smooth;
        }

        .form1 {
            width: 100%;
            padding: 10px;
            margin: 0 auto;
            margin-top: 50px;
            margin-bottom: 50px;
            background-color: #ffffffcc;
        }
    </style>
</head>

<body>
	<div id="navigator" style="color: red;">
        Navigation Bar is not inserted correctly
    </div>
    <script>
        //to load navigator for all
        $.get("emp_navig.jsp", function (data) {
            $("#navigator").replaceWith(data);
        });
    </script>
    
    <div class="container p-2" id="cont1" style="background-color: #ffffff00;">
        <div class="card container p-1" style="align-items: center;background-color: #ffffff71;">
            <img src="images/carrer.png" class="card-img-top p-1" style="max-width: 1090px;" alt="Job">
            <div class="container">
                <div class="card-img-overlay text-white" style="top: 18%;left: 25%;">
                    <h5 class="card-text text-light">Go Now AND</h5>
                    <h1 class="card-title"><b>Search Your Job Today!!!</b></h1>
                    <a href="#search"><button class="btn btn-dark shadow" style="font-size: 22.5px;">Search&nbsp;
                            &#8595</button></a>
                </div>
            </div>
            <div class="form-group container">
                <div class="card text-center text-white" style="background-color: rgb(33, 25, 67);margin-top: 3.7%;">
                    <h3 id="search">Jobs Available</h3>
                </div>
            </div>
            
            <div class="container card-deck" style="margin-top: 10px; margin-bottom: 10px;">
                <div class="card bg-dark text-white">
                    <div class="card-body">
                        <h3 class="card-title">Software Engineer</h3>
                        <h5 class="card-text">The Work you will do have a direct effect on business and the
                            community. At PCS, you will make an impact. <a id="alert" class="text-primary"
                                onclick="message()">Apply now</a>
                        </h5>
                        <p class="card-text">Last updated 10 mins ago</p>
                    </div>
                </div>
                <div class="card bg-dark text-white">
                    <div class="card-body">
                        <h3 class="card-title">Full Stack Developer</h3>
                        <h5 class="card-text">Developer responsibilities include designing user interactions on
                            websites,
                            developing servers and databases for website functionality and coding for mobile
                            platforms. <a id="alert" class="text-primary" onclick="message()">Apply now</a></h5>
                        <p class="card-text">Last updated 10 mins ago</p>
                    </div>
                </div>
            </div>
            <div class="container card-deck" style="margin-top: 10px; margin-bottom: 10px;">
                <div class="card bg-dark text-white">
                    <div class="card-body">
                        <h3 class="card-title">Game Developer</h3>
                        <h5 class="card-text">Creating visual content for the game and writing code to implement all the
                            game's features and functionality design, and produce video games for Computers, Mobile
                            devices. <a id="alert" class="text-primary" onclick="message()">Apply now</a></h5>
                        <p class="card-text">Last updated 2 days ago</p>
                    </div>
                </div>
                <div class="card bg-dark text-white">
                    <div class="card-body">
                        <h3 class="card-title">Machine Learning</h3>
                        <h5 class="card-text">Designing and developing machine learning and deep learning systems.
                            Running machine learning tests and experiments. Implementing appropriate ML
                            algorithms. <a id="alert" class="text-primary" onclick="message()">Apply now</a></h5>
                        <p class="card-text">Last updated 3 days ago</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="footer bg-dark">
        <div class="container">
            <div class="card-group text-center">
                <div class="card bg-dark text-white form-group" id="contact">
                    <h5 class="hcolor">Contact Us</h5>
                    <p>
                        <h5>Phone Number : <small>+91 888-999-7859</small></h5>
                        <h5>Address : <small>11, New Street, Ghandhipuram,</small></h5>
                        <h5><small>Coimbatore - 641001.</small></h5>
                        <h5>Email : <small>pcs@gmail.com</small></h5>
                    </p>
                </div>
                <div class="card bg-dark text-white container" id="about">

                    <h5 class="hcolor">About</h5>

                    <p>Professionet Consultancy Services (PCS) is a business consultancy
                        that has established itself as a renowned service provider of a
                        wide range of business services to its clients.Some of the prominet
                        services provided by us are resource management, process Optimization,
                        IT administration, change management, project management, finance management and risk
                        management.
                    </p>
                </div>
            </div>
        </div>
    </footer>

</body>

</html>