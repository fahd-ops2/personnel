<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ page import="java.util.*" %>
    <%@ page import="classes.*"%>
    <%@ page import="DAO.*"%>
    <%@ page import="java.sql.*"%>

    <%
    String cinn2 =request.getParameter("cin");
    
    MatiereDao peee2= new MatiereDao();
	ResultSet rees2 = peee2.selectbycin(cinn2);
	%>
 <div class="card text-center">
              	<div class="card-header">
               		 <ul class="nav nav-tabs card-header-tabs">
                  	<li class="nav-item">
                   	 <a class="nav-link active" href="#ShowMatieres" data-toggle="tab">Matiers</a>
                 	 </li>
                  	<li class="nav-item">
                   	 <a class="nav-link " href="#addMatiere" data-toggle="tab">ajouter une Matiere</a>
                  	</li>
                  
	                </ul>
              	</div>    
              	<div class="tab-content">  
                  	<div class="card-body tab-pane active" role="tabpanel" id="ShowMatieres">
                      	<table class="table myDatatable" >
                      	<thead class="thead-dark">
                        	<tr class="text-center" >
                          	<th scope="col" >Nom En Francais</th>
                          	<th scope="col">الاسم بالعربية</th>
                          	<th scope="col">Matiere</th>
                     
                        	</tr>
                      	</thead>
                      	<tbody>
                        	<%  while(rees2.next()){
                       		   out.write("<tr>");
                          	    out.write("<td class='align-middle'>"+rees2.getString(1)+"</th>");
                           		   out.write("<td class='align-middle' >"+rees2.getString(2)+"</td>");
                            		  out.write("<td class='align-middle'>"+rees2.getString(3)+"</td>");
                          
                            
                           		   out.write("</tr>");
                         		 }
                        		  rees2.close();
                         		 %>
                     	 </tbody>
                      </table>
                   	</div>
                  
                  <div class="card-body tab-pane" role="tabpanel" id="addMatiere">
                      <div class="row justify-content-center">
                           <div class="col-6 " >
                               <%
									        
									         PersonnelDao persma=new PersonnelDao();
									         ResultSet ressm =persma.selectby(cinn2);
									         while (ressm.next()){
									
									       %>
                              <form method="post" action="Matieres">
                                  
                               <input type='text'   style='display: none;' name='PersonnelID' value="<%=ressm.getInt("ID") %>">
  
                                  <div class="form-group">
                                    <label for="exampleInputEmail1">La Matiere</label>
                                    <input type="text" class="form-control" name="NomMatiere" id="" >
                                    <small id="emailHelp" class="form-text text-muted">Inserer la Matiere</small>
                                  </div>

                                  
  
                                  <input type="submit" name="actionID" class="btn btn-primary"  value="ajout">
                                 
                                </form>
                             <%} %>
                          </div>
                      </div>
                
                 </div>
              </div>  
 </div>
