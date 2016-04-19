<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Account Confirmation</title>
 <jsp:useBean id="newstudent" class="uta.cse4361.beans.CreateStudentAccountBean"/> 
 <jsp:setProperty name="newstudent" property="email" value='<%=request.getParameter("email")%>'/>
 <jsp:setProperty name="newstudent" property="tempPassword" value='<%=request.getParameter("password")%>' />
 <jsp:setProperty name="newstudent" property="department" value='<%=request.getParameter("dept")%>' />
 <jsp:setProperty name="newstudent" property="name" value='<%=request.getParameter("name")%>' />
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     
</head>
<body>
<jsp:include page="navigationbar.jsp" />
        <div id="wrapper">
            <jsp:include page="header.jsp" />
            <div id="accordion">
                <h3>Student Account Confirmation</h3>
                <div>
                <%
                    String result = newstudent.Student();
                    if (result == "") {
                        out.print(newstudent.getName() +"'s Account has been  created");
                    } 
                    else {
                        out.print("Account could not be created.");
                    }
                %>
                </div>
            </div>
        </div>

</body>
</html>