<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ------>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/> 

        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
        <!-- Google Fonts Roboto -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" /> 
        <!-- MDB -->
        <link rel="stylesheet" href="css/mdb.min.css" />
        <!-- Custom styles -->
        <link rel="stylesheet" href="css/style.css" />

        <!-- Roboto Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700&display=swap"> 
        Font Awesome
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
        Bootstrap core CSS
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/bootstrap.min.css">
        Material Design Bootstrap
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb-pro.min.css">
        Material Design Bootstrap Ecommerce
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb.ecommerce.min.css"> 
        <!-- Your custom styles (optional) -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> 

        <style>
            /* Carousel styling */
            #introCarousel,
            .carousel-inner,
            .carousel-item,
            .carousel-item.active {
                height: 100vh;
            }

            .carousel-item:nth-child(1) {
                background-image: url('https://routine.vn/media/banner/tmp/images/nam_-_1920x984.jpg');
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-position: center center;
            }

            .carousel-item:nth-child(2) {
                background-image: url('https://routine.vn/media/banner/tmp/images/n_-_1920_x_984.jpg');
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-position: center center;
            }

            .carousel-item:nth-child(3) {
                background-image: url('https://routine.vn/media/banner/tmp/images/E-com_Resize_tang_B_nh_n_c_1920x984_-_update.jpg');
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-position: center center;
            }

            /* Height for devices larger than 576px */
            @media (min-width: 992px) {
                #introCarousel {
                    margin-top: -58.59px;
                }
            }

            .navbar .nav-link {
                color: #fff !important;
            }
        </style>

    </head>
    <body class="skin-light" onload="loadAmountCart()">
        <jsp:include page="Menu.jsp"></jsp:include>



            <!-- Carousel wrapper -->
            <div id="introCarousel" class="carousel slide carousel-fade shadow-2-strong" data-mdb-ride="carousel" style="margin-top:35px;">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-mdb-target="#introCarousel" data-mdb-slide-to="0" class="active"></li>
                    <li data-mdb-target="#introCarousel" data-mdb-slide-to="1"></li>
                    <li data-mdb-target="#introCarousel" data-mdb-slide-to="2"></li>
                </ol>

                <!-- Inner -->
                <div class="carousel-inner">
                    <!-- Single item -->
                    <div class="carousel-item active">

                    </div>

                    <!-- Single item -->
                    <div class="carousel-item">

                    </div>

                    <!-- Single item -->
                    <div class="carousel-item">

                    </div>
                </div>
                <!-- Inner -->

                <!-- Controls -->
                <a class="carousel-control-prev" href="#introCarousel" role="button" data-mdb-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#introCarousel" role="button" data-mdb-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <!-- Carousel wrapper -->



            <div class="card-group" style="margin-top:50px;">
                <div class="card" style="border-style: none;">
                    <img style="height:55px; width:64px; margin: auto;" src="https://giayxshop.vn/wp-content/uploads/2019/11/iconfinder_truck_1291768-1.png">
                    <div class="card-body">
                        <h5 class="card-title" style="text-align:center">GIAO HÀNG TOÀN QUỐC</h5>
                        <p class="card-text" style="text-align:center">Vận chuyển khắp Việt Nam</p>
                    </div>
                </div>
                <div class="card" style="border-style: none;">
                    <img class="card-img-top" style="height:55px; width:64px; margin: auto;" src="https://giayxshop.vn/wp-content/uploads/2019/11/iconfinder_payment_1954199-3.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title" style="text-align:center">THANH TOÁN KHI NHẬN HÀNG</h5>
                        <p class="card-text" style="text-align:center">Nhận hàng tại nhà rồi thanh toán</p>
                    </div>
                </div>
                <div class="card" style="border-style: none;">
                    <img class="card-img-top" style="height:55px; width:64px; margin: auto;" src="https://giayxshop.vn/wp-content/uploads/2019/11/iconfinder_service_repair_phone_mobile_wrench_screw_driver_4014703-1.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title" style="text-align:center">BẢO HÀNH DÀI HẠN</h5>
                        <p class="card-text" style="text-align:center">Bảo hàng lên đến 60 ngày</p>
                    </div>
                </div>
                <div class="card" style="border-style: none;">
                    <img class="card-img-top" style="height:55px; width:64px; margin: auto;" src="https://giayxshop.vn/wp-content/uploads/2019/11/iconfinder_refresh_3017918-1.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title" style="text-align:center">ĐỔI HÀNG DỄ DÀNG</h5>
                        <p class="card-text" style="text-align:center">Đổi hàng thoải mái trong 30 ngày</p>
                    </div>
                </div>
            </div>


            <div class="container">




                <div class="row" style="margin-top:25px">            
                    <h1 style="text-align:center; width:100%" id="moiNhat">SẢN PHẨM MỚI NHẤT</h1>
                    <div class="col-sm-12">
                        <div id="contentMoiNhat" class="row">
                        <c:forEach items="${list8Last}" var="o">
                            <div class=" col-12 col-md-6 col-lg-3">
                                <div class="card">
                                    <div class="view zoom z-depth-2 rounded">
                                        <img class="img-fluid w-100" src="${o.image}" alt="Card image cap">

                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-success btn-block">${o.price} $</p>
                                            </div> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>

                </div>

            </div>


            <div class="row" style="margin-top:25px">            
                <h1 style="text-align:center; width:100%" id="nike">QUẦN JEAN MỚI NHẤT</h1>
                <div class="col-sm-12">
                    <div id="contentNike" class="row">
                        <c:forEach items="${list4PoloLast}" var="o">
                            <div class="productNike col-12 col-md-6 col-lg-3">
                                <div class="card">
                                    <div class="view zoom z-depth-2 rounded">
                                        <img class="img-fluid w-100" src="${o.image}" alt="Card image cap">
                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-success btn-block">${o.price} $</p>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <button onclick="loadMoreNike()" class="btn btn-primary">Load more</button>
                </div>
            </div>


            <div class="row" style="margin-top:25px">            
                <h1 style="text-align:center; width:100%" id="adidas">ÁO POLO MỚI NHẤT </h1>
                <div class="col-sm-12">
                    <div id="contentAdidas" class="row">
                        <c:forEach items="${list4JEANLast}" var="o">
                            <div class="productAdidas col-12 col-md-6 col-lg-3">
                                <div class="card">
                                    <div class="view zoom z-depth-2 rounded">
                                        <img class="img-fluid w-100" src="${o.image}" alt="Card image cap">
                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-success btn-block">${o.price} $</p>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <button onclick="loadMoreAdidas()" class="btn btn-primary">Load more</button>
                </div>
            </div>


            <div class="row" style="margin-top:50px">            
                <div class="col-sm-12">
                    <div id="content" class="row">
                        <div class=" col-12 col-md-12 col-lg-6">
                            <div class="card-body">
                                <h4 class="card-title show_txt" style="text-align:center; font-size:18pt; color:#b57b00;">Về chúng tôi</h4>
                                <h2 class="card-title show_txt" style="text-align:center; font-size:24pt;">Fashion Family</h2>
                                <p style="text-align:center;">Fashion Family đang tạo ra những bộ trang phục sản xuất trong nước hoàn toàn có thể sánh ngang với các thương hiệu thời trang nam đến từ nước ngoài về kiểu dáng, chất lượng lẫn phong cách thời trang.</p>
                                <p>Như ý nghĩa của tên gọi, trang phục của Fashion Family hướng đến việc trở thành thói quen, lựa chọn hàng ngày cho nam giới trong mọi tình huống. Bởi Fashion Family hiểu rằng, sự tự tin về phong cách ăn mặc sẽ làm nền tảng, tạo động lực cổ vũ mỗi người mạnh dạn theo đuổi những điều mình mong muốn. Trong đó, trang phục nam phải mang vẻ đẹp lịch lãm, hợp mốt và tạo sự thoải mái, quan trọng nhất là mang đến cảm giác “được là chính mình” cho người mặc.
                                    .</p>                  
                            </div>  
                        </div>
                        <div class=" col-12 col-md-12 col-lg-6">
                            <img class="card-img-top" src="https://file.hstatic.net/1000341789/file/1200px_routine.jpg" alt="Card image cap">        
                        </div>
                    </div>
                </div>
            </div>





        </div>
<!--/Project_Management_WebsiteThoiTrang-->
        <jsp:include page="Footer.jsp"></jsp:include>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>

                       function loadMore() {
                           var amount = document.getElementsByClassName("product").length;
                           $.ajax({
                               url: "/Project_Management_WebsiteThoiTrang/load",
                               type: "get", //send it through get method
                               data: {
                                   exits: amount
                               },
                               success: function (data) {
                                   var row = document.getElementById("content");
                                   row.innerHTML += data;
                               },
                               error: function (xhr) {
                                   //Do Something to handle error
                               }
                           });
                       }
                       function loadMoreNike() {
                           var amountNike = document.getElementsByClassName("productNike").length;
                           $.ajax({
                               url: "/Project_Management_WebsiteThoiTrang/loadNike",
                               type: "get", //send it through get method
                               data: {
                                   exitsNike: amountNike
                               },
                               success: function (dataNike) {
                                   document.getElementById("contentNike").innerHTML += dataNike;

                               },
                               error: function (xhr) {
                                   //Do Something to handle error
                               }
                           });
                       }
                       function loadMoreAdidas() {
                           var amountAdidas = document.getElementsByClassName("productAdidas").length;
                           $.ajax({
                               url: "/Project_Management_WebsiteThoiTrang/loadAdidas",
                               type: "get", //send it through get method
                               data: {
                                   exitsAdidas: amountAdidas
                               },
                               success: function (dataAdidas) {
                                   document.getElementById("contentAdidas").innerHTML += dataAdidas;

                               },
                               error: function (xhr) {
                                   //Do Something to handle error
                               }
                           });
                       }
                       function searchByName(param) {
                           var txtSearch = param.value;
                           $.ajax({
                               url: "/Project_Management_WebsiteThoiTrang/searchAjax",
                               type: "get", //send it through get method
                               data: {
                                   txt: txtSearch
                               },
                               success: function (data) {
                                   var row = document.getElementById("content");
                                   row.innerHTML = data;
                               },
                               error: function (xhr) {
                                   //Do Something to handle error
                               }
                           });
                       }
                       function load(cateid) {
                           $.ajax({
                               url: "/Project_Management_WebsiteThoiTrang/category",
                               type: "get", //send it through get method
                               data: {
                                   cid: cateid
                               },
                               success: function (responseData) {
                                   document.getElementById("content").innerHTML = responseData;
                               }
                           });
                       }
                       function loadAmountCart() {
                           $.ajax({
                               url: "/Project_Management_WebsiteThoiTrang/loadAllAmountCart",
                               type: "get", //send it through get method
                               data: {

                               },
                               success: function (responseData) {
                                   document.getElementById("amountCart").innerHTML = responseData;
                               }
                           });
                       }
        </script>  


        <!-- MDB -->
        <script type="text/javascript" src="js/mdb.min.js"></script>
        <!-- Custom scripts -->
        <script type="text/javascript" src="js/script.js"></script>

        <!-- SCRIPTS -->
        <!-- JQuery -->
        <script src="https://mdbootstrap.com/previews/ecommerce-demo/js/jquery-3.4.1.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/bootstrap.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.min.js"></script>
        <!-- MDB Ecommerce JavaScript -->
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.ecommerce.min.js"></script>
    </body>
</html>

