<%@page import="java.util.List, com.app.model.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f6f8;
        margin: 0;
        padding: 20px;
    }

    h2 {
        text-align: center;
        color: #2c3e50;
        margin-bottom: 20px;
    }

    h3 {
        color: #34495e;
        margin-top: 30px;
        text-align: center;
    }

    a {
        text-decoration: none;
        font-size: 16px;
    }

    /* Add Book Button */
    .add-btn {
        display: inline-block;
        margin-bottom: 20px;
        background: #27ae60;
        color: white;
        padding: 10px 20px;
        border-radius: 6px;
        transition: 0.3s;
    }

    .add-btn:hover {
        background: #219150;
    }

    /* Table Styling */
    table {
        width: 80%;
        margin: auto;
        border-collapse: collapse;
        background: white;
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0px 4px 10px rgba(0,0,0,0.1);
    }

    th {
        background: #2c3e50;
        color: white;
        padding: 12px;
        font-size: 17px;
    }

    td {
        padding: 12px;
        font-size: 15px;
        border-bottom: 1px solid #ddd;
        text-align: center;
    }

    tr:hover {
        background: #f1f1f1;
    }

    /* Edit Button */
    .edit-btn {
        background: #2980b9;
        padding: 6px 12px;
        color: white;
        border-radius: 5px;
        transition: 0.3s;
    }

    .edit-btn:hover {
        background: #1f6692;
    }

    /* Delete Button */
    .delete-btn {
        background: #e74c3c;
        padding: 6px 12px;
        color: white;
        border-radius: 5px;
        transition: 0.3s;
    }

    .delete-btn:hover {
        background: #c0392b;
    }

</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>Library Management System</h2>
	
	<a href="${pageContext.request.contextPath}/view/addBook.jsp">Add Book</a>

	
	<h3>Available Books</h3>
	
	<table border="1" cellpadding="5">
		
		<tr>
			<th>ID</th>
			<th>Title</th>
			<th>Author</th>
			<th>Price</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		
		<%
			List<Book> list = (List<Book>) request.getAttribute("books");
			if(list!=null){
				for(Book b:list)
				{
		%>
		
		<tr>
            <td><%= b.getId() %></td>
            <td><%= b.getTitle() %></td>
            <td><%= b.getAuthor() %></td>
            <td><%= b.getPrice() %></td>
            <td ><a href="editBook?id=<%= b.getId() %>">Edit</a></td>
            <td><a href="deleteBook?id=<%= b.getId() %>">Delete</a></td>

        </tr>
        <%
			 }
			}
        %>
	
	</table>

</body>
</html>