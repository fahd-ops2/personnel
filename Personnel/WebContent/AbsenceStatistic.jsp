<%@ page language="java" contentType="text/html; charset=Utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 
  <!-- Material Design Bootstrap -->
  
  <!-- Your custom styles (optional) -->
  
    

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
       <div class="row align-items-center"  >
										<!-- Hna ghdi tl9a fkola div class num fiha whd  data target 3mrha b data 3la hsab kola whda : -->
        <div class="col-4 num-personnels text-center">
             <div >
               <i class="fas fa-user-friends" style="font-size: 3em;" ></i>
             </div>
             
             							<!-- Peronnel Data target ht fiha data dyal personnel -->
             
             <div class="num" style="font-size: xx-large; color: #F7464A;" data-target="1876">
              0						 <!-- mat9isch 0 fkola whda  -->
             </div>
             Personnel
        </div>
        <div class="col-4 num-absence-justifier text-center">
             <div>
               <i class='fas fa-check'  style="font-size: 3em;" style="padding: 0px;"></i>
             
             </div> 
             					<!-- Absence justifier  -->
             					
             <div class="num" style="font-size: xx-large; color: #F7464A;" data-target="150">
               0
             </div>
             Absence justifier
       </div>
       <div class="col-4 num-absence-non-justifer text-center">
         <div>
           <i class='fas fa-times'  style="font-size: 3em;"></i>
           
         </div> 
         
        							 <!-- Absence Non-justifier  -->
        							 
         <div class="num" style="font-size: xx-large;color: #F7464A;" data-target="60">
         0
         </div>
         Absence Non-justifier
       </div>
      </div>

      <script src="js/count.js"></script>
    <div class="row align-items-center" style="height: 100vh;" >
      
      <div class="col ">
        <canvas id="pieChart" style=""></canvas>
        
       								 <!-- bdel les valuer dyal absenceJ:justifier o absenceN : Non justifier -->
       								 
  <i id="absenceJ" style="display: none;">100</i>
  <i id="absenceN" style="display: none;">200</i>
      </div>
    </div>

 
 </div>

<script src="js/count.js"></script>
 <script type="text/javascript" src="charts/Chart.min.js"></script>

 <script >
  var ctxP = document.getElementById("pieChart").getContext('2d');
  var absence =document.getElementById("absenceJ").innerText;
  var pre=document.getElementById("absenceN").innerText;
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