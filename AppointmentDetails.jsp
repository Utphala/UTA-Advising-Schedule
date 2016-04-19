<%-- 
    Document   : AppointmentDetails
    Created on : Sep 29, 2014, 12:01:50 PM
    Author     : Melissa
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Appointment Created</title>
        
    </head>
    <body>

        <jsp:include page="navigationbar.jsp" />
        <div id="wrapper">
            <jsp:include page="header.jsp" />
        <div id="accordion" class="centerthis">
            <h3>Success</h3>
            <div>
                Appointment has been created.
               
            </div>
        </div>                   
        </div>
       
        <br>
        <br>
         <form name="feedback" method="post" action="<%=request.getContextPath() %>/AdvisorServlet">
             <input type="hidden" name="page" value="feedback"></input>
             <input type="hidden" name="sessionid" value=" <%=session.getAttribute("id")%>"></input>
            
            
             
  
             <table align="center">
			<tr><td colspan="2" align="center">
			<input   type="submit" name="feedbackbtn" value="Feedback"></input>
			</td></tr>
			</table>
             
            
             </form>
             <br>
             <br>
              
             
             <form name="bugreport" method="post" action="<%=request.getContextPath() %>/AdvisorServlet">
             <input type="hidden" name="sessionid" value=" <%=session.getAttribute("id")%>"></input>
                          <input type="hidden" name="page" value="bugreport"></input>
              <table align="center">
			<tr><td colspan="2" align="center">
			<input   type="submit" name="bugreportbtn" value="Bug report"></input>
			</td></tr>
			</table>
             </form>
             <br>
             <form name="email" method="get" action="<%=request.getContextPath()%>/EmailServlet">
             <table align="center">
             <tr><td align="center"><a href="<%=request.getContextPath()%>/EmailServlet">Send Email Confirmation</a></td></tr>
</table>
            </form>
          
            
        
       
    </body>
    <jsp:include page="footer.jsp" />
    <script type="text/javascript" src="js/AppointmentDetails.js"></script>
</html>
