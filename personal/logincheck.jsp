<%-- 
    Document   : logincheck
    Created on : Jun 8, 2022, 10:33:57 AM
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
            
String email=request.getParameter("email");
String pass=request.getParameter("password");


try{
PreparedStatement ps=Database.con().prepareStatement("select * from user where email=? and password=?");
		ps.setString(1, email);
		ps.setString(2, pass);
		ResultSet check=ps.executeQuery();
		if(check.next()){
                    String id=check.getString("uid");
                    String name=check.getString("username");
			out.println("<script type='text/javascript'>");
			out.println("alert('Login Successfull')");
			out.println("window.location='userpage.jsp'");
					out.println("</script>");
                            session.setAttribute("email", email);
                            session.setAttribute("username", name);
                            session.setAttribute("uid", id);

		}else{

                                out.println("<script type='text/javascript'>");
				out.println("alert('Username/Password Incorrect')");
				out.println("window.location='login.html'");
						out.println("</script>");
			}


}
catch(SQLException e){
    JOptionPane.showMessageDialog(null, e);
}


%>
    </body>
</html>
