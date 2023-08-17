<%-- 
    Document   : ChangePicture
    Created on : May 2, 2022, 12:01:41 PM
    Author     : Java
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
       <form name="form1" method="post" enctype="multipart/form-data" action="insertimage.jsp">
 
<p>
<input type="file" name="ImageFile" id="ImageFile" />
</p>
<p>
<input type="submit" name="submit" value="submit" />
</p>
</form>
    </body>
</html>
