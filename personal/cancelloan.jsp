<%-- 
    Document   : cancelloan
    Created on : Jun 21, 2022, 11:49:19 AM
    Author     : Java
--%>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
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
            String email = "" + session.getAttribute("username");
Statement st = Database.con().createStatement();
           String stat="Cancelled by User";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/personal_loan", "root", "admin");

             PreparedStatement check21 = con2.prepareStatement("select * from loanapplication where uid=" + id);
            ResultSet rs21 = check21.executeQuery();
            while (rs21.next()) {
                String cash = rs21.getString("cash");
                String dur = rs21.getString("duration");
                String rate = rs21.getString("irate");
            try{
              
                
                      PreparedStatement pst = Database.con().prepareStatement("insert into loanhistory(uid,uname,cash,duration,rate,status)values(?,?,?,?,?,?)");
                            pst.setString(1, id);
                            pst.setString(2, email);
                            pst.setString(3, cash);
                            pst.setString(4, dur);
                            pst.setString(5, rate);
                            pst.setString(6, stat);
                                                      int R1 = pst.executeUpdate();
                                                      if (R1 != 0) {
int R= st.executeUpdate("Delete from loanapplication where uid='" + id + "' ");
 
                out.println("<script type='text/javascript'>");

			out.println("alert('Cancelled Successfull')");
			out.println("window.location='userpage.jsp'");
					out.println("</script>");
                                         
 
            }
            }
            catch(Exception e){
                JOptionPane.showMessageDialog(null,e);

            }
            
    
            }
            
            
            
            %>
    </body>
</html>
