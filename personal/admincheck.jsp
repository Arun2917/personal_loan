<%-- 
    Document   : admincheck
    Created on : Jun 10, 2022, 12:27:00 PM
    Author     : Java
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
        String uname=request.getParameter("name");
        String pass=request.getParameter("pass");
        if(uname.equals("admin"))
        {
            if(pass.equals("admin"))
            {
                out.println("<script type='text/javascript'>");
			out.println("alert('Login Successfull')");
			out.println("window.location='admin.jsp'");
					out.println("</script>");
            }else{
                out.println("<script type='text/javascript'>");
			out.println("alert('Incorrect Password')");
			out.println("window.location='adminlogin.html'");
					out.println("</script>");
            }
        }else
        {
           out.println("<script type='text/javascript'>");
			out.println("alert('Incorrect Usename')");
			out.println("window.location='adminlogin.html'");
					out.println("</script>");
        }
        
        %>
    </body>
</html>
