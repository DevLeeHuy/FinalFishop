<%@page import="java.util.List"%>
<%@page import = "model.*" %>
<%@page import = "javax.util.*" %>
<%@page import = "dao.ItemDB" %>
<%@page import = "javax.persistence.*" %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>

    <head>
        <title>Aquarium Store</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
              integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.css" />
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
              integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" />
        <link rel="stylesheet" href="CSS/logo.css" />

        <link rel="stylesheet" href="CSS/about.css" />

        <link rel="stylesheet" href="CSS/aquaknow.css">
        <link rel="stylesheet" href="CSS/fishtank.css">
        <link rel="stylesheet" href="CSS/style.css" />
    </head>

    <body>
        <!-- Header -->
        <div id="header">
            <div class="banner-bg"></div>

            <div class="h-container">
                <div class="h-left">
                    <ul>
                        <li><a href="Sign up Form/signIn.jsp">SIGN IN</a></li>
                        <li><a href="Sign up Form/signUp.jsp">SIGN UP</a></li>
                        <li><a href="#">CONTACT</a></li>
                    </ul>
                </div>
                <div class="h-right">
                    <span><a href="#"><i class="fab fa-facebook-square"></i></a></span>
                    <span><a href="#"><i class="fab fa-google-plus-square"></i></a></span>
                    <span><a href="#"><i class="fab fa-instagram-square"></i></a></span>
                </div>
            </div>
            <div class="h-banner">
                <div class="banner-content">
                    <h1></h1>
                    <a class="" href="#navigation"><button class="btnToProducts"><i class="fas fa-fish"></i>

                        </button></a>
                </div>
            </div>
        </div>

        <!-- NavBar -->
        <nav class="myNavbar navbar navbar-expand-xl navbar-light sticky-top pr-1" id="navigation">
            <a class="navbar-brand" href="#">
                <div class="logo">
                    <div class="image-Logo"></div>
                    <div class="brand">
                        <h1>7COLORS</h1>
                        <h1>7COLORS</h1>
                    </div>
                </div>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" id="navlink" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" id="navlink1" href="#aquaknow" aria-haspopup="true" aria-expanded="false">
                            AQUATIC KNOWLEDGE
                        </a>

                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            AQUATIC ACCESSORIES
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Fish</a>
                            <a class="dropdown-item" href="#">Shrimp</a>
                            <!-- <div class="dropdown-divider"></div> -->
                            <a class="dropdown-item" href="#">Turtle</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="navlink2" href="#fishtank">FISHTANK SAMPLE</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="navlink2" href="#about-us">About</a>
                    </li>

                    <!-- <li class="nav-item">
                            <a
                              class="nav-link disabled"
                              href="#"
                              tabindex="-1"
                              aria-disabled="true"
                              >Disabled</a
                            >
                          </li> -->
                </ul>
                <form class="form-inline searchbar my-2 my-lg-0 mr-2">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" />
                    <button class="btn btn-outline-light my-2 my-sm-0" type="submit">
                        Search
                    </button>
                </form>
            </div>
        </nav>
        <!--End NavBar -->

        <!-- Contents -->
        <div class="row contents">
            <!-- <div class="col-1"></div> -->

            <div class="col-2 mt-2 filter">
                <div class="category">
                    <div class="category-text text-uppercase">
                        <i class="fa fa-list"></i> Categories
                    </div>
                    <div class="list-group list-category showCategory" id="list-tab" role="tablist">
                        <div class="categories-list">
                            <a class="category-item categories-list" id="list-home-list " data-toggle="list"
                               href="#list-home" role="tab" aria-controls="home">Betta Fish</a>
                        </div>
                        <div class="categories-list">
                            <a class="category-item categories-list" id="list-profile-list " data-toggle="list"
                               href="#list-profile" role="tab" aria-controls="profile">Freshwater Fish</a>
                        </div>
                        <div class="categories-list">
                            <a class="category-item categories-list" id="list-messages-list " data-toggle="list"
                               href="#list-messages" role="tab" aria-controls="messages">Shrimp</a>
                        </div>
                        <div class="categories-list">
                            <a class="category-item categories-list" id="list-settings-list " data-toggle="list"
                               href="#list-settings" role="tab" aria-controls="settings">Pond Fish</a>
                        </div>
                        <div class="categories-list">
                            <a class="category-item categories-list" id="list-settings-list " data-toggle="list"
                               href="#list-settings" role="tab" aria-controls="settings">Saltwater Fish</a>
                        </div>
                    </div>
                </div>
                <div class="category priceRange">
                    <div class="category-text text-uppercase category-tag">
                        <label for=""><i class="fa fa-list"></i> Price</label>

                        <i class="fa fa-plus icon"></i>
                    </div>
                    <div class="list-group list-category" id="list-tab" role="tablist">
                        <label for="primary" class="btn btn-primary category-checkbox">
                            <input type="checkbox" id="primary" /> Less than $10</label>
                        <label for="info" class="btn btn-info category-checkbox">
                            <input type="checkbox" id="info" /> $10 to $25</label>
                        <label for="success" class="btn btn-success category-checkbox"><input type="checkbox"
                                                                                              id="success" /> $25 to
                            $50</label>
                        <label for="warning" class="btn btn-warning category-checkbox">
                            <input type="checkbox" id="warning" /> $50 to $100</label>
                        <label for="danger" class="btn btn-danger category-checkbox"><input type="checkbox" id="danger" />
                            More than
                            $100
                        </label>
                    </div>
                </div>
                <div class="category Brand">
                    <div class="category-text text-uppercase category-tag">
                        <label for=""><i class="fa fa-list"></i> Brand</label>
                        <i class="fa fa-plus icon"></i>
                    </div>
                    <div class="list-group list-category" id="list-tab" role="tablist">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" placeholder="Search this blog" />
                            <div class="input-group-append">
                                <button class="btn btn-secondary" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div>
                        </div>
                        <label for="primary" class="category-item category-checkbox">
                            <input type="checkbox" id="primary" /> Less than $10</label>
                        <label for="info" class="category-item category-checkbox">
                            <input type="checkbox" id="info" /> $10 to $25</label>
                        <label for="success" class="category-item category-checkbox"><input type="checkbox" id="success" />
                            $25 to
                            $50</label>
                        <label for="warning" class="category-item category-checkbox">
                            <input type="checkbox" id="warning" /> $50 to $100</label>
                        <label for="danger" class="category-item category-checkbox"><input type="checkbox" id="danger" />
                            More than
                            $100
                        </label>
                    </div>
                </div>
            </div>


            <div class="col products">


                <button type="button" class="btn btn-outline-info btn-soft-mobile">
                    Sort & Filter
                </button>

                <div class="filter-mobile">
                    <h1>Sort & Filter</h1>
                    <div class="closeFilterMobile" onclick="this.parentElement.style.display = 'hidden'">
                        <i class="fas fa-times" style="cursor: pointer"></i>
                    </div>
                    <select name="" id="">
                        <option value="Most popular">Most popular</option>
                    </select>
                    <div class="category">
                        <div class="category-text text-uppercase">
                            <i class="fa fa-list"></i> Categories
                        </div>
                        <div class="list-group list-category showCategory" id="list-tab" role="tablist">
                            <div class="categories-list">
                                <a class="category-item categories-list" id="list-home-list " data-toggle="list"
                                   href="#list-home" role="tab" aria-controls="home">Betta Fish</a>
                            </div>
                            <div class="categories-list">
                                <a class="category-item categories-list" id="list-profile-list " data-toggle="list"
                                   href="#list-profile" role="tab" aria-controls="profile">Freshwater Fish</a>
                            </div>
                            <div class="categories-list">
                                <a class="category-item categories-list" id="list-messages-list " data-toggle="list"
                                   href="#list-messages" role="tab" aria-controls="messages">Invertebrates</a>
                            </div>
                            <div class="categories-list">
                                <a class="category-item categories-list" id="list-settings-list " data-toggle="list"
                                   href="#list-settings" role="tab" aria-controls="settings">Pond Fish</a>
                            </div>
                            <div class="categories-list">
                                <a class="category-item categories-list" id="list-settings-list " data-toggle="list"
                                   href="#list-settings" role="tab" aria-controls="settings">Saltwater Fish</a>
                            </div>
                        </div>
                    </div>
                    <div class="category">
                        <div class="category-text text-uppercase category-tag">
                            <label for=""><i class="fa fa-list"></i> Price</label>

                            <i class="fa fa-plus icon"></i>
                        </div>
                        <div class="list-group list-category" id="list-tab" role="tablist">
                            <label for="primary" class="btn btn-primary category-checkbox">
                                <input type="checkbox" id="primary" /> Less than $10</label>
                            <label for="info" class="btn btn-info category-checkbox">
                                <input type="checkbox" id="info" /> $10 to $25</label>
                            <label for="success" class="btn btn-success category-checkbox"><input type="checkbox"
                                                                                                  id="success" /> $25 to
                                $50</label>
                            <label for="warning" class="btn btn-warning category-checkbox">
                                <input type="checkbox" id="warning" /> $50 to $100</label>
                            <label for="danger" class="btn btn-danger category-checkbox"><input type="checkbox"
                                                                                                id="danger" /> More than
                                $100
                            </label>
                        </div>
                    </div>
                    <div class="category">
                        <div class="category-text text-uppercase category-tag">
                            <label for=""><i class="fa fa-list"></i> Brand</label>
                            <i class="fa fa-plus icon"></i>
                        </div>
                        <div class="list-group list-category" id="list-tab" role="tablist">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" placeholder="Search this blog" />
                                <div class="input-group-append">
                                    <button class="btn btn-secondary" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </div>
                            </div>
                            <label for="primary" class="category-item category-checkbox">
                                <input type="checkbox" id="primary" /> Less than $10</label>
                            <label for="info" class="category-item category-checkbox">
                                <input type="checkbox" id="info" /> $10 to $25</label>
                            <label for="success" class="category-item category-checkbox"><input type="checkbox"
                                                                                                id="success" /> $25 to
                                $50</label>
                            <label for="warning" class="category-item category-checkbox">
                                <input type="checkbox" id="warning" /> $50 to $100</label>
                            <label for="danger" class="category-item category-checkbox"><input type="checkbox"
                                                                                               id="danger" /> More than
                                $100
                            </label>
                        </div>
                    </div>
                </div>
                <!-- End Filter mobile -->
                <%
                    List<Items> listItems = ItemDB.getAllItems();
                %>
                <div class="items-container">
                    <% for (Items item : listItems) {%>
                    <div class="items">
                        <img src="<%= item.getItemImageData()%>" alt="Fish here">
                        <div class="btnitem">
                            <h1><%=item.getItemName()%></h1>
                            <p class="price"><%=item.getItemPrice()%> </p>
                            <div class="btnPurchase">
                                <input type="button" class="btn btn-primary mr-2" value="Add to cart">
                                <input type="button" class="btn btn-outline-primary " value="Buy now">
                            </div>
                        </div>


                    </div>

                    <% }%>
                </div>
            </div>
        </div>
        <!-- End Contents -->


    </div>
    <div class="product-cart-section">
        <h2>Special Offers </h2>
        <div class="product-cart">

            <div class="card">
                <img class="mySlides" src="img/black-guppy.jpg">
                <h1>Black Guppy</h1>
                <p class="price">$19.99</p>
                <p><button>Add to Cart</button></p>
            </div>
            <div class="card">
                <img class="mySlides" src="img/White-Guppy.jpg">
                <h1>White Guppy</h1>
                <p class="price">$19.99</p>
                <p><button>Add to Cart</button></p>
            </div>
            <div class="card">
                <img class="mySlides" src="img/Yellow-Laser-Tail.jpg">
                <h1>Yellow Guppy</h1>
                <p class="price">$19.99</p>
                <p><button>Add to Cart</button></p>
            </div>

        </div>
    </div>
    <div class="newcontainer" id=aquaknow>
        <div class="newsblog">

            <div class="newsheadtit">
                <h3>Aquatic Knowledge</h3>
            </div>
            <div class="news">
                <div class="bantin">
                    <img src="img/bantinimgpH.jpg" alt="">
                    <a style="text-decoration: none;"
                       href="https://thuysinhtim.vn/cach-dieu-chinh-ph-cho-ho-thuy-sinh-hieu-qua-va-an-toan">
                        <div class="tieudenew">
                            <p>Writer: Meow</p>
                            <h1>Adjusting the pH for an efficient and safe aquarium</h1>
                            <p>Description here </p>
                        </div>
                    </a>
                </div>
                <div class="bantin">
                    <img src="img/bantinimgpH.jpg" alt="">
                    <a style="text-decoration: none;"
                       href="https://thuysinhtim.vn/cach-dieu-chinh-ph-cho-ho-thuy-sinh-hieu-qua-va-an-toan">
                        <div class="tieudenew">
                            <p>Writer: Meow</p>
                            <h1>Adjusting the pH for an efficient and safe aquarium</h1>
                            <p>Description here </p>
                        </div>
                    </a>
                </div>
                <div class="bantin">
                    <img src="img/bantinimgpH.jpg" alt="">
                    <a style="text-decoration: none;"
                       href="https://thuysinhtim.vn/cach-dieu-chinh-ph-cho-ho-thuy-sinh-hieu-qua-va-an-toan">
                        <div class="tieudenew">
                            <p>Writer: Meow</p>
                            <h1>Adjusting the pH for an efficient and safe aquarium</h1>
                            <p>Description here </p>
                        </div>
                    </a>
                </div>

            </div>
            <div class="newsblog" id="aquaknow1">

                <div class="news">
                    <div class="bantin">
                        <img src="img/bantinimgpH.jpg" alt="">
                        <a style="text-decoration: none;"
                           href="https://thuysinhtim.vn/cach-dieu-chinh-ph-cho-ho-thuy-sinh-hieu-qua-va-an-toan">
                            <div class="tieudenew">
                                <p>Writer: Meow</p>
                                <h1>Adjusting the pH for an efficient and safe aquarium</h1>
                                <p>Description here </p>
                            </div>
                        </a>
                    </div>
                    <div class="bantin">
                        <img src="img/bantinimgpH.jpg" alt="">
                        <a style="text-decoration: none;"
                           href="https://thuysinhtim.vn/cach-dieu-chinh-ph-cho-ho-thuy-sinh-hieu-qua-va-an-toan">
                            <div class="tieudenew">
                                <p>Writer: Meow</p>
                                <h1>Adjusting the pH for an efficient and safe aquarium</h1>
                                <p>Description here </p>
                            </div>
                        </a>
                    </div>
                    <div class="bantin">
                        <img src="img/bantinimgpH.jpg" alt="">
                        <a style="text-decoration: none;"
                           href="https://thuysinhtim.vn/cach-dieu-chinh-ph-cho-ho-thuy-sinh-hieu-qua-va-an-toan">
                            <div class="tieudenew">
                                <p>Writer: Meow</p>
                                <h1>Adjusting the pH for an efficient and safe aquarium</h1>
                                <p>Description here </p>
                            </div>
                        </a>
                    </div>

                </div>
            </div>
            <div class="fishblog" id="fishtank">
                <div class="fblogtit">
                    <h3>Beautiful fishtank sample</h3>
                </div>

                <div class="fblocknews">
                    <img src="img/biotop.jpg" alt="">
                    <a href="https://thuysinhtim.vn/mau-be-biotop-su-dung-da-haiwan-sunset">The biotope tank model using
                        hawaiian
                        sunset rock</a>
                    <p>We would like to introduce to you a beautiful sample Biotop tank.
                        The tank uses high quality ingredients to setup,
                        bringing the mysterious beauty of the desert...</p>
                    <div class="video">
                        <h5>INSTRUCTION VIDEO</h5>
                        <iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/9Z5Rf5s8fm0"
                                frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                allowfullscreen></iframe>
                    </div>
                </div>
                <div class="fblocknews">
                    <img src="img/minideban.jpg" alt="">
                    <a href="https://thuysinhtim.vn/mau-be-thuy-sinh-nho-de-ban-1">Small table-top aquarium</a>
                    <p>A compact mini aquarium for office desk with reasonable price, it can help you decorate your
                        place,
                        relax, reduce stress during stressful working days...</p>
                    <div class="video">
                        <h5>INSTRUCTION VIDEO</h5>
                        <iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/YzhrB6lqQUY"
                                frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                allowfullscreen></iframe>
                    </div>
                </div>
            </div>
            <div class="aboutcontent" id="about-us">
                <div class="abtitle">
                    <h2>Welcome to our site</h2>
                    <div class="underline1">
                        <div class="chunder"></div>
                        <div class="chunder"></div>
                        <div class="chunder"></div>
                        <div class="chunder"></div>
                        <div class="chunder"></div>
                    </div>
                </div>

                <div class="absubcontent">
                    <div class="abinfo">
                        <img src="img/thay.jpg" alt="" />
                    </div>
                    <div class="abinfo">
                        <img src="img/tu.jpg" alt="" />
                    </div>
                    <div class="abinfo">
                        <img src="img/hoang.jpg" alt="" />
                    </div>
                    <div class="abinfo">
                        <img src="img/khang.jpg" alt="" />
                    </div>
                </div>
                <div class="textgroup">
                    <p>
                        Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
                        commodo ligula eget dolor. Aenean massa. Cum sociis natoque
                        penatibus et magnis dis parturient montes, nascetur ridiculus mus.
                        Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.
                        Nulla consequat massa quis enim. Donec pede justo, fringilla vel,
                        aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut,
                        imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede
                        mollis pretium. Integer tincidunt.
                    </p>
                </div>
                <div class="abicon">
                    <ul>
                        <li class="facebook">
                            <i class="fa fa-facebook fa-2x" aria-hidden="true"></i>
                        </li>
                        <li class="instagram">
                            <i class="fa fa-instagram fa-2x" aria-hidden="true"></i>
                        </li>
                        <li class="google">
                            <i class="fa fa-google fa-2x" aria-hidden="true"></i>
                        </li>
                    </ul>
                </div>
            </div>
            <footer class="page-footer font-small footerne pt-4">
                <!-- Footer Links -->
                <div class="container-fluid text-center text-md-left">

                    <!-- Grid row -->
                    <div class="row">
                        <!-- Grid column -->

                        <div class="col-md-3 mt-md-0 mt-3">
                            <!-- Content -->
                            <div style="width: 100px;height: 30px;display: flex;justify-content: center">
                                <div class="logo brandft">
                                    <div class="brand">
                                        <h1 style="font-size: 25px;top:0px;">7COLORS</h1>
                                        <h1 style="font-size: 25px;top:0px;">7COLORS</h1>
                                    </div>
                                </div>
                            </div>
                            <div class="aaaa">

                                <ul class="list-unstyled">


                                    <li><i class="fa fa-map-marker"></i> 01 Vo Van Ngan st, Thu Duc dist, HCM city.</li>
                                    <li><i class="fa fa-mobile"></i> 333 222 3333</li>
                                    <li><i class="fa fa-phone"></i> +222 11 4444</li>
                                    <li><i class="fa fa-envelope"></i> hthkx7color@gmail.com</li>
                                </ul>


                            </div>
                        </div>
                        <!-- Grid column -->

                        <hr class="clearfix w-100 d-md-none pb-3" />
                        <div class="col-md-3 mb-md-0 mb-3 ">
                            <h5 class="text-uppercase">Quick Links</h5>

                            <ul class="list-unstyled">
                                <li>
                                    <a href="#!" style="color:black">Products</a>
                                </li>
                                <li>
                                    <a href="#!" style="color:black">Aquatic knowledge</a>
                                </li>
                                <li>
                                    <a href="#!" style="color:black">Fishtank sample</a>
                                </li>
                                <li>
                                    <a href="#!" style="color:black">About us</a>
                                </li>
                            </ul>
                        </div>
                        <!-- Grid column -->
                        <div class="col-md-3 mb-md-0 mb-3 ">
                            <!-- Links -->
                            <h5 class="text-uppercase">Fish</h5>

                            <ul class="list-unstyled">
                                <li>
                                    <a href="#!" style="color:black">Betta Fish</a>
                                </li>
                                <li>
                                    <a href="#!" style="color:black">Freshwater Fish</a>
                                </li>
                                <li>
                                    <a href="#!" style="color:black">Shrimp</a>
                                </li>
                                <li>
                                    <a href="#!" style="color:black">Pond Fish</a>
                                </li>
                            </ul>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-3 mb-md-0 mb-3 ">
                            <!-- Links -->
                            <h5 class="text-uppercase">PARTNER</h5>
                            <ul class="list-unstyled">
                                <li>
                                    <img style="width: 100px;height: 100px" src="img/sponsor.png" alt="" />
                                </li>


                            </ul>

                        </div>
                        <!-- Grid column -->
                    </div>
                    <!-- Grid row -->

                </div>
                <div class="text-center py-3 sub-some">
                    <img src="img/payment422.png" alt="" />
                </div>
                <!-- Footer Links -->

                <!-- PaymentMethod -->

                <!-- Copyright -->
                <div class="footer-copyright text-center footerright py-3">
                    © HTHK 2020
                </div>
                <!-- Copyright -->
            </footer>
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
                    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
            crossorigin="anonymous"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <script src="JS/Interface.js"></script>
            </body>

            </html>