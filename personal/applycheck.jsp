<%-- 
    Document   : applycheck
    Created on : Jun 16, 2022, 11:33:46 AM
    Author     : Java
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
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
    String email = "" + session.getAttribute("email");

            String cash = request.getParameter("cash");
            String duration = request.getParameter("duration");
            String status="Waiting";
       
         try{
                        //Connection con=Database.getconnection();
                        PreparedStatement ps = Database.con().prepareStatement("select * from loanapplication where uid=? and uemail=? ");
                        ps.setString(1, id);
                        ps.setString(2, email);
                        ResultSet check = ps.executeQuery();
                       if(check.next()) {
                            out.println("<script type='text/javascript'>");
                            out.println("alert('You are already applied for the loan wait for admin response or finish your Current loan')");
                            out.println("window.location='applyloan1.jsp'");
                            out.println("</script>");
                        } 
                        else {
                            PreparedStatement pst = Database.con().prepareStatement("insert into loanapplication(uid,uemail,cash,duration,adate,status)values(?,?,?,?,?,?)");
                            pst.setString(1, id);
                            pst.setString(2, email);
                            pst.setString(3, cash);
                            pst.setString(4, duration);
                            pst.setString(5, new Date().toLocaleString());
                            pst.setString(6, status);
                            int R = pst.executeUpdate();
                            if (R != 0) {
                                out.println("<script type='text/javascript'>");
                                out.println("alert('Applied Successfully')");
                                out.println("window.location='applyloan1.jsp'");
                                out.println("</script>");
                            } else {
                                out.println("<script type='text/javascript'>");
                                out.println("alert('Applied Failed')");
                                out.println("window.location='userpage.jsp'");
                                out.println("</script>");
                            }
                        }
                        }
         
         catch(Exception e){
             JOptionPane.showMessageDialog(null,e);
         }
        %>
    </body>
</html>
