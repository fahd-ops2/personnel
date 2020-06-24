<%@ page language="java" contentType="text/html; charset=Utf-8"
    pageEncoding="utf-8"%>
      <%@ page import="java.util.*" %>
    <%@ page import="classes.*"%>
    <%@ page import="DAO.*"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
   <!-- Bootstrap CSS -->
       <link rel="stylesheet" href="css/bootstrap.min.css">
       <script src="js/jquery.min.js"></script>
  
         <script src="js/bootstrap.min.js" ></script>
      
         <link rel="stylesheet" href="fontawsome/css/all.min.css">
    

<title>Insert title here</title>
</head>
<body>

        <% PersonnelDao prd = new PersonnelDao();
           ResultSet rp=prd.countall();
         while(rp.next()){
         %>
         
        
        
       
        
        
<jsp:include page="Index.html" ></jsp:include>

  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" ></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
   <div class="carousel-inner ">
   
      <div class="carousel-item active text-center">
        <div class="text-center" style="position: absolute;background: linear-gradient(45deg, yellow ,red);width:100% ; height: 670px;color: snow;">
         <div style="margin-top:180px;"> <h1 style="font-size: 5em;">BIENVENEUE</h1>
          <button type="button" class="btn btn-primary btn-lg">Personnel</button>
        </div>
        </div>
        
        <img class="d-block w-100" src="Images/background2.png" alt="First slide" height="670px" style="z-index: -1;">
      
      </div>
 
      <div class="carousel-item">
        <div class="text-center" style="position: absolute;background: linear-gradient(45deg, rgba(0, 0, 0, 0.6) ,rgba(255, 255, 255, 0.5) );width:100% ; height: 670px;">
     
            <div class="card-deck" style="margin-top: 200px;color: snow;margin:  200px;">
              <div class="card" style="background:none;border:none;">
               
                <div class="card-body">
                  <h5 class="card-title" style="font-size: 1.5em;">Gestion d'absence</h5>
                  <i class='fas fa-check'  style="font-size: 3em;" style="padding: 0px;"></i>
                  
                </div>
              </div>
              <div class="card" style="background:none;border:none;">
               
                <div class="card-body">
                  <h5 class="card-title" style="font-size: 1.5em;">Gestion de Personnel</h5>
                  <i class='fas fa-check'  style="font-size: 3em;" style="padding: 0px;"></i>
               
                </div>
              </div>
              <div class="card" style="background:none;border:none;">
             
                <div class="card-body">
                  <h5 class="card-title" style="font-size: 1.5em;">Gestion d'admins</h5>
                  <i class='fas fa-check'  style="font-size: 3em;" style="padding: 0px;"></i>
                 
                </div>
              </div>
            </div>
          </div>
     
        <img class="d-block w-100" src="Images/img1.jpg" alt="Second slide" height="670px" style="z-index: -1;">
       
      </div>
      <div class="carousel-item">
        <div class="text-center" style="position: absolute;background: linear-gradient(45deg, rgba(0, 0, 0, 0.8) ,rgba(255, 255, 255, 0.2) );width:100% ; height: 670px;">
        <div style="width: 900px;margin:190px ; margin-left:300px;color: snow;">
          <h1><i class="fas fa-chart-pie" style="font-size: 5em;"></i></h1>
          <h1>Statistics</h1>
        </div>
       </div>
       </div>
          <img class="d-block w-100" src="Images/img2.jpg" height="670px" style="z-index: -1;">
    
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
             
             <div class="num" style="font-size: xx-large; color: #F7464A;" data-target="<%=rp.getObject(1) %>"><%  }rp.close();
        %>
              0						 <!-- mat9isch 0 fkola whda  -->
             </div>
             Personnel
        </div>
          <%  AbsenceDao abd = new AbsenceDao();
              rp=abd.countalljus();
               while(rp.next()){
                %>
         
        
        
        <div class="col-4 num-absence-justifier text-center">
             <div>
               <i class='fas fa-check'  style="font-size: 3em;" style="padding: 0px;"></i>
             
             </div> 
             					<!-- Absence justifier  -->
             					
             <div class="num" style="font-size: xx-large; color: #F7464A;" data-target="<%=rp.getObject(1) %>"><%} rp.close(); %>
               0
             </div>
             Absence justifier
       </div>
       <div class="col-4 num-absence-non-justifer text-center">
         <div>
           <i class='fas fa-times'  style="font-size: 3em;"></i>
           
         </div> 
         
        							 <!-- Absence Non-justifier  -->
        <%  abd = new AbsenceDao();
         rp=abd.countallnjus();
         while(rp.next()){
         %>
        
     
					 
         <div class="num" style="font-size: xx-large;color: #F7464A;" data-target="<%=rp.getObject(1) %>"><%} rp.close(); %>	
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
    <%   abd = new AbsenceDao();
              rp=abd.countalljus();
               while(rp.next()){
                %>    								 
  <i id="absenceJ" style="display: none;"><%=rp.getObject(1) %></i><%} rp.close(); %>
  <%  abd = new AbsenceDao();
         rp=abd.countallnjus();
         while(rp.next()){
         %>
        
  <i id="absenceN" style="display: none;"><%=rp.getObject(1) %></i><%} rp.close(); %>
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