<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
    <head>
         <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>헬스로드 | 마이페이지</title>
        <meta name="description" content="company is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/normalize.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/fontello.css">
        <link href="assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
        <link href="assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
        <link href="assets/css/animate.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="assets/css/bootstrap-select.min.css"> 
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/icheck.min_all.css">
        <link rel="stylesheet" href="assets/css/price-range.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.css">  
        <link rel="stylesheet" href="assets/css/owl.theme.css">
        <link rel="stylesheet" href="assets/css/owl.transitions.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
        <script src="js/jquery-3.4.1.min.js"></script>
        <script type="text/javascript">
        
       
        //회원 탈퇴를 클릭 했을 때 기능
        	function userDel(){
        		if(confirm("정말로 탈퇴하시겠습니까?")){
        			location.href="front?command=delUser";		
        		}else {
        			return;
        		}
        	}
        	
            
        </script>
    </head>
    <body>

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
                <nav class="navbar navbar-default ">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index-5.html"><img src="assets/img/HealthRoad2.png" alt=""></a> <!-- 로고이미지 바꾸기 -->
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse yamm" id="navigation">
                    <div class="button navbar-right">
                        <button class="navbar-btn nav-button wow bounceInRight login" onclick="location.href='register.jsp'" data-wow-delay="0.4s">로그인/회원가입</button>
                    </div>
                    <ul class="main-nav nav navbar-nav navbar-right">
                        <li class="dropdown ymm-sw " data-wow-delay="0.1s">
                        <!-- 여기href 바꿔야함-->
                        
                        <a href="index.html" class="dropdown-toggle active"  data-hover="dropdown" data-delay="200">마이페이지 </a>
                        </li>

                        <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="" href="point_charge.jsp">포인트충전 </a></li>
                        <li class="dropdown yamm-fw" data-wow-delay="0.1s">
                        <!-- 여기href 바꿔야함-->      
                                              
                        <a href="contact-3.jsp" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">헬스로드 소개 </a>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <!-- End of nav bar -->
<div class="container">
            <h2 class="ps-property-title">마이페이지</h2>
        </div>
        <!-- End page header -->
		
        <!-- property area -->
        <div class="content-area recent-property padding-top-40" style="background-color: #FFF;">
            <div class="container"> 
             
            <div class="profiel-header">
                            
                                    </div>

                <div class="col-md-9">

                    <div class="" id="contact1">                        
                        <div class="row" >
                            <div class="col-sm-4">
                                <h3><a href="memberInfoUpdate.html"><i class="fa fa-star"></i>정보수정</a></h3>
                                <p><strong>비밀번호 연락처를 
                                <br>수정 할 수 있습니다.</strong></p>
                            </div>
                            <!-- /.col-sm-4 -->
                            <div class="col-sm-4">
                                <h3><a href="#"><i class="fa fa-money"></i>포인트 충전</a></h3>
                                <p class="text-muted"><strong>포인트를 충전 할 수 있습니다.</strong></p>
                            </div>
                            <!-- /.col-sm-4 -->
                            <div class="col-sm-4">
                                <h3><a href="user-properties.jsp"><i class="fa fa-bar-chart"></i>이용 내역</a></h3>
                                <p class="text-muted"><strong>회원의 포인트 사용 내역을 볼 수 있습니다.</strong></p>
                            </div>
                            <!-- /.col-sm-4 -->
                        </div>
                        <!-- /.row --> 
                       
                        <hr>
                        
                         <!-- /.col-sm-4 -->
                            <div class="col-sm-4" style="padding: 0px 0px;">
                                <h3><a href="buisness_register.html"><i class="fa fa-child"></i>사업자 등록</a></h3>
                                <p class="text-muted"><strong>사업자가 헬스장을 등록해서 
                                <br>회원들에게 서비스를
                                <br>제공해 줄 수 있습니다.</strong></p>
                             
                            </div>
                            <!-- /.col-sm-4 -->
                            <div class="col-sm-4">
                                <h3><a href="#"><i class="fa fa-heart"></i>신청자 목록</a></h3>
                                <p class="text-muted"><strong>신청한 회원 목록을 보고 승인을 해줄수 있습니다.</strong></p>
                             
                            </div>
                            <!-- /.col-sm-4 -->
                                                        <!-- /.col-sm-4 -->
                            <div class="col-sm-4">
                                <h3><a href="#" onclick="userDel()"><i class="fa fa-sign-out"></i>회원 탈퇴</a></h3>
                                <p class="text-muted"><strong>신청한 회원 목록을 보고 승인을 해줄수 있습니다.</strong></p>
                             
                            </div>
                            <!-- /.col-sm-4 -->
                    
                            <!-- /.row -->
                        </form>
                    </div>
                </div>
                
                <!-- /.col-md-9 -->   

            </div>
         </div>
        
         <!-- Footer area-->
         
         <div class="footer-area">

            <div class="footer-copy text-center">
                <div class="container">
                    <div class="row">
                        <div class="pull-left">
                            <span> (C) <a href="#">OpenMind</a> , All rights reserved 2019  </span> 
                        </div> 
                        <div class="bottom-menu pull-right"> 
                            <ul> 
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.2s">Home</a></li>
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.3s">Property</a></li>
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.4s">Faq</a></li>
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.6s">Contact</a></li>
                            </ul> 
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <script src="assets/js/modernizr-2.6.2.min.js"></script>
        <script src="assets/js/jquery-1.10.2.min.js"></script> 
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/bootstrap-select.min.js"></script>
        <script src="assets/js/bootstrap-hover-dropdown.js"></script>

        <script src="assets/js/easypiechart.min.js"></script>
        <script src="assets/js/jquery.easypiechart.min.js"></script>

        <script src="assets/js/owl.carousel.min.js"></script>
        <script src="assets/js/wow.js"></script>

        <script src="assets/js/icheck.min.js"></script>
        <script src="assets/js/price-range.js"></script>
        
        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
        <script src="assets/js/gmaps.js"></script>        
        <script src="assets/js/gmaps.init.js"></script>

        <script src="assets/js/main.js"></script>

    </body>
</html>