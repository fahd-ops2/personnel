<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.*" %>
    <%@ page import="classes.*"%>
    <%@ page import="DAO.*"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    
   
    
    <link rel="stylesheet" href="fontawsome/css/all.min.css">
<title>update</title>
</head>
<body>
      <%@ include file="Index.html" %>
       <div class="container">
        <form method="post" action="Admins">
        <div class="card ">
            <div class="card-header">
                <div class=" row">
                    <a href="ShowPersonnel.jsp" class="ml-auto"><button  type="button" class="btn btn-secondary"> Retour <i class="fas fa-arrow-circle-left" style="color:snow;"></i></button></a>
                     </div>
             
            </div>
        
            <div class="tab-content">
                <% int o= Integer.parseInt(request.getParameter("mod"));
         AdminDao ad= new AdminDao();
         ResultSet res=ad.selectby(o);
         while(res.next()){
      %>
              <input type="hidden" class=""   style="display: none;" name="cin" value="<%=o%>">
               
                    
                        <div class="col-md-6 ml-auto mr-auto ">
                            <div class="form-group row">
                            <label for="num_p">Numero</label>
                            <input type="email" name="email"  class="form-control"  value="<%=res.getString("login")%>">
                            <span class="valid-feedback"></span>
                            </div>
                        </div>
                        
                        <div class="col-md-6 ml-auto mr-auto ">
                            <div class="form-group row">
                            <label for="cin">Password</label>
                            <input type="password""  name="password"  class="form-control"  ">
                            <span class="valid-feedback"></span>
                            </div>
                        </div>
    
                        <div class="col-md-6 ml-auto mr-auto ">
                            <div class="form-group row">
                            <label for="nom">Confirm Password</label>
                            <input type="password" name="nothing"  class="form-control" value="<%=res.getString("Pren_n")%>">
                            <span class="valid-feedback"></span>
                            </div>
                        </div>

                      
    
                       
    
                        <div class="row justify-content-center">
                            <div class="col-3 text-center ">
                            <input type="submit"  class="btn btn-success" name="actionID" value="save">
                             </div>
                            
                           </div>
                        
                    <%} %>
                    
                   </div>
            </div>
            </form>
            
        </div> 
</body>
</html>