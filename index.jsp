<%-- 
    Document   : index
    Created on : Sep 12, 2014, 2:12:40 PM
    Author     : Melissa
--%>

<%@page contentType='text/html' pageEncoding='UTF-8'%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>UTA Advising</title>
        <meta charset='UTF-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1'>
        
       
    </head>

    <body>
        <jsp:include page='navigationbar.jsp' />
        <div id='wrapper'>
            <jsp:include page='header.jsp' />
            
            
            
             <% 
                            int rank = -1;
                            int sessionid = -1;
                            if(!(session.getAttribute("id") == null)){
                            sessionid = Integer.parseInt((String)session.getAttribute("id"));
                        }
                            if(!(session.getAttribute("rank") == null)){
                            rank = Integer.parseInt((String)session.getAttribute("rank"));
                        }
             %>
             <table align="center" style='margin: 0 auto;'>
             <tr><td>
                             <form action="AdvisorServlet" method="post">
                <input type="hidden" name="page" value="search"></input>
                
 	 <select name="Search" >
 	      <%  if (rank==-1 || rank==0 || rank==1 || rank==2){ %>
    <option value="searchhere" selected>Search here</option>
     <option value="departments">Departments Information</option>
      <option value="uta">UTA main web site</option>
       <option value="mymav">UTA MyMav</option>
        <option value="studentemail">UTA Student Email</option>
    
     <%} %>
 	 <%  if (rank == 2){ %>
    <option value="scheduleappointment">Schedule Appointmntment</option>
    <option value="manageappointments">Manage Appointments</option>
    <%} %>
     <%  if (rank == 0){ %>
    <option value="timeslot">Time Slot</option>
    <option value="calendar">Calendar</option>
    <option value="manageappointments">Manage Appointments</option>
    <option value="notifications">Notifications</option>
     <%} %>

  </select>
 
  <input type="submit" value="Go">
	</form>
	</td>
	</tr>
	</table>
             
            <table class='centerthis' style='margin: 0 auto;'>
                <tr>
                    <%
                            if(rank == -1){
                                out.print("<td style='width: 640px'>");
                            }
                            %>
                    <div id='leftAccordion'>
                       
                        <h3>Faculty/Student Login</h3>
                        <div>
                            <%
                            
                            if (rank == 1){
                                out.print("Welcome administrator.");
                            }
                            if (rank == 0){
                                out.print("Welcome faculty member.");
                            }
                            if (rank == 2){
                                out.print("Welcome Student.");
                                out.print("<a href='updatePassword.jsp'><H3>Update Password</H3></a>");                           
                                out.print("<div style='float:right'>"
                                		+" <h3>Are you a Prospect student?</h3>"
                                				+"<br>"
                                        + "<form action='prospectSchedule.jsp'>"
                                     	+ "<input type='submit' value='Schedule Appointmenet' id='createPSchedulebtn' class='btn btn-default'>"
                                        + "</form>"
                                		
                                		
                                		+"</div>"
                                		);
                            }
                            if (rank == -1){
                                out.print("Would you like to manage your account?<br><br>"
                                        + " <input type='submit' value='Login to your account' id='loginBtn' class='btn btn-default'>"
                                        );
                            }
                        
                            %>
                            
                           
                  
                        </div>

                    </div>
                     
                
                            <%
                            if(rank == -1){
                                out.print("</td>"
                                        + "<td style='width: 640px'>"
                                        + "<div id='rightAccordion'>"
                                        +"<br>"
                                        +"<br>"
                                        + "<h3>Student</h3>"
          								+ "<div>"
                                        + "<form action='CreateStudentAccount.jsp'>"
                                     	+ "<input type='submit' value='Create a Student Account' id='createSAccountBtn' class='btn btn-default'>"
                                        + "</form>"
                                       
                                       
                                                
                                        + "</div>"
                                        +"<br>"
                                       
                                        + "</div>"
                                        + "</td>");
                            }
                        
                            
                            %>
                            
                            
                </tr>
            </table>
                <div>
                    <a target="_blank" href ="http://www.uta.edu/uta/"><H3>UTA WebSite</H3></a>
                    <a target="_blank" href ="https://www.uta.edu/mymav"><H3>UTA myMav</H3></a>
                    <a target="_blank" href ="https://outlook.office.com/owa/?realm=mavs.uta.edu"><H3>UTA Student Email</H3></a>
                            <a href ="Departments.jsp"><H3>Departments INFO</H3></a>
                    </div>
                    
					
					
					

        </div>
        

    </body>
    <jsp:include page='footer.jsp' />

    <script type='text/javascript' src='js/index.js'></script>
</html>
