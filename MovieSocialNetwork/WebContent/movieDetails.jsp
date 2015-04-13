<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="edu.neu.cs5200.msn.ds.dao.*,edu.neu.cs5200.msn.ds.model.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>Movie Details</h1>
		
		<%
		MovieDAO movieDAO = new MovieDAO();
		
		String idStr = request.getParameter("id");
		int id = Integer.parseInt(idStr);
		
		Movie movie = movieDAO.findById(id);
		%>
		
		Title: <%=movie.getTitle() %>
		Poster: <%=movie.getPoster() %>
		Movie Id: <%=movie.getMovieId() %>
	</div>
</body>
</html>