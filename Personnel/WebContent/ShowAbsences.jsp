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
<title>show absences</title>
</head>
<body>
    <%@ include file="Index.html" %>
    <form action='ShowAbsences.jsp' method='Get'><input type='text' name ='cin'  > <input type='submit' class='' value='search'></form></td>
    
<%  
	AbsenceDao p= new AbsenceDao();
	ResultSet rs = p.selectAll();
        out.write("<table class=''>");
        out.write("<tr class=''>");
        out.write("<th>Pren_n</th>");
        out.write("<th>Pren_n_arabe</th>");
        out.write("<th>Duree</th>");
        out.write("<th>DateAbsence</th>");
        out.write("<th>Justification</th>");
        
	while(rs.next()){
		out.write("<tr>");
		out.write("<td>"+rs.getString("Pren_n")+"</td>");
		out.write("<td>"+rs.getString("Pren_n_arabe")+"</td>");
		out.write("<td>"+rs.getString("Duree")+"</td>");
		out.write("<td>"+rs.getDate("DateAbsence")+"</td>");
		out.write("<td>"+rs.getString("Justification")+"</td>");
		out.write("<td><form action='UpdateAbsence.jsp' method='POST'><input type='hidden' name ='id' value='"+rs.getInt("PersonnelID")+"'> <input type='submit' class='' value='modifier'></form></td>");
		out.write("<td><form action='AjoutAbsence.jsp'><input type='hidden' name ='idp' value='"+rs.getString("cin")+"'> <input type='submit' class=''name='actionID' value='ajouter une absence'></form></td>");
		out.write("</tr>");
		
	}
	out.write("</table>");
%>
</table>
</body>
</html>