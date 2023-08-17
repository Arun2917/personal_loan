<%-- 
    Document   : processcheck
    Created on : Jun 17, 2022, 4:14:28 PM
    Author     : Java
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id = "" + session.getAttribute("uid");
            String rate=request.getParameter("irate");
            try{
            String sql2="update loanapplication set irate='"+rate+"' where uid='"+id+"'  ";
             PreparedStatement pre12=Database.con().prepareStatement(sql2);
             
             		  pre12.executeUpdate();
out.println("<script type='text/javascript'>");
                            out.println("alert('Interest Rate Update to User Successfully')");
                            out.println("window.location='application.jsp'");
                            out.println("</script>");
  //response.sendRedirect("admin.jsp");
        
            }
            catch(Exception e){
                JOptionPane.showMessageDialog(null,e);

            }
            
    
    
            
            
            
            %>
    </body>
</html>
