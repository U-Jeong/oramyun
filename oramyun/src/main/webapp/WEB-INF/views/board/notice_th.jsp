<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
   
  <!-- navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    
    <a class="navbar-brand" href="#">
    <img src="../images/22.png" class="d-block w-100" alt="...">
    </a>
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#"><h2>뜨끈한리뷰</h2></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><h2>구독하기</h2></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><h2>선물하기</h2></a>
        </li>
      </ul>
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark">

  <div class="container-fluid">
    <div class="collapse navbar-collapse" id="navbarText">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#"><h2>공지사항</h2></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><h2>Q&A</h2></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><h2>회원가입</h2></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><h2>로그인</h2></a>
        </li>
      </ul>
    
    <form class="d-flex">
      <input class="form-control me-2" type="search" placeholder="입력하세요" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">search</button>
    </form>
  </div>
</nav>
    </div>
  </div>
</nav>
  
    <!-- carousel -->
<!--     상단 롤링 배너  -->
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="../images/notice1.png" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>First slide label</h5>
        <p>Some representative placeholder content for the first slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="../images/notice2.png" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Second slide label</h5>
        <p>Some representative placeholder content for the second slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="../images/notice3.png" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Third slide label</h5>
        <p>Some representative placeholder content for the third slide.</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>



    <!-- content -->
<!--     중간 바디 -->

    <div class="container">
<!--     1번째 그림 배너 -->
    <div class= "row my-5" >
    	<div class="col-7 ">
    	<img src="http://lipbbam.com/web/upload/NNEditor/20190722/copy-1563787315-EBACB4EBA38CEBB0B0EC86A1EBB0B0EB8488.jpg" alt=""  class="w-100 rounded "  />
        </div> 
        <div class= "col-5 ">
    		<img src="https://cdn.imweb.me/thumbnail/20200617/df25c5a564505.png" alt=""  class="w-100 rounded "  />
        	<p>라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면
        	라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면
        	라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면라면</p>
        </div>
    </div>

  <hr />
<!--     2번째 그림 배너 -->
   <div class= "row my-5">
    	<div class="col-5 ">
    	<img src="https://lh3.googleusercontent.com/proxy/psNJnuxxFjtdnBxDU7oI9mSv0ToRLJaJFAqrGO-Sq1uwtRtef2gRRjJHiwYmUYe0r-tfsKNWmafv_iq4bo5BYQFw9yebhQPWBGD29QPyA5vmDrM" alt="" class="w-100 rounded"  />
    	</div>
    	
    	
    	<div class= "col-7 ">	
    	    <img src="https://cdn.imweb.me/thumbnail/20200617/df25c5a564505.png" alt=""  class="w-100 rounded "  />
        </div>
    </div>
    
  <hr />
<!--   3번째 그림 배너 -->
   <div class= "row my-5">
    	<div class="col-5 ">
 	<img src="https://t1.daumcdn.net/liveboard/quizkorea/3d0af9d575204261ac0e5482b89706bc.png" alt=""  class="w-100 rounded "  />
         </div>
        <div class= "col-7 ">
    	  <img src="http://image.auction.co.kr/itemimage/1d/ea/72/1dea72a5d6.jpg" alt=""  class="w-100 rounded "  />
    	   </div>
    </div>
   <hr /> 
<!--     쿠폰 -->
    <div class= "row">
    	<img src="https://www.zoomzoomtour.com/catalog/view/theme/default/image/cms/app_promotion/coupon.png" alt=""  class="w-100 rounded "  />
    </div>
    
   <hr /> 
<!--     하단 롤링 배너     -->
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="http://image.auction.co.kr/itemimage/10/62/85/106285cde6.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>First slide label</h5>
        <p>Some representative placeholder content for the first slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://t1.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/brunch/service/user/A8V/image/qtcU-lNWIbQYMLm4QrWsaSLTwuo.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Second slide label</h5>
        <p>Some representative placeholder content for the second slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://cdn.imweb.me/thumbnail/20210325/eaaa679593df1.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Third slide label</h5>
        <p>Some representative placeholder content for the third slide.</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
    
	<!-- footer  http://bit.ly/2T3QiQd-->

	<div class="text-center">
<hr />
		<p>@@2021-12-12 김태호 </p> 
	</div>
</div>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
    
  </body>
</html>