<%-- 
    Document   : insertimage
    Created on : Feb 15, 2022, 6:32:10 PM
    Author     : Java
--%>


<%@page import="com.Database"%>
<%@page import="java.sql.Statement"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.util.*, java.io.*" %>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<%@ page import="java.io.File"%>
<html>
    <head>
        <script language="javascript">
            function closeWin() {
                window.close();
            }
        </script>
    </head>
    <body>


        <%

            String email = "" + session.getAttribute("name");
            String id = "" + session.getAttribute("uid");
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
                File f = new File("C:\\Users\\User\\Desktop\\PERSONAL LOAN APPLICATION\\SOURCE\\Personal_Loan_App\\web\\profile\\" + saveFile);
                String fn = f.toString();
                int size = file.length();
                FileOutputStream fileOut = new FileOutputStream(f);
                fileOut.write(dataBytes, startPos, (endPos - startPos));
                fileOut.flush();
                fileOut.close();

                Statement st = Database.con().createStatement();
                //JOptionPane.showMessageDialog(null, id);

                st.executeUpdate("update user set pic='" + saveFile + "' where uid='" + id + "' ");
                JOptionPane.showMessageDialog(null, "Uploaded Successfully");

            } else {
                JOptionPane.showMessageDialog(null, "Uploading failed");

            }

        %>
        <input type="button" onclick="closeWin()" Value="Close" />  
    </body>
</html>
