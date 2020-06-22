<%@ page language="java" contentType="text/html; charset=Utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 
  <!-- Material Design Bootstrap -->
  
  <!-- Your custom styles (optional) -->
  <link rel="stylesheet" href="css/style.css">
  
<title>Insert title here</title>
</head>
<body>
<jsp:include page="Index.html" ></jsp:include>

  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" ></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner ">
   
      <div class="carousel-item active text-center">
        
        <img class="d-block w-100" src="Images/background2.png" alt="First slide" height="670px">
      
      </div>
 
      <div class="carousel-item">
        <img class="d-block w-100" src="Images/background3.png" alt="Second slide" height="670px">
       
      </div>
      <div class="carousel-item">
          <img class="d-block w-100" src="Images/background.png" height="670px">
    
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  

  <div class="container" style="height: 100vh;">
     
    <div class="row align-items-center" style="height: 100vh;" >
      
      <div class="col ">
        <canvas id="pieChart" style="margin-top:60px;"></canvas>
  <i id="absence" style="display: none;">100</i>
  <i id="presence" style="display: none;">200</i>
      </div>
    </div>

 
 </div>


 <script type="text/javascript" src="charts/Chart.min.js"></script>

 <script >
  var ctxP = document.getElementById("pieChart").getContext('2d');
  var absence =document.getElementById("absence").innerText;
  var pre=document.getElementById("presence").innerText;
  var s=parseInt(pre);
  var b=parseInt(absence);
 
var myPieChart = new Chart(ctxP, {
type: 'pie',
data: {
labels: ["Absence : Non-Justifier", "Absence :Justifier"],
datasets: [{
data: [absence, s],
backgroundColor: ["#F7464A", "#46BFBD"],
hoverBackgroundColor: ["#FF5A5E", "#5AD3D1"]
}]
},
options: {
responsive: true
}
});



</script>
 <script >
   $('.carousel').carousel({
    interval:5000,
    pause:false
   
   });
   
 </script>
</body>
</html>