<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body> 
    <%@ include file="Index.html" %>
    <form class="" method="post" action="Admins"  >

          <label>Email: </label><br>
		  <input type="email" class=""   name="email"><br><br>
		  
		  <label>mot de passe </label><br>
		  <input type="password" class=""   name="password"><br><br>
		  
		  <label>NOM: </label><br>
		  <input type="text" class=""   name="nom"><br><br>
		  
		  <label>Prenom: </label><br>
		  <input type="text" class=""   name="prenom"><br><br>
		  
		  <input type="submit" class="" name="actionID" value="ajouterA">
		  
		</form>  
		<a href="AdminView.jsp"> <input type="submit" class="" name="actionID" value="retour"></a>
</body>
</html>