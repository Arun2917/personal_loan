<%-- 
    Document   : registercheck
    Created on : Jun 7, 2022, 6:09:49 PM
    Author     : Java
--%>

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

            String user = request.getParameter("username");
            String pass = request.getParameter("password");
            String email = request.getParameter("email");
            String mobile = request.getParameter("phone");
            if (user != "" && pass != "" && email != "" && mobile != "") {
                String numeric = "^[0-9]+$";
                int length = mobile.length();

                if (mobile.matches(numeric)) {
                    if (length >= 10 && length <= 10) {
                        //Connection con=Database.getconnection();
                        PreparedStatement ps = Database.con().prepareStatement("select * from user where username=? and email=?");
                        ps.setString(1, user);
                        ps.setString(2, email);
                        ResultSet check = ps.executeQuery();
                        if (check.next()) {
                            out.println("<script type='text/javascript'>");
                            out.println("alert('User Dteails Already Exists')");
                            out.println("window.location='register.html'");
                            out.println("</script>");
                        } else {
                            PreparedStatement pst = Database.con().prepareStatement("insert into user(username,email,phone,password,rdate)values(?,?,?,?,?)");
                            pst.setString(1, user);
                            pst.setString(2, email);
                            pst.setString(3, mobile);
                            pst.setString(4, pass);
                            pst.setString(5, new Date().toLocaleString());
                            int R = pst.executeUpdate();
                            if (R != 0) {
                                out.println("<script type='text/javascript'>");
                                out.println("alert('Registration Success')");
                                out.println("window.location='login.html'");
                                out.println("</script>");
                            } else {
                                out.println("<script type='text/javascript'>");
                                out.println("alert('Registration Failed')");
                                out.println("window.location='register.html'");
                                out.println("</script>");
                            }
                        }
                    } else {
                        out.println("<script type='text/javascript'>");
                        out.println("alert('Enter Valid Mobile Number')");
                        out.println("window.location='register.html'");
                        out.println("</script>");
                    }
                } else {
                    out.println("<script type='text/javascript'>");
                    out.println("alert('Numeric Only Allow by ContactNO')");
                    out.println("window.location='register.html'");
                    out.println("</script>");
                }
            } else {
                out.println("<script type='text/javascript'>");
                out.println("alert('Enter Valid Details')");
                out.println("window.location='register.html'");
                out.println("</script>");
            }
        %>
    </body>
</html>
