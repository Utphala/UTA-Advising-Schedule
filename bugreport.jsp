<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
        <jsp:include page="navigationbar.jsp" />
        <div id="wrapper">
            <jsp:include page="header.jsp" />
        <div id="accordion" class="centerthis">
            <h3><b>Bugreport</b></h3>
            <div>
            	<form name="input" method="post" action="<%=request.getContextPath() %>/AdvisorServlet">
             <input type="hidden" name="page" value="bugreportbox"></input>
             <input type="hidden" name="sessionid" value=" <%=session.getAttribute("id")%>"></input>
                <textarea name="bugreport" style="margin: 0px; width: 968px; height: 89px;"></textarea>
                            <table align="center">
<tr><td colspan="2" align="center">
<br>
<input   type="submit" name="submit" value="Submit"></input>
</td></tr>
</table>
                <br>
                
                </form>
                <br>
                <form name="input" method="post" action="<%=request.getContextPath() %>/AdvisorServlet">
             <input type="hidden" name="page" value="bugreportcancel"></input>
             <input type="hidden" name="sessionid" value=" <%=session.getAttribute("id")%>"></input>
                                         <table align="center">
<tr><td colspan="2" align="center">
<input   type="submit" name="cancel" value="Cancel"></input>
</td></tr>
</table>
             </form>
            </div>
        </div>                   
        </div>
</body>
</html>