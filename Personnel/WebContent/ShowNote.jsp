<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.util.*" %>
    <%@ page import="classes.*"%>
    <%@ page import="DAO.*"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>show note</title>
</head>
<body>
    <% 
    String cins =request.getParameter("cin");
   
	NoteAdminDao pea= new NoteAdminDao();
	ResultSet reas = pea.selectAllbycin(cins);
	
	NoteProspDao pee=new NoteProspDao();
	ResultSet rees = pee.selectAllbycin(cins);
	%>
	
	
	<div class="card text-center">
              <div class="card-header">
                <ul class="nav nav-tabs card-header-tabs">
                  <li class="nav-item">
                    <a class="nav-link active" href="#noteAd" data-toggle="tab">note administratif</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link " href="#notePro" data-toggle="tab">note prospection</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#NoteAdministratif" data-toggle="tab">Ajout d'une note Administratif</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#hello" data-toggle="tab">Ajout d'une note prospection</a>
                  </li>
                  
                  
                </ul>
              </div>    
              <div class="tab-content">  
                  <div class="card-body tab-pane active" role="tabpanel" id="noteAd">
                      <table class="table myDatatable" >
                      <thead class="thead-dark">
                        <tr class="text-center" >
                          <th scope="col" >Nom En Francais</th>
                          <th scope="col">الاسم بالعربية</th>
                          <th scope="col">Note adminstratif</th>
                     
                        </tr>
                      </thead>
                      <tbody>
                        <%  while(reas.next()){
                          out.write("<tr>");
                              out.write("<td class='align-middle'>"+reas.getString(1)+"</th>");
                              out.write("<td class='align-middle' >"+reas.getString(2)+"</td>");
                              out.write("<td class='align-middle'>"+reas.getString(3)+"</td>");
                          
                            
                              out.write("</tr>");
                          }
                        reas.close();
                          %>
                      </tbody>
                      </table>
                   </div>
                   <div class="card-body tab-pane" role="tabpanel" id="notePro">
                    <table class="table myDatatable" >
                    <thead class="thead-dark">
                      <tr class="text-center" >
                        <th scope="col" >Nom En Francais</th>
                        <th scope="col">الاسم بالعربية</th>
                        <th scope="col">Note prospection</th>
                        <th scope="col">Date obtention</th>
                   
                      </tr>
                    </thead>
                    <tbody>
                      <%  while(rees.next()){
                        out.write("<tr>");
                            out.write("<td class='align-middle'>"+rees.getString(1)+"</th>");
                            out.write("<td class='align-middle' >"+rees.getString(2)+"</td>");
                            out.write("<td class='align-middle'>"+rees.getString(3)+"</td>");
                            out.write("<td class='align-middle'>"+rees.getString(4)+"</td>");
                         
                          
                            out.write("</tr>");
                        }
                      rees.close();
                        %>
                    </tbody>
                    </table>
                 </div>
                  <div class="card-body tab-pane" role="tabpanel" id="NoteAdministratif">
                      <div class="row justify-content-center">
                           <div class="col-6 " >
                             <%
					         
					         PersonnelDao pern=new PersonnelDao();
					         ResultSet respn =pern.selectby(cins);
					         while (respn.next()){

       						%>
                              <form method="post" action="Notes">
                                  
                              <input type='text' class=''  style='display: none;' name='PersonnelID' value="<%=respn.getInt("ID")%>">
  
                                  <div class="form-group">
                                    <label for="exampleInputEmail1">La Note Administratif</label>
                                    <input type="text" class="form-control"  name="NoteAdministratif" id="" >
                                    <small id="emailHelp" class="form-text text-muted">Inserer la Mission</small>
                                  </div>
  
                                  <input type="submit" name="actionID" class="btn btn-primary" value="addNotea">
                                 
                                </form>
                             
                          </div>
                      </div>
                  </div>
                  <div class="card-body tab-pane" role="tabpanel" id="hello">
                    <div class="row justify-content-center">
                         <div class="col-6 " >
         
                            <form method="post" action="Notes">
                                <input type='text' class=''  style='display: none;' name='PersonnelID' value="<%=respn.getInt("ID")%>">
                              

                                <div class="form-group">
                                  <label for="exampleInputEmail1">note prospection</label>
                                  
                                  <input type="text" class="form-control"  name="NoteProspection" id="" >
                                  <small id="emailHelp" class="form-text text-muted">Inserer la note </small>
                                </div>

                                <div class="form-group">
                                  <label for="exampleInputEmail1">Date obtention Pro </label>
                                  <input type="date" class="form-control"  name="DateobtentionPro" id="" >
                                  <small id="emailHelp" class="form-text text-muted">Inserer la date </small>
                                </div>

                                <input type="submit" name="actionID" class="btn btn-primary" value="addNotep">
                               
                              </form>
                           <%} %>
                        </div>
                    </div>
                </div>
              </div>  
 </div>
</body>
</html>