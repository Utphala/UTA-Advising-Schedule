<div id="navbar">
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
            <ul class="navigation">
                <li class="home">
                    <a href="index.jsp" >Home</a>
                </li>
                
               
               

	
                        
                        
    <%
        if(session.getAttribute("rank") == null)
        {
            
        }
        else{
            if (rank == 1){
                out.print("<li class='account'>"
                        + "<a href='CreateAccount.jsp' >Create Account</a>"
                        + "</li>");
            }
            if (rank == 2){
                out.print("<li class='schedule'>"
                        + "<a href='schedule.jsp' >Schedule Appointment</a>"
                        + "</li>");
                out.print("<li class='appointment'>"
                        + "<a href='MyAppointments.jsp' >Appointment</a>"
                        + "</li>");
            }
            if (rank == 0){
                out.print("<li class='calendar'>"
                        + "<a href='AdvisorCalendar.jsp' >Calendar</a>"
                        + "</li>");
                out.print("<li class='timeslot'>"
                        + "<a href='modifyTimeslot.jsp' >Time slot</a>"
                        + "</li>");
                out.print("<li class='appointment'>"
                        + "<a href='modifyAppointment.jsp' >Appointment</a>"
                        + "</li>");
                out.print("<li class='EmailNotification'>"
                        + "<a href='emailNotify.jsp' >Notification</a>"
                        + "</li>");
            }
            
            if (rank == 1 || rank == 0 || rank==2){
                out.print("<li class='logout'>"
                        + "<a href='logout.jsp' >Log Out</a>"
                        + "</li>");
               
            }
            
            
        }
        if (((session.getAttribute("id") == null) || (session.getAttribute("rank") == null))  && rank!=-1  ){
            out.print("<li class='schedule'>"
                    + "<a href='schedule.jsp' >Schedule Appointment</a>"
                    + "</li>");
        }
    %>                
            </ul>
            
        </div>
