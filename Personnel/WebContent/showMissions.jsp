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
<title>show missions</title>
</head>
<body>
<%@ include file="Index.html" %>
    <form action='showMission.jsp' method='Get'><input type='text' name ='cin'  > <input type='submit' class='' value='search'></form></td>
    
<%  
	EtablismentDao ap= new EtablismentDao();
	ResultSet rs = ap.selectAll();
        out.write("<table class=''>");
        out.write("<tr class=''>");
        out.write("<th>Pren_n</th>");
        out.write("<th>Pren_n_arabe</th>");
        out.write("<th>Mission</th>");
        out.write("<th>Etablissement_ville</th>");
        out.write("<th>Date_debut</th>");
        out.write("<th>Date_fin</th>");
        
	while(rs.next()){
		out.write("<tr>");
		out.write("<td>"+rs.getString("Pren_n")+"</td>");
		out.write("<td>"+rs.getString("Pren_n_arabe")+"</td>");
		out.write("<td>"+rs.getString("Mission")+"</td>");
		out.write("<td>"+rs.getString("Etablissement_ville")+"</td>");
		out.write("<td>"+rs.getDate("Date_debut")+"</td>");
		out.write("<td>"+rs.getDate("Date_fin")+"</td>");
		out.write("</tr>");
	}
%>
</table>

</body>
</html>