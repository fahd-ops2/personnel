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
<title>Ajout Absence</title>
</head>
<body>
       <%@ include file="Index.html" %>
       <%
         String cin= request.getParameter("idp");
         PersonnelDao per=new PersonnelDao();
         ResultSet res =per.SelectAll();
       

       %>
   <div class="container">
 <form method="post" action="Absences">
 <div class="card ">
     <div class="card-header">
     
         <ul class="nav nav-tabs card-header-tabs ">

           </ul>
        
     </div>
 
     <div class="tab-content">
        
        


               <div class="card-body tab-pane active" role="tabpanel" id="Stepe">
               
               
                <div class="col-md-6 ml-auto mr-auto ">
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                   <label class="input-group-text" for="inputGroupSelect01">Personnels</label>
                  </div>
                  <select class="custom-select" name="idperso">
                   <option selected>Selectione</option>
                <%  while(res.next()){
                    out.write("<option value='"+res.getString(1)+"'>"+res.getString(2)+"</option>");
                  }
                    %>
                 </select>
                </div>
              </div>
               
               
                 <div class="col-md-6 ml-auto mr-auto ">
                     <div class="form-group row">
                     <label for="dap">duree par jour:</label>
                     <input type="text"  name="duree" class="form-control"  >
                     <span class="valid-feedback"></span>
                     </div>
                 </div>
                 
                 <div class="col-md-6 ml-auto mr-auto ">
                     <div class="form-group row">
                     <label for="dap">Date d'absence < :</label>
                     <input type="date" name="DateAbsence" class="form-control" >
                     <span class="valid-feedback"></span>
                     </div>
                 </div>

                 <div class="form-group row">
                  <legend class="col-form-label col-sm-4 pt-0">Justification</legend>
                  <div class="col-sm-8">
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="justification"   value="justifier" checked>
                      <label class="form-check-label" >
                        justifier
                      </label>
                    </div>
                    
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="justification" value=" Non-justifier">
                      <label class="form-check-label" >
                       Non-justifier
                      </label>
                    </div>
              </div>
          </div>

         

                 <div class="row justify-content-center">
                     <div class="col-3 text-center ">
                     <input type="submit"  class="btn btn-success" name="actionID" value="save">
                      </div>
                     
                    </div>
                 
              
             
            
     </div>
     </div>
     </div>
     </form>
  
 </div>  
</body>
</html>