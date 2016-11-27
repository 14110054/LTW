<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="js/jquery-3.1.0.min.js"></script>    
    <script src="js/bootstrap.min.js"></script>    
   <title>Trang Chủ</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
     <link rel="icon" href="img/logo.PNG" type="image/x-icon" />
    <link rel="shortcut icon" href="img/logo.PNG"/>

  <style>
img {
    width: 100%;
    height: auto;
}
body {
    background-image: url("img/bkg3.jpg");
}
</style>

</head>
<body>
  <img src="img/SPKT.jpg">
    <div class="row">
          <div class="logo col-md-6 col-sm-6 col-xs-12 ">
              <div id='ctl05_portlet_9b8ba9cf-dd1c-4b80-91fe-8787110cd93b' style="padding:10px 0px 0px 0px;width:1000px;float:left"><div>   
              <br>              
               <marquee direction="left"><span style="text-align: left; font-size: 70px; color:   #FF0000;" ><h2 style="background-color:blue;color:white">
                   Ứng Dụng Xếp Giảng Viên Ngồi Hội Đồng Bảo Vệ Khóa Luận Tốt Nghiệp</h2>
                      </span></marquee>
                </div>   
          </div>    
      </div>                
          <div class="search col-md-6 col-sm-6 col-xs-12 text-right">
            <form method="get" action="#">
              <head>
              <style>
         body {
                color:blue;
              }
              </style>
              <head>
              <br><br><br><br>
              <button type="button" class="btn btn-brimary">
                       <a href="LoginSV.jsp">   <span class="glyphicon glyphicon-log-in"> Đăng nhập</span></a>
                          </button>
              <input type="text" placeholder="Nhập từ khóa tìm kiếm" id="q" name="q" value="">
              <button type="button" class="btn btn-brimary">Tìm kiếm
      <span class="glyphicon glyphicon-search"></span>
            </form>
          </div>
          <div class="clearfix"></div>
          <br>
     </div>
    
        <style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color:white;
}

li {
    float: left;
}

li a {
    display: block;
    padding: 14px;
}
</style>

<ul>
  <li></li><h4><span class="glyphicon glyphicon-home" style="font-style: 40px;height: 30px"></span>Trang Chủ
</h4></ul>
       
     <br>
 
   <div id="wrapper">
      <div class="container">
        <div class="row">
          <div class="content col-md-7 col-sm-6 col-xs-12">
               <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                  <li data-target="#myCarousel" data-slide-to="1"></li>
                  <li data-target="#myCarousel" data-slide-to="2"></li>
                  <li data-target="#myCarousel" data-slide-to="3"></li>
                </ol>
                  <div class="carousel-inner" role="listbox">
                    <div class="item active">
                      <img src="img/truong.jpg" alt="Chania" style="width: 1200px;height: 400px" >
                    </div>
                    <div class="item">
                      <img src="img/totnghiep.jpg" alt="Chania" style="width: 1200px;height: 400px">
                    </div>
                    <div class="item">
                      <img src="img/tinhnguyen.jpg" alt="Chania" style="width: 1200px;height: 400px">
                    </div> 
                    <div class="item">
                      <img src="img/truong1.jpg" alt="Chania" style="width: 1200px;height: 400px">
                    </div> 
                      <div class="item">
                      <img src="img/lekiket.jpg" alt="Chania" style="width: 1200px;height: 400px">
                    </div> 
                      
     
                  </div>
                  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                  </a>
                  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                  </a>
              </div>
                    <h2 style="color:white">Giới thiệu</h2><br>
                                <div class="embed-responsive embed-responsive-4by3">
                      <iframe class="embed-responsive-item" src="img/videotruong.mp4"></iframe>
                    </div>
                     
       
          </div>
          <div class="sidebar col-md-4 col-sm-3 col-xs-12">
            <div class="sidebar-item">
              <h4 class="widget-title" style="color:white">Buổi bảo vệ khóa luận tốt nghiệp</h4>
              <div class="textwidget">
                <img src="img/khoaluan.jpg">
                <br>
                <br>
            </div>
            <div class="sidebar-item">
              <h4 class="widget-title" style="color:white">Lễ trao bằng tốt nghiệp</h4>
              <div class="textwidget">
                <img src="img/totnghiep.jpg">
              </div>
               <div class="sidebar-item">
              <h4 class="widget-title" style="color:white">Hội đồng bảo vệ khóa luận tốt nghiệp</h4>
              <div class="textwidget">
                <img src="img/hd.jpg">
            </div>
          </div>
        </div>
      </div>
    </div>
</div>
</div>
</div>
    <footer>
      <div class="container">
        <div class="footer-info text-center">
          <br>
          <br>
          <br>
          <br>
          <footer><h style="color:white"> Copyright DevWeb.com</footer>         
        </div>
      </div>
    </footer>
</body>
</html>