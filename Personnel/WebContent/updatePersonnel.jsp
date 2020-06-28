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
 
  

    <link rel="stylesheet" href="fontawsome/css/all.min.css">
    
        
       
  	
         
         
<title>update</title>
</head>
<body >   
         <%@ include file="Index.html" %>
        <div class="container">
    <form method="Post" action="Personnels">
    <div class="card ">
        <div class="card-header">
            <div class=" row">
                <a href="ShowPersonnel.jsp" class="ml-auto"><button  type="button" class="btn btn-secondary"> Retour <i class="fas fa-arrow-circle-left" style="color:snow;"></i></button></a>
                 </div>
         
        </div>
    
        <div class="tab-content">
            <% String o= request.getParameter("cin");
            PersonnelDao  pes = new PersonnelDao();
            ResultSet res=pes.selectby(o);
            while(res.next()){
          %>
          <input type="hidden" class=""   style="display: none;" name="cin" value="<%=o%>">
           
                
                    

                    <div class="col-md-6 ml-auto mr-auto ">
                        <div class="form-group row">
                        <label for="nom">Nom en Francais</label>
                        <input type="text" name="Pren_n"  class="form-control" value="<%=res.getString("Pren_n")%>">
                        <span class="valid-feedback"></span>
                        </div>
                    </div>

                    <div class="col-md-6 ml-auto mr-auto ">
                        <div class="form-group row">
                        <label for="Pren_n_arabe"> الاسم بالعربية</label>
                        <input type="text" name="Pren_n_arabe"  class="form-control" value="<%=res.getString("Pren_n_arabe")%>">
                        <span class="valid-feedback"></span>
                        </div>
                    </div>
                    

                    <div class="col-md-6 ml-auto mr-auto ">
                        <div class="form-group row">
                        <label for="adresse">Adresse</label>
                        <textarea class="form-control" name="adresse" rows="3"  value="<%=res.getString("Adresse")%>"> <%=res.getString("Adresse")%></textarea>
                        <span class="valid-feedback"></span>
                        </div>
                    </div>

                    <div class="col-md-6 ml-auto mr-auto ">
                        <div class="form-group row">
                        <label for="tel">Tel</label>
                        <input type="text" name="Tel"  class="form-control"  value="<%=res.getString("Tel")%>">
                        <span class="valid-feedback"></span>
                        </div>
                    </div>

                    <% if(res.getString("nationalite")=="oui"){
                    out.write("<div class='col-md-6 ml-auto mr-auto ''>");
                        out.write("<div class='form-group row'>");
                            out.write("<legend class='col-form-label col-sm-4 pt-0'>Nationalite marocain(e)</legend>");
                            out.write("<div class='col-sm-8'>");
                                out.write("<div class='form-check form-check-inline'>");
                                    out.write("<input class='form-check-input' type='radio'  type='radio'  name='nationalite'  value='Oui' checked>"); 
                                    out.write("<label class='form-check-label' for='gridRadios1'>");
                                        out.write("Oui");
                                  out.write("</label>");
                                  out.write("</div>");
                                  out.write("<div class='form-check form-check-inline'>");
                                    out.write("<input class='form-check-input' type='radio'    name='nationalite' value='Non'>");
                                    out.write("<label class='form-check-label' for='gridRadios2'>");
                                        out.write("Non");
                                        out.write("</label>");
                                        out.write("</div>");
                                        out.write("</div>");
                                        out.write("</div>");
                                        out.write("</div>");
                                    }else{

                                        out.write("<div class='col-md-6 ml-auto mr-auto ''>");
                                            out.write("<div class='form-group row'>");
                                                out.write("<legend class='col-form-label col-sm-4 pt-0'>Nationalite marocain(e)</legend>");
                                                out.write("<div class='col-sm-8'>");
                                                    out.write("<div class='form-check form-check-inline'>");
                                                        out.write("<input class='form-check-input' type='radio'  type='radio' name='nationalite'   value='Oui' >"); 
                                                        out.write("<label class='form-check-label' for='gridRadios1'>");
                                                            out.write("Oui");
                                                      out.write("</label>");
                                                      out.write("</div>");
                                                      out.write("<div class='form-check form-check-inline'>");
                                                        out.write("<input class='form-check-input' type='radio'  name='nationalite'  checked value='Non'>");
                                                        out.write("<label class='form-check-label' for='gridRadios2'>");
                                                            out.write("Non");
                                                            out.write("</label>");
                                                            out.write("</div>");
                                                            out.write("</div>");
                                                            out.write("</div>");
                                                            out.write("</div>");

                                    }
                            %>

                            
                    <div class="col-md-6 ml-auto mr-auto ">
                        <div class="form-group row">
                        <label for="tel">Echelle</label>
                        <input type="text" name="Echelle" value="<%=res.getString("Echelle")%>"  class="form-control"  >
                        <span class="valid-feedback"></span>
                        </div>
                    </div>
                    
                    <div class="col-md-6 ml-auto mr-auto ">
                        <div class="form-group row">
                        <label for="tel">Echelon:</label>
                        <input type="text" name="Echelon" value="<%=res.getString("Echelon")%>"  class="form-control"  >
                        <span class="valid-feedback"></span>
                        </div>
                    </div>


                    <% if(res.getString("Situationfamiliale").equals("armal")){

                        out.write("<div class='col-md-6 ml-auto mr-auto'>");
                            out.write("<div class='form-group row'>");
                                out.write("<legend class='col-form-label col-sm-3 pt-0'>Situation familiale</legend>");
                                out.write("<div class='col-sm-9'>");
                                    out.write("<div class='form-check form-check-inline'>");
                                        out.write("<input class='form-check-input' type='radio' name='Situationfamiliale'    value='armal'checked >"); 
                                        out.write("<label class='form-check-label' for='gridRadios1'>");
                                            out.write(" Celebataire");
                                      out.write("</label>");
                                      out.write("</div>");

                                      out.write("<div class='form-check form-check-inline'>");
                                        out.write("<input class='form-check-input'   type='radio' name='Situationfamiliale'   value='Mariee'   >"); 
                                        out.write("<label class='form-check-label' for='gridRadios1'>");
                                            out.write("Mariee");
                                      out.write("</label>");
                                      out.write("</div>");

                                      out.write("<div class='form-check form-check-inline'>");
                                        out.write("<input class='form-check-input'   type='radio' name='Situationfamiliale'    value='veuf'>"); 
                                        out.write("<label class='form-check-label' for='gridRadios1'>");
                                            out.write("veuf");
                                      out.write("</label>");
                                      out.write("</div>"); 

                                      out.write("<div class='form-check form-check-inline'>");
                                        out.write("<input class='form-check-input' type='radio'   name='Situationfamiliale'  value='motala9'>");
                                        out.write("<label class='form-check-label' for='gridRadios2'>");
                                            out.write("divorce");
                                            out.write("</label>");
                                            out.write("</div>");
                                            out.write("</div>");
                                            out.write("</div>");
                                            out.write("</div>");

                                        }else if(res.getString("Situationfamiliale").equals("motala9")){
    
                                            out.write("<div class='col-md-6 ml-auto mr-auto ''>");
                                                out.write("<div class='form-group row'>");
                                                    out.write("<legend class='col-form-label col-sm-3 pt-0'>Situation familiale</legend>");
                                                    out.write("<div class='col-sm-9'>");
                                                        out.write("<div class='form-check form-check-inline'>");
                                                            out.write("<input class='form-check-input' type='radio'  type='radio' name='Situationfamiliale'    value='Oui' >"); 
                                                            out.write("<label class='form-check-label' for='gridRadios1'>");
                                                                out.write(" Celebataire");
                                                          out.write("</label>");
                                                          out.write("</div>");

                                                          out.write("<div class='form-check form-check-inline'>");
                                                            out.write("<input class='form-check-input'   type='radio' name='Situationfamiliale'   value='Oui' checked  >"); 
                                                            out.write("<label class='form-check-label' for='gridRadios1'>");
                                                                out.write("Mariee");
                                                          out.write("</label>");
                                                          out.write("</div>");

                                                          out.write("<div class='form-check form-check-inline'>");
                                                            out.write("<input class='form-check-input'  type='radio' name='Situationfamiliale'    value='Oui'>"); 
                                                            out.write("<label class='form-check-label' for='gridRadios1'>");
                                                                out.write("veuf");
                                                          out.write("</label>");
                                                          out.write("</div>"); 

                                                          out.write("<div class='form-check form-check-inline'>");
                                                            out.write("<input class='form-check-input' type='radio'   name='Situationfamiliale'  value='Non'>");
                                                            out.write("<label class='form-check-label' for='gridRadios2'>");
                                                                out.write("divorce");
                                                                out.write("</label>");
                                                                out.write("</div>");
                                                                out.write("</div>");
                                                                out.write("</div>");
                                                                out.write("</div>");
     
                                        }else if(res.getString("Situationfamiliale").equals("motazawij")){
    
                                            out.write("<div class='col-md-6 ml-auto mr-auto '>");
                                                out.write("<div class='form-group row'>");
                                                    out.write("<legend class='col-form-label col-sm-3 pt-0'>Situation familiale</legend>");
                                                    out.write("<div class='col-sm-9'>");
                                                        out.write("<div class='form-check form-check-inline'>");
                                                            out.write("<input class='form-check-input'  type='radio' name='Situationfamiliale'    value='Oui' >"); 
                                                            out.write("<label class='form-check-label' for='gridRadios1'>");
                                                                out.write(" Celebataire");
                                                          out.write("</label>");
                                                          out.write("</div>");

                                                          out.write("<div class='form-check form-check-inline'>");
                                                            out.write("<input class='form-check-input'  type='radio' name='Situationfamiliale'   value='Oui' >"); 
                                                            out.write("<label class='form-check-label' for='gridRadios1'>");
                                                                out.write("Mariee");
                                                          out.write("</label>");
                                                          out.write("</div>");

                                                          out.write("<div class='form-check form-check-inline'>");
                                                            out.write("<input class='form-check-input'  type='radio' name='Situationfamiliale'    value='Oui' checked >"); 
                                                            out.write("<label class='form-check-label' for='gridRadios1'>");
                                                                out.write("veuf");
                                                          out.write("</label>");
                                                          out.write("</div>"); 

                                                          out.write("<div class='form-check form-check-inline'>");
                                                            out.write("<input class='form-check-input' type='radio'   name='Situationfamiliale'  value='Non'>");
                                                            out.write("<label class='form-check-label' for='gridRadios2'>");
                                                                out.write("divorce");
                                                                out.write("</label>");
                                                                out.write("</div>");
                                                                out.write("</div>");
                                                                out.write("</div>");
                                                                out.write("</div>");
    
                                        }
                                        else if(res.getString("Situationfamiliale").equals("celib")){
    
                                            out.write("<div class='col-md-6 ml-auto mr-auto'>");
                                                out.write("<div class='form-group row'>");
                                                    out.write("<legend class='col-form-label col-sm-3 pt-0'>Situation familiale</legend>");
                                                    out.write("<div class='col-sm-9'>");
                                                        out.write("<div class='form-check form-check-inline'>");
                                                            out.write("<input class='form-check-input' type='radio' name='Situationfamiliale'    value='Oui' >"); 
                                                            out.write("<label class='form-check-label' for='gridRadios1'>");
                                                                out.write(" Celebataire");
                                                          out.write("</label>");
                                                          out.write("</div>");

                                                          out.write("<div class='form-check form-check-inline'>");
                                                            out.write("<input class='form-check-input'  type='radio' name='Situationfamiliale'   value='Oui' >"); 
                                                            out.write("<label class='form-check-label' for='gridRadios1'>");
                                                                out.write("Mariee");
                                                          out.write("</label>");
                                                          out.write("</div>");

                                                          out.write("<div class='form-check form-check-inline'>");
                                                            out.write("<input class='form-check-input' type='radio' name='Situationfamiliale'    value='Oui' >"); 
                                                            out.write("<label class='form-check-label' for='gridRadios1'>");
                                                                out.write("veuf");
                                                          out.write("</label>");
                                                          out.write("</div>"); 

                                                          out.write("<div class='form-check form-check-inline'>");
                                                            out.write("<input class='form-check-input' type='radio'   name='Situationfamiliale'  checked value='Non'>");
                                                            out.write("<label class='form-check-label' for='gridRadios2'>");
                                                                out.write("divorce");
                                                                out.write("</label>");
                                                                out.write("</div>");
                                                                out.write("</div>");
                                                                out.write("</div>");
                                                                out.write("</div>");
    
                                        };
                                %>
    
                                <div class="col-md-6 ml-auto mr-auto ">
                                    <div class="form-group row">
                                    <label for="tel">NbreEnfant:</label>
                                    <input type="text"  name="NbreEnfant" value="<%=res.getString("NbreEnfant")%>"  class="form-control"  >
                                    <span class="valid-feedback"></span>
                                    </div>
                                </div>

                                <% if(res.getString("Marieemploye")=="oui"){
                                    out.write("<div class='col-md-6 ml-auto mr-auto'>");
                                        out.write("<div class='form-group row'>");
                                            out.write("<legend class='col-form-label col-sm-4 pt-0'>Marieemploye</legend>");
                                            out.write("<div class='col-sm-8'>");
                                                out.write("<div class='form-check form-check-inline'>");
                                                    out.write("<input class='form-check-input'  type='radio' name='Marieemploye'  value='Oui' checked>"); 
                                                    out.write("<label class='form-check-label' for='gridRadios1'>");
                                                        out.write("Oui");
                                                  out.write("</label>");
                                                  out.write("</div>");
                                                  out.write("<div class='form-check form-check-inline'>");
                                                    out.write("<input class='form-check-input' type='radio'   name='Marieemploye' value='Non'>");
                                                    out.write("<label class='form-check-label' for='gridRadios2'>");
                                                        out.write("Non");
                                                        out.write("</label>");
                                                        out.write("</div>");
                                                        out.write("</div>");
                                                        out.write("</div>");
                                                        out.write("</div>");
                                                    }else{
                
                                                        out.write("<div class='col-md-6 ml-auto mr-auto'>");
                                                            out.write("<div class='form-group row'>");
                                                                out.write("<legend class='col-form-label col-sm-4 pt-0'>Marieemploye</legend>");
                                                                out.write("<div class='col-sm-8'>");
                                                                    out.write("<div class='form-check form-check-inline'>");
                                                                        out.write("<input class='form-check-input'  type='radio'name='Marieemploye'   value='Oui' >"); 
                                                                     out.write("<label class='form-check-label' for='gridRadios1'>");
                                                                        out.write("Oui");
                                                                   out.write("</label>");
                                                                out.write("</div>");
                                                                    out.write("<div class='form-check form-check-inline'>");
                                                                     out.write("<input class='form-check-input' type='radio' name='Marieemploye' checked value='Non'>");
                                                                    out.write("<label class='form-check-label' for='gridRadios2'>");
                                                                 out.write("Non");
                                                                     out.write("</label>");
                                                                    out.write("</div>");
                                                               out.write("</div>");
                                                              out.write("</div>");
                                                              out.write("</div>");
                                                              out.write("</div>");
                
                                                    }
                                            %>

                                <div class="col-md-6 ml-auto mr-auto">
                                    <div class="form-group row">
                                    <label for="tel">Num_tE</label>
                                    <input type="text"   name="Num_tE" value="<%=res.getString("Num_tE")%>"  class="form-control"  >
                                    <span class="valid-feedback"></span>
                                    </div>
                                </div>

     
                 <%} %>
                    <div class="row justify-content-center">
                        <div class="col-3 text-center ">
                        <input type="submit"  class="btn btn-success" name="actionID" value="update">
                         </div>
                        
                       </div>
                    
                
                
               </div>
        </div>
        </form>
        
    </div>  

</body>
</html>