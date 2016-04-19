<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>POLL</title>
</head>
<body>
<jsp:include page='navigationbar.jsp' />
        <div id='wrapper'>
            <jsp:include page='header.jsp' />
	<form action="PollServlet" method="post">
		<div class="row">
			<div class="col-md-4 col-lg-4">
				<div class="form-group">
					<label for="userid">User ID</label> <input type="text"
						class="form-control" id=userid name=userid
						placeholder="1000xxxxxx or 6000xxxxxx"> <label for="advisor">Do you need more Advisors ?</label>
                                        <input type="text" class="form-control" id=advisor name = advisor> 
                                        <label for="teaching">How is the teaching ?</label>
			 <input type="text" class="form-control" id=teaching name = teaching>  <label for="subject">Which subject do you like the most ?</label>
			 <input type="text" class="form-control" id=subject name = subject> <strong>
						<br> <label for="q1">1. Did you like the online portal</label>
			 <input type="radio" name="q1" value = "5">Excellent
			 <br>
			 <input type="radio" name="q1" value = "4">Verry good
			 <br>
			 <input type="radio" name="q1" value = "3">Average
			 <br>
			 <input type="radio" name="q1" value = "2">Below Average
			 <br>
			 <input type="radio" name="q1" value = "1">Poor
			 <br>
			 <br>
					</strong>
				</div>
			</div>
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
		</p>
		<style>
.form-group {
	color: #FFFFFF;
}
</style>
		</body>
</html>