<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="uta.cse4361.databases.DatabaseManager"%>
<%@page import="uta.cse4361.businessobjects.Slot"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Student Account</title>
 <script type="text/javascript">
     var m=Math.ceil(Math.random()*10);
     var n=Math.ceil(Math.random()*10);
     
     var d= m+n;
     function Captcha()
     {
         var txt ="What is";
     document.write("<h4>"+  m + " +" + n + "?</h4>");
     document.write("<input id='validcaptcha' type='text' value='' />");
     }
     function vcap()
     {
     var res = document.getElementById('validcaptcha').value;
     if(res == d)
     {return true;}
     else {alert ("Not a human");return false;}
     }</script>
<script type ="text/javascript">

                function validate() {
//                var username = document.forms["create"]["username"].value;
                var email = document.forms["create"]["email"].value;
                var atpos = email.indexOf("@");
                var dotpos = email.lastIndexOf(".");
                var mavs = email.indexOf("mavs.uta.edu");
                var password = document.forms["create"]["password"].value;
                var passwordConfirm = document.forms["create"]["passwordConfirm"].value;
                var name = document.forms["create"]["name"].value;

//                if (username === null || username === "") {
//                    $("#username").notify("Please enter your username", "error",
//                            {elementPosition: 'bottom center',
//                                globalPosition: 'bottom center'})
//                    return false;
//                }
                if (email === null || email === "") {
                    $("#email").notify("Please enter your email", "error",
                            {elementPosition: 'bottom center',
                                globalPosition: 'bottom center'})
                    return false;
                }
                if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= email.length || mavs < 0) {
                    $("#email").notify("Please enter a valid mavs email", "error",
                            {elementPosition: 'bottom center',
                                globalPosition: 'bottom center'})
                    return false;
                }
                if (password === null || password === "") {
                    $("#password").notify("Please enter your password", "error",
                            {elementPosition: 'bottom center',
                                globalPosition: 'bottom center'})
                    return false;
                }
                if (passwordConfirm === null || passwordConfirm === "") {
                    $("#passwordConfirm").notify("Please confirm your password", "error",
                            {elementPosition: 'bottom center',
                                globalPosition: 'bottom center'})
                    return false;
                }
                if (passwordConfirm !== password) {
                    $("#passwordConfirm").notify("Your password does not match", "error",
                            {elementPosition: 'bottom center',
                                globalPosition: 'bottom center'})
                    return false;
                }
                if (name === null || name === "") {
                    $("#name").notify("Please enter your name", "error",
                            {elementPosition: 'bottom center',
                                globalPosition: 'bottom center'})
                    return false;
                }

            }
        </script>
</head>
<body>
 <jsp:include page="navigationbar.jsp" />
        <div id="wrapper">
            <jsp:include page="header.jsp" />
            <div id="accordion">
                <h3>Create Student Account</h3>
                <form role="form" id="create"  onsubmit="return vcap()" action="StudentAccountConfirmation.jsp" method="POST">
                    <!--                    <div class="form-group">
                                            <label for="username">Username</label>
                                            <input class="form-control" type="text" name="username" id="username" value="">
                                        </div>-->
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input class="form-control" type="text" name="email" id="email" value="" placeholder="first.lastname@mavs.uta.edu">
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input class="form-control" type="password" name="password" id="password" value="">
                    </div>
                    <div class="form-group">
                        <label for="passwordConfirm">Confirm Password</label>
                        <input class="form-control" type="password" name="passwordConfirm" id="passwordConfirm" value="">
                    </div>
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input class="form-control" type="text" name="name" id="name" value="">
                    </div>
                    <div class="form-group">
                        <label for="dept">Department</label>
                        <select name="dept" id="dept" class="form-control" >
                            <option value="Computer Science">Computer Science</option>
                            <option value="Civil Engineering">Civil Engineering</option>
                            <option value="Electrical Engineering">Electrical Engineering</option>
                            <option value="Bioengineering">Bioengineering</option>
                        </select>
                    </div>
                    <div>
                    <font color="black"><b><br> I'm not a Robot </br></b></font>
                    <script type="text/javascript"> Captcha()</script>
               
                    </div>
                    <div class="centerthis">
                        <input type="submit" value="Create Account" id="submitBtn" class="btn btn-default">
                        <input type="reset" value="Reset" id="resetBtn" class="btn btn-default">
                    </div>
                    
                </form>
            </div>
        </div>
</body>
 <jsp:include page="footer.jsp" />
    <script type="text/javascript" src="js/CreateAccount.js"></script>
</html>