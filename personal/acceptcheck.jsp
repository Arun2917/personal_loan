<%-- 
    Document   : acceptcheck
    Created on : Jun 17, 2022, 6:44:37 PM
    Author     : Java
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.DataInputStream"%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<%@page import="java.io.InputStream"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
            //String name = "" + session.getAttribute("username");

            String idproof = request.getParameter("idproof");
              // String email = "" + session.getAttribute("name");
            String contentType = request.getContentType();
            if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
                DataInputStream in = new DataInputStream(request.getInputStream());
                int formDataLength = request.getContentLength();
                byte dataBytes[] = new byte[formDataLength];
                int byteRead = 0;
                int totalBytesRead = 0;
                while (totalBytesRead < formDataLength) {
                    byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
                    totalBytesRead += byteRead;
                }
                String file = new String(dataBytes);
                String saveFile = file.substring(file.indexOf("filename=\"") + 10);
                saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
                saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));
                int lastIndex = contentType.lastIndexOf("=");
                String boundary = contentType.substring(lastIndex + 1, contentType.length());
                int pos;
                pos = file.indexOf("filename=\"");
                pos = file.indexOf("\n", pos) + 1;
                pos = file.indexOf("\n", pos) + 1;
                pos = file.indexOf("\n", pos) + 1;
                int boundaryLocation = file.indexOf(boundary, pos) - 4;
                int startPos = ((file.substring(0, pos)).getBytes()).length;
                int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
                File f = new File("C:\\Users\\User\\Desktop\\PERSONAL LOAN APPLICATION\\SOURCE\\Personal_Loan_App\\web\\proof\\" + saveFile);
                JOptionPane.showMessageDialog(null,f);
                String fn = f.toString();
                int size = file.length();
                FileOutputStream fileOut = new FileOutputStream(f);
                fileOut.write(dataBytes, startPos, (endPos - startPos));
                fileOut.flush();
                fileOut.close();

                Statement st = Database.con().createStatement();
                //JOptionPane.showMessageDialog(null, id);

                st.executeUpdate("update loanapplication set idproof='" + saveFile + "',status='Processed' where uid='" + id + "' ");
out.println("<script type='text/javascript'>");
			out.println("alert('Sent Successfull')");
			out.println("window.location='userpage.jsp'");
					out.println("</script>");
                                         

            } else {
out.println("<script type='text/javascript'>");
			out.println("alert('Sent Failed')");
			out.println("window.location='userpage.jsp'");
					out.println("</script>");
   
            }
        %>
    </body>
</html>
