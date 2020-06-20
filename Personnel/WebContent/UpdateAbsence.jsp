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
<title>Insert title here</title>
</head>
<body> 

       <%@ include file="Index.html" %><br>
      
   <div class="container">
 <form method="post" action="Absences">
 <div class="card ">
     <div class="card-header">
     
         <ul class="nav nav-tabs card-header-tabs ">

           </ul>
        
     </div>
 
     <div class="tab-content">
      <% 
      int o= Integer.parseInt(request.getParameter("id"));
      AbsenceDao ad= new AbsenceDao();
      ResultSet res=ad.selectbyid(o);
      while(res.next()){
   %>
        
        
      <input type="hidden" class=""   name="idperso" value="<%=res.getInt("ID") %>"><br><br>

               <div class="card-body tab-pane active" role="tabpanel" id="Stepe">
                 <div class="col-md-6 ml-auto mr-auto ">
                     <div class="form-group row">
                     <label for="dap">duree par jour:</label>
                     <input type="text"  name="duree" class="form-control"  value="<%=res.getString("duree") %>" >
                     <span class="valid-feedback"></span>
                     </div>
                 </div>
                 <% 
              
                 if(res.getString(5).equals("justifier")){
                  out.write("<div class='form-group row'>");
                  out.write("<legend class='col-form-label col-sm-4 pt-0'>Justification</legend>");
                  out.write("<div class='col-sm-8'>");
                  out.write("<div class='form-check form-check-inline'>");  
                  out.write("<input class='form-check-input'  type='radio' name='justification'   value='justifier' checked>");  
                  out.write(" <label class='form-check-label' >");   
                  out.write(" justifier");      
                  out.write(" </label>");     
                  out.write(" </div>");   
                      
                  out.write("<div class='form-check form-check-inline'>");    
                  out.write(" <input class='form-check-input' type='radio' name='justification' value='Non-justifier'>");     
                  out.write(" <label class='form-check-label' >");    
                  out.write(" Non-justifier");    
                  out.write(" </label>");   
                  out.write(" </div>");  
                  out.write("</div>");  
                  out.write("</div>"); 
  

                 }else{
                	 out.write("<div class='form-group row'>"); 
                	 out.write("<legend class='col-form-label col-sm-4 pt-0'>Justification</legend>");
                	 out.write("<div class='col-sm-8'>");
                	 out.write("<div class='form-check form-check-inline'>"); 
                	 out.write("<input class='form-check-input' type='radio' name='justification'   value='justifier'>");  
                	 out.write("<label class='form-check-label' >");  
                	 out.write("justifier");    
                	 out.write("</label>");  
                	 out.write("</div>"); 
                      
                	 out.write("<div class='form-check form-check-inline'>"); 
                	 out.write(" <input class='form-check-input' type='radio' name='justification' value='Non-justifier'  checked>");  
                	 out.write(" <label class='form-check-label' >");  
                	 out.write(" Non-justifier");  
                	 out.write(" </label>"); 
                	 out.write("</div>"); 
                	 out.write("</div>");
                	 out.write("</div>"); 
                 }
                 %>

         

                 <div class="row justify-content-center">
                     <div class="col-3 text-center ">
                     <input type="submit"  class="btn btn-success" name="actionID" value="updateAb">
                      </div>
                     
                    </div>
                 
              <%}%>
             
            
     </div>
     </div>
     </div>
     </form>
     
 </div>  
		
</body>
</html>