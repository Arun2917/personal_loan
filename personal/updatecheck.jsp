<%-- 
    Document   : updatecheck
    Created on : Jun 14, 2022, 6:20:36 PM
    Author     : Java
--%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
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
                            
                            
String id=""+session.getAttribute("uid");   
            String email = request.getParameter("email");
            String mobile = request.getParameter("phone");
            String gender = request.getParameter("gender");
            String dob = request.getParameter("dob");
            String address = request.getParameter("address");
            String occupation = request.getParameter("occupation");
            String bname = request.getParameter("bname");
            String ifsc = request.getParameter("ifsc");
            String accnum = request.getParameter("accnum");

try{
    if (email != "" && mobile != "" && gender != "" && dob != "" && address != "" && occupation != "" && bname != "" && ifsc != "" && accnum != "") {
                String numeric = "^[0-9]+$";
                int length = mobile.length();

                if (mobile.matches(numeric)) {
                    if (length >= 10 && length <= 10) {
             
PreparedStatement ps=Database.con().prepareStatement("update user set email='"+email+"', phone='"+mobile+"', gender='"+gender+"', dob='"+dob+"', address='"+address+"', occupation='"+occupation+"', bname='"+bname+"', ifsc='"+ifsc+"', accnum='"+accnum+"' where uid='"+id+"'");
		
		int R = ps.executeUpdate();
                            if (R != 0) {
                                out.println("<script type='text/javascript'>");
                                out.println("alert('Update Success')");
                                out.println("window.location='profile.jsp'");
                                out.println("</script>");
                            } else {
                                out.println("<script type='text/javascript'>");
                                out.println("alert('Update Failed')");
                                out.println("window.location='profile.jsp'");
                                out.println("</script>");
                            }
                             } else {
                        out.println("<script type='text/javascript'>");
                        out.println("alert('Enter Valid Mobile Number')");
                        out.println("window.location='profileupdate.jsp'");
                        out.println("</script>");
                    }
                } else {
                    out.println("<script type='text/javascript'>");
                    out.println("alert('Numeric Only Allow by ContactNO')");
                    out.println("window.location='profileupdate.jsp'");
                    out.println("</script>");
                }
            } else {
                out.println("<script type='text/javascript'>");
                out.println("alert('Enter All Details')");
                out.println("window.location='profileupdate.jsp'");
                out.println("</script>");
            }
                           
}

                catch(Exception ae){
JOptionPane.showMessageDialog(null, ae);}
                            
                            %>    </body>
</html>
