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
<title>showCadre</title>
</head>
<body>
     
   
    
<%  String cinc =request.getParameter("cin");
  
    
    CadreDao pc= new CadreDao();
	ResultSet rsnc = pc.selectbycin(cinc);
        out.write("<table class=''>");
        out.write("<tr class=''>");
        out.write("<th>Pren_n</th>");
        out.write("<th>Pren_n_arabe</th>");
        out.write("<th>Cadre</th>");

        
	while(rsnc.next()){
		out.write("<tr>");
		out.write("<td>"+rsnc.getString("Pren_n")+"</td>");
		out.write("<td>"+rsnc.getString("Pren_n_arabe")+"</td>");
		out.write("<td>"+rsnc.getString("Cadre")+"</td>");
		out.write("</tr>");
	}
	
%>
</table>
<% while(rsnc.next()){
	if (request.getParameter("cin")!=rsnc.getString("cin"))
		this.getServletContext().getRequestDispatcher("/ShowCadres.jsp").forward(request, response);}
 %>
   <form action="Addcadre.jsp">
   <input type ="hidden" name="cin" value="<%=request.getParameter("cin")%>">
   <input type="submit" class="" name="actionID" value="ajouter un cadre">
   </form>
</body>
</html>