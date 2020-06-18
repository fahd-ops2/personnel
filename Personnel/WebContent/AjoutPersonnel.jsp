<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset=utf-8 >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
      <%@ include file="Index.html" %>
       <div class="container">
        <form method="Post" action="Personnels">
        <div class="card ">
            <div class="card-header">
                <div class=" row">
                    <a href="ShowPersonnel.jsp" class="ml-auto"><button  type="button" class="btn btn-secondary"> Retour <i class="fas fa-arrow-circle-left" style="color:snow;"></i></button></a>
                     </div>
                <ul class="nav nav-tabs card-header-tabs ">
                    <li class="nav-item">
                      <a class="nav-link active " href="#Stepe" data-toggle="tab">Ajoute Personnel</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link " href="#Steps" data-toggle="tab">Suivi L'ajoute </a>
                    </li>
                
                   
                  </ul>
               
            </div>
        
            <div class="tab-content">
               
                      <div class="card-body tab-pane active" role="tabpanel" id="Stepe">
                        <div class="col-md-6 ml-auto mr-auto ">
                            <div class="form-group row">
                            <label for="num_p">Numero</label>
                            <input type="text" name="num_p"  class="form-control"  required onfocusout="validateNom()">
                            <span class="valid-feedback"></span>
                            </div>
                        </div>
                        
                        <div class="col-md-6 ml-auto mr-auto ">
                            <div class="form-group row">
                            <label for="cin">CIN</label>
                            <input type="text"  name="cin"  class="form-control"  required onfocusout="validateNom()">
                            <span class="valid-feedback"></span>
                            </div>
                        </div>

                        <div class="col-md-6 ml-auto mr-auto ">
                            <div class="form-group row">
                            <label for="nom">Nom en Francais</label>
                            <input type="text" name="Pren_n"  class="form-control" required onfocusout="validateNom()">
                            <span class="valid-feedback"></span>
                            </div>
                        </div>

                        <div class="col-md-6 ml-auto mr-auto ">
                            <div class="form-group row">
                            <label for="Pren_n_arabe"> الاسم بالعربية</label>
                            <input type="text" name="Pren_n_arabe"  class="form-control" required onfocusout="validateNom()">
                            <span class="valid-feedback"></span>
                            </div>
                        </div>
                        
                    </div>
                     <div class="card-body tab-pane" role="tabpanel" id="Steps">

                        <div class="col-md-6 ml-auto mr-auto ">
                            <div class="form-group row">
                            <label for="Datenaissance">Date de Naissance</label>
                            <input type="date" name="Datenaissance"  class="form-control" required onfocusout="validateNom()">
                            <span class="valid-feedback"></span>
                            </div>
                        </div>

                        <div class="col-md-6 ml-auto mr-auto ">
                            <div class="form-group row">
                            <label for="adresse">Adresse</label>
                            <textarea class="form-control" name="adresse" rows="3"></textarea>
                            <span class="valid-feedback"></span>
                            </div>
                        </div>

                        <div class="col-md-6 ml-auto mr-auto ">
                            <div class="form-group row">
                            <label for="tel">Tel</label>
                            <input type="text" name="Tel"  class="form-control"  required onfocusout="validateNom()">
                            <span class="valid-feedback"></span>
                            </div>
                        </div>
                        <div class="col-md-6 ml-auto mr-auto ">
                            <div class="form-group row">
                                <legend class="col-form-label col-sm-4 pt-0">Nationalite marocain(e)</legend>
                                <div class="col-sm-8">
                                  <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio"  name="nationalite" id="gridRadios1" value="option1" checked>
                                    <label class="form-check-label" for="gridRadios1">
                                      Oui
                                    </label>
                                  </div>
                                  <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio"  name="nationalite" id="gridRadios2" value="option2">
                                    <label class="form-check-label" for="gridRadios2">
                                     Non
                                    </label>
                                  </div>
                            </div>
                        </div>

                        
                            <div class="form-group row">
                                <legend class="col-form-label col-sm-4 pt-0">Sexe</legend>
                                <div class="col-sm-8">
                                  <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="sexe" id="male" value="option1" checked>
                                    <label class="form-check-label" for="male">
                                      Male
                                    </label>
                                  </div>
                                  
                                  <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="sexe" id="fmale" value="option2">
                                    <label class="form-check-label" for="fmale">
                                      Fmale
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

</body>
</html>