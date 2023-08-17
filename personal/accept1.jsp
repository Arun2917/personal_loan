<%-- 
    Document   : accept1
    Created on : Jul 11, 2022, 10:46:14 AM
    Author     : Java
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.Database"%>
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
            String id = "" + session.getAttribute("uid");

           String r="0";
//String rate=request.getParameter("irate");
//JOptionPane.showMessageDialog(null, rate);
try{
PreparedStatement ps=Database.con().prepareStatement("select * from loanapplication where uid=?");
		ps.setString(1, id);
		//ps.setString(2, pass);
		ResultSet check=ps.executeQuery();
                while(check.next()){
                    String rate=check.getString("irate");
                 // JOptionPane.showMessageDialog(null, rate);
                  if(rate.equals(r)){

out.println("<script type='text/javascript'>");
			out.println("alert('Please Wait for Admin to Update Your Interest Rate')");
			out.println("window.location='userpage.jsp'");
					out.println("</script>");
                }
                  else{
                      
out.println("<script type='text/javascript'>");
			//out.println("alert('Please Wait for Admin to Update Your Interest Rate')");
			out.println("window.location='accept.jsp'");
					out.println("</script>");
                  }
                }          


}
catch(SQLException e){
    JOptionPane.showMessageDialog(null, e);
}

        %>
    </body>
</html>
