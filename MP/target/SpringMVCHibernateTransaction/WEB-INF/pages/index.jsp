<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>Trang Chủ</title>
	<!-- my css -->
	<link rel="stylesheet" href="/MP/resource/css/style.css">
	<!-- js -->
	<script src="/MP/resource/js/jquery-1.12.2.min.js"></script>
	<link rel="stylesheet" href="/MP/resource/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="/MP/resource/bootstrap/css/bootstrap-theme.min.css">
	<script src="/MP/resource/bootstrap/js/bootstrap.min.js"></script>

	<!-- owl -->
	<link rel="stylesheet" href="/MP/resource/css/owl.carousel.css">
	<script src="/MP/resource/js/owl.carousel.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$('.owl1').owlCarousel({
			items:6,
			margin:5
		});
		$('.owl2').owlCarousel({
			items:8,
			margin:5
		});
		$('.carousel').carousel();
	});
	</script>
	
</head>
<body>
	<div class="container-fluid top">
		<div class="container">
			<div class="row">
				<div class="col-md-4 pull-left left">
					<img src="/MP/resource/images/hotline.png" alt="">
					<p>Hotline : 000000000</p>
				</div>
				<div class="col-md-4 pull-right right">
					<img class="pull-right" src="/MP/resource/images/giohang.png" alt="">
					<button class="dangnhap"><a href="">Đăng nhập</a></button>
				</div>
			</div>
		</div>
	</div>
	<header class="container">
		<div class="banner"><img class="img-responsive" src="/MP/resource/images/banner.png" alt="Banner"></div>
		<nav class="navbar navbar-default" role="navigation">
  			<div class="container-fluid">
			    <div class="navbar-header">
			      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			      </button>
			    </div>
			    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			      <ul class="nav navbar-nav">
			        <li><a href="#">Trang chủ</a></li>
			        <li><a href="#">Giới thiệu</a></li>
			        <li><a href="#">Sản phẩm</a></li>
			        <li><a href="#">Liên hệ</a></li>
			        <li><a href="#">Bản đồ</a></li>
			        <li><a href="#">Fanpage</a></li>
			      </ul>
			      <form class="navbar-form navbar-left navbar-right" role="search">
			        <div class="form-group">
			          <input type="text" class="form-control" placeholder="Search">
			          <button type="submit" class="btn btn-default">Submit</button>
			        </div>
			      </form>
			    </div>
  			</div>
		</nav>
	</header>
	<div class="container">
		<div class="slide carousel">
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			  	<div class="carousel-inner">
			    	<div class="item active">
				    	<img src="/MP/resource/images/slide1.jpg" alt="slide 1">
				    </div>
				    <div class="item">
				    	<img src="/MP/resource/images/slide2.jpg" alt="slide 2">
				    </div>
			 	</div>
			 	<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
			    	<span class="glyphicon glyphicon-chevron-left"></span>
				</a>
				<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				    <span class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="box product">
			<div class="title"><p class="tend">Sản phẩm nổi bật</p></div>
			<div class="content">
				<div class="owl1">
				    <div class="item">
				    	<div class="thumbnail">
							<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
							<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
							<p class="price">Giá : 200000 VNĐ</p>
							<button class="dathang">Đặt hàng</button>
						</div>
				    </div>
				    <div class="item">
				    	<div class="thumbnail">
							<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
							<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
							<p class="price">Giá : 200000 VNĐ</p>
							<button class="dathang">Đặt hàng</button>
						</div>
				    </div>
				    <div class="item">
				    	<div class="thumbnail">
							<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
							<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
							<p class="price">Giá : 200000 VNĐ</p>
							<button class="dathang">Đặt hàng</button>
						</div>
				    </div>
				    <div class="item">
				    	<div class="thumbnail">
							<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
							<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
							<p class="price">Giá : 200000 VNĐ</p>
							<button class="dathang">Đặt hàng</button>
						</div>
				    </div>
				    <div class="item">
				    	<div class="thumbnail">
							<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
							<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
							<p class="price">Giá : 200000 VNĐ</p>
							<button class="dathang">Đặt hàng</button>
						</div>
				    </div>
				    <div class="item">
				    	<div class="thumbnail">
							<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
							<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
							<p class="price">Giá : 200000 VNĐ</p>
							<button class="dathang">Đặt hàng</button>
						</div>
				    </div>
				    <div class="item">
				    	<div class="thumbnail">
							<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
							<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
							<p class="price">Giá : 200000 VNĐ</p>
							<button class="dathang">Đặt hàng</button>
						</div>
				    </div>
				    <div class="item">
				    	<div class="thumbnail">
							<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
							<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
							<p class="price">Giá : 200000 VNĐ</p>
							<button class="dathang">Đặt hàng</button>
						</div>
				    </div>
				    <div class="item">
				    	<div class="thumbnail">
							<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
							<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
							<p class="price">Giá : 200000 VNĐ</p>
							<button class="dathang">Đặt hàng</button>
						</div>
				    </div>
				    <div class="item">
				    	<div class="thumbnail">
							<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
							<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
							<p class="price">Giá : 200000 VNĐ</p>
							<button class="dathang">Đặt hàng</button>
						</div>
				    </div>
				    <div class="item">
				    	<div class="thumbnail">
							<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
							<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
							<p class="price">Giá : 200000 VNĐ</p>
							<button class="dathang">Đặt hàng</button>
						</div>
				    </div>
				    <div class="item">
				    	<div class="thumbnail">
							<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
							<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
							<p class="price">Giá : 200000 VNĐ</p>
							<button class="dathang">Đặt hàng</button>
						</div>
				    </div>
				    <div class="item">
				    	<div class="thumbnail">
							<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
							<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
							<p class="price">Giá : 200000 VNĐ</p>
							<button class="dathang">Đặt hàng</button>
						</div>
				    </div>
				    <div class="item">
				    	<div class="thumbnail">
							<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
							<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
							<p class="price">Giá : 200000 VNĐ</p>
							<button class="dathang">Đặt hàng</button>
						</div>
				    </div>
				    <div class="item">
				    	<div class="thumbnail">
							<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
							<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
							<p class="price">Giá : 200000 VNĐ</p>
							<button class="dathang">Đặt hàng</button>
						</div>
				    </div>
				    <div class="item">
				    	<div class="thumbnail">
							<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
							<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
							<p class="price">Giá : 200000 VNĐ</p>
							<button class="dathang">Đặt hàng</button>
						</div>
				    </div>
				</div>
			</div>
		</div>
	</div>
	<section class="container">
		<div class="row">
			<div class="col-md-3 left">
				<div class="box">
					<div class="title"><p class="tend">danh mục sản phẩm</p></div>
					<div class="content">
						<ul class="ddmenu">
							<li>
								<a href="#">Thời trang</a>
								<ul>
									<li><a href="#">Kem</a></li>
									<li><a href="#">Son</a></li>
									<li><a href="#">Giày</a></li>
									<li><a href="#">Guốc</a></li>
									<li><a href="#">Quần áo</a></li>
								</ul>
							</li>
							<li>
								<a href="#">Thời trang</a>
								<ul>
									<li><a href="#">Kem</a></li>
									<li><a href="#">Son</a></li>
									<li><a href="#">Giày</a></li>
									<li><a href="#">Guốc</a></li>
									<li><a href="#">Quần áo</a></li>
								</ul>
							</li>
							<li>
								<a href="#">Thời trang</a>
								<ul>
									<li><a href="#">Kem</a></li>
									<li><a href="#">Son</a></li>
									<li><a href="#">Giày</a></li>
									<li><a href="#">Guốc</a></li>
									<li><a href="#">Quần áo</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
				<div class="box">
					<div class="title"><p class="tend">liên hệ trực tuyến</p></div>
					<div class="content">
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur ullam, fugiat animi, laborum earum ipsam modi hic, obcaecati ab aspernatur, illo debitis iure porro impedit nemo nisi. Nesciunt, placeat, quos.
					</div>
				</div>
				<div class="box">
					<div class="title"><p class="tend">facebook</p></div>
					<div class="content">
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur ullam, fugiat animi, laborum earum ipsam modi hic, obcaecati ab aspernatur, illo debitis iure porro impedit nemo nisi. Nesciunt, placeat, quos.
					</div>
				</div>
				<div class="box">
					<div class="title"><p class="tend">thống kê</p></div>
					<div class="content">
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur ullam, fugiat animi, laborum earum ipsam modi hic, obcaecati ab aspernatur, illo debitis iure porro impedit nemo nisi. Nesciunt, placeat, quos.
					</div>
				</div>
			</div>
			<div class="col-md-9 right">
				<div class="box product">
					<div class="title"><p class="tend">sản phẩm mới nhất</p></div>
					<div class="content">
						<div class="row">
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="box product">
					<div class="title"><p class="tend">sản phẩm bán chạy</p></div>
					<div class="content">
						<div class="row">
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="box product">
					<div class="title"><p class="tend">son</p></div>
					<div class="content">
						<div class="row">
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="box product">
					<div class="title"><p class="tend">son bóng</p></div>
					<div class="content">
						<div class="row">
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail">
									<a href=""><img src="/MP/resource/images/sp1.jpg" alt="Đây là sản phẩm 1"></a>
									<a href=""><p class="title">Son Mac Retro Matted Lipstick - Dangerous</p></a>
									<p class="price">Giá : 200000 VNĐ</p>
									<button class="dathang">Đặt hàng</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="container margintop">
		<div class="box linkweb">
			<div class="title"><p class="tend">Liên kết web</p></div>
			<div class="content">
				<div class="owl2">
				    <div class="item">
				    	<img src="/MP/resource/images/qc1.jpg" alt="link quảng cáo 1">
				    </div>
				    <div class="item">
				    	<img src="/MP/resource/images/qc2.jpg" alt="link quảng cáo 2">
				    </div>
					<div class="item">
				    	<img src="/MP/resource/images/qc1.jpg" alt="link quảng cáo 1">
				    </div>
				    <div class="item">
				    	<img src="/MP/resource/images/qc2.jpg" alt="link quảng cáo 2">
				    </div>
				    <div class="item">
				    	<img src="/MP/resource/images/qc1.jpg" alt="link quảng cáo 1">
				    </div>
				    <div class="item">
				    	<img src="/MP/resource/images/qc2.jpg" alt="link quảng cáo 2">
				    </div>
				    <div class="item">
				    	<img src="/MP/resource/images/qc1.jpg" alt="link quảng cáo 1">
				    </div>
				    <div class="item">
				    	<img src="/MP/resource/images/qc2.jpg" alt="link quảng cáo 2">
				    </div>
					<div class="item">
				    	<img src="/MP/resource/images/qc1.jpg" alt="link quảng cáo 1">
				    </div>
				    <div class="item">
				    	<img src="/MP/resource/images/qc2.jpg" alt="link quảng cáo 2">
				    </div>
				    <div class="item">
				    	<img src="/MP/resource/images/qc1.jpg" alt="link quảng cáo 1">
				    </div>
				    <div class="item">
				    	<img src="/MP/resource/images/qc2.jpg" alt="link quảng cáo 2">
				    </div>
				</div>
			</div>
		</div>
	</div>
	<footer class="container-fluid" id="footer">
		<div class="container">
			<div class="menufooter">
				<ul>
					<li><a href="#">Trang chủ</a></li>
					<li><a href="#">Giới thiệu</a></li>
					<li><a href="#">Liên hệ</a></li>
					<li><a href="#">Quảng cáo</a></li>
					<li><a href="#">Bản đồ</a></li>
				</ul>
			</div>
			<div class="diachicongty">
				<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maiores fugit nobis libero non aut, inventore nostrum veritatis sed placeat quaerat culpa, quisquam pariatur ad voluptas distinctio saepe magni doloribus explicabo!</div>
				<div>Tenetur earum quaerat et voluptatum ullam id consequatur fuga, odio quis tempore nisi voluptatibus repellat inventore? Culpa asperiores recusandae ab non quo vel odio nisi, neque, necessitatibus ea mollitia quam.</div>
			</div>
		</div>
	</footer>
</body>
</html>