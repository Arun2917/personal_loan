<%-- 
    Document   : download
    Created on : Jun 18, 2022, 11:56:44 AM
    Author     : Java
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%


String fnme=request.getParameter("idproof");
String uid=request.getParameter("uid");
    JOptionPane.showMessageDialog(null,fnme);
    JOptionPane.showMessageDialog(null,uid);

session.setAttribute("file", fnme);
System.out.println("file::"+fnme);
try{
                  Connection con=null;
       		  Statement st=null;
       		  String DB_URL = "jdbc:mysql://localhost/personal_loan";
       			 String USER = "root";
       			 String PASS = "admin";
       			Class.forName("com.mysql.jdbc.Driver");
       		  con=DriverManager.getConnection(DB_URL,USER, PASS);
       		  st=con.createStatement();
                  String query=("select * from processapp where idproof=? and uid=? "); 
                   PreparedStatement ps=con.prepareStatement(query);
                  
                 ps.setString(1, fnme);
                 ps.setString(2, uid);
                 ResultSet rs=ps.executeQuery();
               
                 if(rs.next())
                  {
                	
                	  response.sendRedirect("Processedapp.jsp");
                  }
                 else{
                	 JOptionPane.showMessageDialog(null, "Decrypt failed...");
                	 response.sendRedirect("admin.jsp");
                 }
}
catch(Exception e){
                    	 
    JOptionPane.showMessageDialog(null,e);

}

%>
</body>
</html>