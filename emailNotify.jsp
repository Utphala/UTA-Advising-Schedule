<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="uta.cse4361.servlets.AdvisorServlet"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Notifications</title>
</head>
             <% 
                            int rank = -1;
                            int sessionid = -1;
                            if(!(session.getAttribute("id") == null)){
                            sessionid = Integer.parseInt((String)session.getAttribute("id"));
                        }
                            if(!(session.getAttribute("rank") == null)){
                            rank = Integer.parseInt((String)session.getAttribute("rank"));
                        }
                            if (!(session.getAttribute("id") == null)) {
                                sessionid = Integer.parseInt((String) session.getAttribute("id"));
                            }
             %>

<body>
        <jsp:include page='navigationbar.jsp' />
        <div id='wrapper'>
            <jsp:include page='header.jsp' />
              

             <form name="input" method="post" action="<%=request.getContextPath() %>/AdvisorServlet">
             <input type="hidden" name="page" value="input"></input>
             <input type="hidden" name="sessionid" value=" <%=session.getAttribute("id")%>"></input>
            <fieldset>
            <legend align="center" >Input</legend>
             <table align=center >
             
             <tr>
               <td> Email Address:  </td>
               <td>
             <input type="text" name = "email"></td> 
          
             </tr>
             
             <tr>
             <td>
             <input type="radio" name = "opt" value="optin"> OPT IN for Email notification
             </td>
           
            
             </tr>
           
            
             <tr>
               <td>
             <input type="radio" name = "opt" value="optout"> OPT OUT for Email notification
             </td>
             </tr>
             
             
             
             </table>
             <br>
             <br>
             <table align="center">
<tr><td colspan="2" align="center">
<input   type="submit" name="submit" value="Submit"></input>
</td></tr>
</table>
             </fieldset>
            
             </form>
             </div>
             
</body>
</html>