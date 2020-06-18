<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.util.*" %>
    <%@ page import="classes.*"%>
    <%@ page import="DAO.*"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>show absences</title>
</head>
<body>
    <%@ include file="Index.html" %>
    <form action='ShowAbsences.jsp' method='Get'><input type='text' name ='cin'  > <input type='submit' class='' value='search'></form></td>
    
<%  
	AbsenceDao p= new AbsenceDao();
	ResultSet rs = p.selectAll();%>
       <div class="container">
       
        <div class="card ">
            <div class="card-header">
              
                <div class=" row">
                    <a href="#" class="ml-auto"><button  type="button" class="btn btn-secondary"> Reteur <i class="fas fa-arrow-circle-left" style="color:snow;"></i></button></a>
                     </div>

                     <div class="row">
                        <a href="addAbsence.jsp"><button type="button" class="btn btn-success">Ajouter nouveau Absence</button></a>
                         
                   </div>
          
               
            </div>
        



                      <div class="card-body tab-pane active" role="tabpanel" id="Stepe">


                        <table class="table">
                            <thead class="thead-dark">
                              <tr class="text-center" >
                                <th scope="col" >Nom En Francais</th>
                                <th scope="col">الاسم بالعربية</th>
                                <th scope="col">Duree</th>
                                <th scope="col">Date Absence</th>
                                <th scope="col">Justification</th>
                                <th scope="col-2">Options</th>
                                
                              </tr>
                            </thead>
                            <tbody>
                              <% 
                                out.write("<tr>");
                                  
                                    out.write("<td class='align-middle'>"+rs.getString(1)+"</th>");
                                        out.write("<td class='align-middle'>"+rs.getString(2)+"</td>");
                                        out.write("<td class='align-middle'>"+rs.getString(3)+"</td>");
                                        out.write("<td class='align-middle'>"+rs.getString(4)+"</td>");
                                    if(rs.getString(5)=="non-justifier"){
                                        out.write("<td class='align-middle text-center'><div class='btn-danger' style='padding:8px;'><i class='fas fa-times'></i></div></td>");
                                    }else{
                                        out.write("<td class='align-middle text-center'><div class='btn-success' style='padding:8px;'><i class='fas fa-check'></i></div></td>");
                                    }
                                   
                                    out.write("<td class='align-middle text-center'>");
                                        
                                           
                                        out.write("<form  action='UpdateAbsence.jsp' method='POST'>");
                                            out.write("<input type='submit' value='modifier' class='btn btn-info text-center'>");
                                            out.write("</form>");
                                   
                                 
                                  
                                            out.write("</td>");
                                    
                                
                              
                                            out.write("</tr>");
                                            %>
                            </tbody>
                            </table>

                        </div>
                    
                   
      
            
        </div>  

    </div>
</body>
</html>