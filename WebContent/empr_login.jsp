<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie-edge">
    <title>Login Form | Employer</title>
    <!--Jquery import-->
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <!--Bootstrap css import-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <style>
        form {
            width: 100%;
            max-width: 330px;
            padding: 15px;
            margin: 0 auto;
            margin-top: 190px;
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
        $.get("navig.html", function (data) {
            $("#navigator").replaceWith(data);
        });
    </script>
    
    <div class="container ">
        <form action="employer_login" method="post" class="needs-validation" novalidate>
            <div class="container">
                <div class="row form-group">
                    <label for="email ">Email :</label>
                    <input type="email" id="email" name="email" class="form-control" placeholder="Email address..." required
                        autofocus>
                    <div class="invalid-feedback">Enter a Email Address</div>
                </div>
                <div class="row form-group">
                    <label for="password">Password :</label>
                    <input type="password" name="password" id="password" placeholder="Password..." class="form-control"
                        title="Minimum 8 Charaters" minlength="8" required>
                    <div class="invalid-feedback">Enter a Password</div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="form-group">
                            <button type="submit" class="btn btn-lg btn-block btn-primary">Login</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>


    <script>
        var form = document.querySelector('.needs-validation');

        form.addEventListener('submit', function (event) {
            if (form.checkValidity() === false) {
                event.preventDefault();
                event.stopPropagation();
            }
            form.classList.add('was-validated');
        })
    </script>

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>

</body>

</html>