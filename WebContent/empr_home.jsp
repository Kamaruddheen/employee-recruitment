<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Home | Employer</title>
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

        .tab {
            display: none;
        }

        .form1 {
            width: 100%;
            padding: 10px;
            margin: 0 auto;
            margin-top: 50px;
            margin-bottom: 50px;
            background-color: #ffffffcc;
        }

        .resizing {
            resize: none;
            overflow-y: auto;
        }

        .align-rt {
            text-align: right;
        }
    </style>
</head>

<body>
    <div id="navigator" style="color: red;">
        Navigation Bar is not inserted correctly
    </div>
    <script>
        //to load navigator for all
        $.get("empr_navig.jsp", function (data) {
            $("#navigator").replaceWith(data);
        });
    </script>
    
    <div class="container p-2" id="cont1" style="background-color: #ffffff19;">
        <div class="container" style="padding-top: 0.5px;">
            <div class="card mb-3">
                <img src="images/slide2.png" class="card-img-top" alt="Carrer">
                <div class="container">
                    <div class="card-img-overlay text-white" style="top: 90px;left: 150px;">
                        <h1 class="card-title"><b>PCS</b></h1>
                        <h5 class="card-text">Make the world a better place with us.</h5>
                        <a href="#details"><button class="btn btn-primary shadow" style="font-size: 22.5px;">Explore
                                More</button></a>
                    </div>
                </div>
                <div class="container" id="details" style="margin-top: 20px; margin-bottom: 20px;">
                    <div class="card form-group shadow-sm">
                        <div class="card-body">
                            <h3 class="card-title">SMART-IoT (Research)</h3>
                            <h5 class="card-text">When AI and IoT get smarter together, you get more actionable
                                Insights,
                                better customer experiences, improved security and new ways to monetize data.</h5>
                            <p class="card-text"><small class="text-muted">Last updated 2 mins ago</small>
                            </p>
                        </div>
                    </div>
                    <div class="card form-group shadow-sm">
                        <div class="card-body">
                            <h3 class="card-title">AI potential unleashed (Perspectives)</h3>
                            <h5 class="card-text">As pressure mounts to embrace AI, many businesses struggle to find its
                                true potential. To harness data and deliver unique experiences, start with modern data
                                architecture.</h5>
                            <p class="card-text"><small class="text-muted">Last updated 5 mins ago</small>
                            </p>
                        </div>
                    </div>
                    <div class="card form-group shadow-sm">
                        <div class="card-body">
                            <h3 class="card-title">Career re-cycling is the future of work (WhitePapers)</h3>
                            <h5 class="card-text">Find out why businesses and employees win when implementing fluid,
                                continuous learning cycles. Ongoing learning enables employees to keep pace with
                                changing
                                job skills and employers to support their staff over the course of longer, more diverse
                                careers.</h5>
                            <p class="card-text"><small class="text-muted">Last updated 5 hours ago</small>
                            </p>
                        </div>
                    </div>
                    <div class="card form-group shadow-sm">
                        <div class="card-body">
                            <h3 class="card-title">Passing the test (Analyst Accolade)</h3>
                            <h5 class="card-text">Named a leader in the Gartner Magic Quadrant for Application Testing
                                Services, Cognizant also scored the highest on use cases focused on cloud applications,
                                RPA
                                and IoT technologies</h5>
                            <p class="card-text"><small class="text-muted">Last updated 1 day ago</small>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="form-group">
                <div class="card text-center bg-primary text-white">
                    <h3>Testimony</h3>
                </div>
            </div>
            <div class="row row-cols-1 row-cols-md-3">
                <div class="col mb-4">
                    <div class="card shadow">
                        <div class="card-body">
                            <p class="card-text">"There's no need to be intimidated by online marketing. PCS for Growth
                                is
                                the prefect guide to help you learn how to use the internet to successfully grow your
                                business."</p>
                            <div class="dropdown-divider"></div>
                            <h5 class="card-title">By Mike McDerment</h5>
                            <small class="text-muted">Co-Founder & CEO</small>
                        </div>
                    </div>
                </div>
                <div class="col mb-4">
                    <div class="card shadow">
                        <div class="card-body">
                            <p class="card-text">"I recommend PCS for Growth to anyone who needs a no-nonsense,
                                cutting-edge approach to their search marketing efforts."</p>
                            <div class="dropdown-divider"></div>
                            <h5 class="card-title">By Kelsey Jones</h5>
                            <small class="text-muted">Executive Editor</small>
                        </div>
                    </div>
                </div>
                <div class="col mb-4">
                    <div class="card shadow">
                        <div class="card-body">
                            <p class="card-text">"If you simply apply what you learn from this book and commit to PCS
                                for
                                the long haul, you will generate more business and more leads, period."</p>
                            <div class="dropdown-divider"></div>
                            <h5 class="card-title">By Brian Clark</h5>
                            <small class="text-muted">CEO, Ranmaker Digital</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container form-group">
            <div class="form-group">
                <div class="card text-center bg-primary text-white">
                    <h3>Our Services</h3>
                </div>
            </div>
            <div class="card-deck">
                <div class="card shadow">
                    <div class="text-center">
                        <div style="background-color:rgba(224, 224, 224, 0.333)">
                            <img src="images/it.png" class="card-img-top" style="width: 150px; height: 130px">
                        </div>
                        <br>&nbsp;
                        <h3 class="card-title">It Administration</h3>
                        <p class="card-text">We are responsible for the upkeep, configuration, and reliable operation of
                            client computer systems, servers, and data security systems.
                        </p>
                    </div>
                </div>
                <div class="card shadow">
                    <div class="text-center">
                        <img src="images/project.png" class="card-img-top" style="width: 150px; height: 130px">
                        <br>&nbsp;
                        <h3 class="card-title">Project Management</h3>
                        <p class="card-text"> We are initiating, planning, executing, controlling, and closing the work
                            of a
                            team to achieve specific goals and meet specific success criteria at the specified time.</p>
                    </div>
                </div>
                <div class="card shadow">
                    <div class="text-center">
                        <img src="images/opti.png" class="card-img-top" style="width: 150px; height: 130px">
                        <br>&nbsp;
                        <h3 class="card-title">Process Optimization</h3>
                        <p class="card-text">Discipline of adjusting a process so as to optimize some specified set of
                            parameters without violating some constraint.</p>
                    </div>
                </div>
                <div class="card shadow">
                    <div class="text-center">
                        <img src="images/finance.png" class="card-img-top" style="width: 150px; height: 130px">
                        <br>&nbsp;
                        <h3 class="card-title">finance management</h3>
                        <p class="card-text">We focuse on ratios, equities and debts. It is useful for
                            distribution of dividend, capital raising, hedging and looking after fluctuations in foreign
                            currency and product cycles.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container p-2 tab" id="cont2" style="background-color: #ffffff19;">
        <div class="container" style="margin-top: 20px; margin-bottom: 20px;">
            <div class="card form-group shadow-lg">
                <div class="card-body text-center">
                    <h5 class="card-title">Post a Job!!!</h5>
                    <div class="dropdown-divider"></div>
                </div>
            </div>
            <div class="card form-group shadow-lg" id="job">
                <div class="card-body">
                    <form action="employer_jobpost" method="post" class="needs-validation form1 shadow-lg" novalidate>
                        <div class="form-group">
                            <h5 class="card-title"><b>Title : </b></h5>
                            <input type="text" class="form-control" id="topic" name="topic" placeholder="Title" required>
                        </div>
                        <h5 class="card-title"><b>Description : </b></h5>
                        <textarea name="descrip" id="" cols="50" rows="5" class="form-control resizing"
                            placeholder="Description..." id="descrip" required></textarea>
                        <div class="card-body text-right">
                            <button type="submit" class="btn btn-primary">Submit</button>
                            <button type="reset" class="btn btn-danger">Reset</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script>
        function __(x) {
            return document.getElementById(x);
        }

        function dis_post() {
            __('cont1').style.display = "none";
            __('cont2').style.display = "block";
            __('cont4').style.display = "none";
        }

    </script>

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