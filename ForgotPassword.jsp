<%-- 
    Document   : ForgotPassword
    Created on : Apr 15, 2016, 3:07:52 PM
    Author     : KrishnaChaitanya
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reset your password</title>
</head>
<body>
<jsp:include page='navigationbar.jsp' />
        <div id='wrapper'>
            <jsp:include page='header.jsp' />
            
            
                <form role="form" id="create"   action="ForgotPasswordServlet" method="POST">
            
                    <div class="input-group">
                        <label for="email">Email</label>
                        <input class="form-control" type="text" name="forgotPassword" id="email" value="" placeholder="first.lastname@mavs.uta.edu">
                    </div>
             
                    <div class="centerthis">
                        <input type="submit" value="Send reset link" id="submitBtn" class="btn btn-default">
                       
                    </div>
                    
                </form>
</body>
</html>