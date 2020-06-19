<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
      <%@ include file="Index.html" %>
       <div class="container">
        <form method="Post" action="Personnels">
        <div class="card ">
            <div class="card-header">
            
                <ul class="nav nav-tabs card-header-tabs ">

                  </ul>
               
            </div>
        
            <div class="tab-content">
                <% Object o= request.getParameter("cin"); %>
               
                <input type="hidden" class=""   name ="cin" value="<%=o%>"><br><br>

                      <div class="card-body tab-pane active" role="tabpanel" id="Stepe">
                        <div class="col-md-6 ml-auto mr-auto ">
                            <div class="form-group row">
                            <label for="num_p">Date d'embauche :</label>
                            <input type="date"  name="Dateembauche"  class="form-control"  required onfocusout="validateNom()">
                            <span class="valid-feedback"></span>
                            </div>
                        </div>
                        <div class="col-md-6 ml-auto mr-auto ">
                            <div class="form-group row">
                            <label for="num_p">Date designation :</label>
                            <input type="date"  name="DateDesignation"  class="form-control"  required onfocusout="validateNom()">
                            <span class="valid-feedback"></span>
                            </div>
                        </div>
                        
                        <div class="col-md-6 ml-auto mr-auto ">
                            <div class="form-group row">
                            <label for="cin">Echelle :</label>
                            <input type="text"  name="Echelle" class="form-control"  required onfocusout="validateNom()">
                            <span class="valid-feedback"></span>
                            </div>
                        </div>

                        <div class="col-md-6 ml-auto mr-auto ">
                            <div class="form-group row">
                            <label for="nom">Echelon:</label>
                            <input type="text" name="Echelon" class="form-control" required onfocusout="validateNom()">
                            <span class="valid-feedback"></span>
                            </div>
                        </div>

                        <div class="col-md-6 ml-auto mr-auto ">
                            <div class="form-group row">
                                <legend class="col-form-label col-sm-3 pt-0">Situation familiale</legend>
                                <div class="col-sm-9">
                                  <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio"  name="Situationfamiliale" id="cele" value="celebataire" checked>
                                    <label class="form-check-label" for="cele">
                                     Celebataire
                                    </label>
                                  </div>
                                  <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio"   name="Situationfamiliale" id="mari" value="Mariee">
                                    <label class="form-check-label" for="mari">
                                     Mariee
                                    </label>
                                  </div>
                                  <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio"  name="Situationfamiliale" id="gveuf" value="veuf">
                                    <label class="form-check-label" for="veuf">
                                        veuf
                                    </label>
                                  </div>
                                  <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio"  name="Situationfamiliale" id="radio" value="divorce">
                                    <label class="form-check-label" for="divorce">
                                    divorce
                                    </label>
                                  </div>
                            </div>
                        </div>
                        
                    </div>


               
                        <div class="col-md-6 ml-auto mr-auto ">
                            <div class="form-group row">
                            <label for="NbreEnfant">Numbre d'Enfant:</label>
                            <input type="Text" name="NbreEnfant"  class="form-control" required onfocusout="validateNom()">
                            <span class="valid-feedback"></span>
                            </div>
                        </div>

                        <div class="col-md-6 ml-auto mr-auto ">
                        <div class="form-group row">
                            <legend class="col-form-label col-sm-4 pt-0">Mariee mploye</legend>
                            <div class="col-sm-8">
                              <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio"  name="Marieemploye"  id="Oui" value="Oui" checked>
                                <label class="form-check-label" for="oui">
                                  Oui
                                </label>
                              </div>
                              
                              <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio"  name="Marieemploye" id="fmale" value="Non">
                                <label class="form-check-label" for="Non">
                                  Non
                                </label>
                              </div>
                        </div>
                    </div>
                        </div>
                    <div class="col-md-6 ml-auto mr-auto ">
                        <div class="form-group row">
                        <label for="Num_tE">Numro  : </label>
                        <input type="Text" name="Num_tE"  class="form-control" required onfocusout="validateNom()">
                        <span class="valid-feedback"></span>
                        </div>
                    </div>


                        <div class="row justify-content-center">
                            <div class="col-3 text-center ">
                            <input type="submit"  class="btn btn-success" name="actionID" value="suivre">
                             </div>
                            
                           </div>
                        
                     
                    
                   
            </div>
            
        </div>  

</body>
</html>