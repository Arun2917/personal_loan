<%-- 
    Document   : finalprocess
    Created on : Jun 18, 2022, 4:17:01 PM
    Author     : Java
--%>
<%@page import="java.sql.Statement"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.Database"%>

<%@page import="java.util.Properties"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Transport"%>
<%@page import="java.util.Random"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.swing.JOptionPane"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from www.bootstrapdash.com/demo/purple-admin-free/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 10 Jun 2022 06:14:28 GMT -->
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Purple Admin</title>
    </head>
    <body>
        <%
            String id = request.getParameter("uid");
            Statement st = Database.con().createStatement();
            //JOptionPane.showMessageDialog(null, id);

            String e = null;
            String name = null;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/personal_loan", "root", "admin");

            PreparedStatement check21 = con2.prepareStatement("select * from loanapplication where uid=" + id);
            ResultSet rs21 = check21.executeQuery();
            while (rs21.next()) {
                String cash = rs21.getString("cash");
                String dur = rs21.getString("duration");
                String rate = rs21.getString("irate");
                
                PreparedStatement check2 = con2.prepareStatement("select * from user where uid=" + id);
                ResultSet rs2 = check2.executeQuery();
                if (rs2.next()) {
                    e = rs2.getString("email");
                    name = rs2.getString("username");

                }

                System.out.println("Key is............." + e);

                String txt = id.trim().concat(": Your Application for Personal Loan Is Accepted by the Manager.The Amount will be Credit Within 2 days ");
                System.out.println(txt);
                // String mailid=rset.getString(2);
                String email = "pythonfabhost2021@gmail.com",
                        password = "ynjohoeoaupmrtaf",
                        host = "smtp.gmail.com",
                        port = "465",
                        to = e.trim(),
                        subject = "Confirmation",
                        text = txt.trim();

                Properties props = new Properties();
                props.put("mail.smtp.user", email);
                props.put("mail.smtp.host", host);
                props.put("mail.smtp.port", port);
                props.put("mail.smtp.starttls.enable", "true");
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.socketFactory.port", port);
                props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
                props.put("mail.smtp.socketFactory.fallback", "false");

                SecurityManager security = System.getSecurityManager();

                try {
                    class SMTPAuthenticator extends javax.mail.Authenticator {

                        public PasswordAuthentication getPasswordAuthentication() {
                            String email = "pythonfabhost2021@gmail.com",
                                    password = "ynjohoeoaupmrtaf";
                            return new PasswordAuthentication(email, password);
                        }
                    }
                    SMTPAuthenticator auth = new SMTPAuthenticator();
                    Session sessions = Session.getInstance(props, auth);
                    sessions.setDebug(true);

                    MimeMessage msg = new MimeMessage(sessions);
                    msg.setText(text);
                    msg.setSubject(subject);
                    msg.setFrom(new InternetAddress(email));
                    msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

                    Transport.send(msg);

                } catch (Exception e1) {
                    JOptionPane.showMessageDialog(null, e1);
                }

                PreparedStatement pst = Database.con().prepareStatement("insert into loanhistory(uid,uname,cash,duration,rate,status)values(?,?,?,?,?,?)");
                pst.setString(1, id);
                pst.setString(2, name);
                pst.setString(3, cash);
                pst.setString(4, dur);
                pst.setString(5, rate);
                pst.setString(6, "Accepted");
                int R1 = pst.executeUpdate();
if(R1>0){
                    PreparedStatement pst1 = Database.con().prepareStatement("Delete from loanapplication where uid='"+id+"'");
                int R11 = pst1.executeUpdate();

    
                out.println("<script type='text/javascript'>");

                out.println("alert('Accepted Successfull')");
                out.println("window.location='application.jsp'");
                out.println("</script>");

            }
            }
            
        %>

    </body>

</html>
