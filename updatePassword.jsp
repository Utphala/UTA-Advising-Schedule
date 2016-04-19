<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script>
function myFunction() {
    alert("Password Changed Successfully");
}
</script>
<jsp:include page="navigationbar.jsp" />
        <div id="wrapper">
            <jsp:include page="header.jsp" />
            <div id="accordion">
      <h3>Update Password</h3>
            <div class="centerthis">
                <form name="input" method="post" action="<%=request.getContextPath() %>/UpdatePasswordServlet">
             <input type="hidden" name="page" value="update"></input>
             <input type="hidden" name="sessionid" value=" <%=session.getAttribute("id")%>"></input>
                    <div class="form-group">
                        <label for="Username">Username</label>
                        <input type="text"  name="uname" id="uname" value="" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="Old Password">Old Password</label>
                        <input type="password"  name="oldpwd" id="oldpwd" value="" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="New Password">new Password</label>
                        <input type="password"  name="newpwd" id="newpwd" value="" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="Confirm New Password">Confirm New Password</label>
                        <input type="password"  name="cnewpwd" id="cnewpwd" value="" class="form-control">                    </div>
                    </div>
                    <input type="submit" value="Submit" id="submitBtn" class="btn btn-default" onclick="myFunction()">
                    <input type="reset" value="Reset" id="resetBtn" class="btn btn-default">
                </form>      

</body>
</html>