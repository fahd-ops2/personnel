<%@ page language="java" contentType="text/html; charset=ISO-utf-8"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="classes.*"%>
    <%@ page import="DAO.*"%>
    <%@ page import="java.sql.*"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 <script src="js/jquery-3.5.1.min.js" ></script>
    <script src="js/bootstrap.min.js" ></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="fontawsome/css/all.min.css">
<title>Insert title here</title>
</head>
<body>      
           <%@ include file="Index.html" %>
         
    <div class="container">
        <div class="card ">
            <div class="card-header ">
           
                </div>
            <div class="card-body">
    
    
    
  
  <table class="table myDatatable" id="myTable">
                    <thead class="thead-dark">
                      <tr>
                        <th scope="col">Login</th>
                        <th scope="col">Password</th>
                        <th scope="col">Nom</th>
                        <th scope="col"  class="text-center">Options</th>
                      </tr>
                    </thead>
                    <tbody>
<% 
AdminDao sd = new AdminDao();
ResultSet rs = sd.selectAll();

			while(rs.next()){
				out.write("<tr>");
				out.write("<th class='align-middle'>"+rs.getString(2)+"</td>");
				out.write("<td class='align-middle'>"+rs.getString(3)+"</td>");
				out.write("<td class='align-middle'>"+rs.getString(4)+"</td>");
				out.write("<td class='align-middle text-center' scope='col' style='width: 400px;'>");
				out.write(" <div class='row ml-auto'>");

				out.write("<form action='mainProfile.jsp' method='POST' class='col-4 '>");
				out.write(" <input type='text' value='"+rs.getString(3)+"' name ='cin' id='cinBtn' style='display: none;'>");
				out.write("<input type='submit' value='show more'  class='btn btn-info badge-pill '>");
                out.write(" </form>");
                
				out.write("<form action='updatePersonnel.jsp' method='POST' class='col-4 '>");
				out.write(" <input type='text' value='"+rs.getString(3)+"' name ='cin' id='cinBtn' style='display: none;'>");
				out.write(" <input type='submit' value='Update' name='Update' class='btn btn-info badge-pill'>");
                out.write(" </form>");
                out.write(" </td>");
				out.write("</tr>");
		
	}
	rs.close();
%>
 		</tbody>
	</table>
   </div>
          </div>
    	</div>
  
 <script src="js/jquery.dataTables.min.js"></script>
    <script src="js/dataTables.bootstrap4.min.js"></script>
    <script >
        $('.myDatatable').dataTable({
            searching :'false',
            ordering : 'false',
            lengthMenu :[[5,10,15,20,-1],[5,10,15,20,'All']],
            createRow : function (row ,data,index){
                if(data[5].replace(/[\$,]/g,'')*1>150000){
                    $('td',row).eq(5).addClass('text-success');
                }
            }
        }); 
        </script>
</body>
</html>