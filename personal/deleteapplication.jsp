<%-- 
    Document   : deleteapplication
    Created on : Jun 22, 2022, 12:08:08 PM
    Author     : Java
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.Database"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id =request.getParameter("uid");
            try{
                
PreparedStatement ps=Database.con().prepareStatement("delete from loanapplication where uid='"+id+"' ");
             int R = ps.executeUpdate();
                            if (R != 0) {
                                out.println("<script type='text/javascript'>");
                                out.println("alert('Deleted Success')");
                                out.println("window.location='user.jsp'");
                                out.println("</script>");
                            } else {
                                out.println("<script type='text/javascript'>");
                                out.println("alert('Delete Failed')");
                                out.println("window.location='user.jsp'");
                                out.println("</script>");
                            }   
            }
            catch(Exception e){
                JOptionPane.showMessageDialog(null,e);
            }
            %>
            </body>
</html>
