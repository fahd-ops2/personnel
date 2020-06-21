<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.*" %>
    <%@ page import="classes.*"%>
    <%@ page import="DAO.*"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

        <% PersonnelDao prd = new PersonnelDao();
           ResultSet rp=prd.countall();
         while(rp.next()){
         %>

        <h1>nombre de total personnel</h1>
        <p><%=rp.getObject(1) %></p>
        <%  }rp.close();
        %>
         <% AbsenceDao abd = new AbsenceDao();
         rp=abd.countall();
         while(rp.next()){
         %>
        
        <h1>nombre de  total d'absence</h1>
        <p><%=rp.getObject(1) %></p>
        <%} rp.close(); %>
          <%  abd = new AbsenceDao();
         rp=abd.countalljus();
         while(rp.next()){
         %>
         <h1>nombre de total d'absence justifier</h1>
        <p><%=rp.getObject(1) %></p>
        <%} rp.close(); %>
        <%  abd = new AbsenceDao();
         rp=abd.countallnjus();
         while(rp.next()){
         %>
        <h1>nombre de total d'absence non-justifier</h1>
        <p><%=rp.getObject(1) %></p>
        <%} rp.close(); %>
        
</body>
</html>