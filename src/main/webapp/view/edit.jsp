<%@page import="com.app.model.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    Book book = (Book) request.getAttribute("book");
%>

<!DOCTYPE html>
<html>
<head>

	<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #eef2f3;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    h2 {
        text-align: center;
        color: #333;
        margin-bottom: 20px;
    }

    table {
        background: #fff;
        padding: 25px 40px;
        border-radius: 10px;
        box-shadow: 0px 4px 12px rgba(0,0,0,0.1);
    }

    td {
        padding: 10px;
        font-size: 16px;
        color: #333;
    }

    input[type="text"] {
        width: 250px;
        padding: 8px 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 15px;
        outline: none;
        transition: border-color 0.3s;
    }

    input[type="text"]:focus {
        border-color: #4CAF50;
    }

    input[type="submit"] {
        background: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 6px;
        font-size: 17px;
        cursor: pointer;
        transition: 0.3s;
        margin-top: 10px;
    }

    input[type="submit"]:hover {
        background: #45a049;
        transform: scale(1.05);
    }
</style>
	

<meta charset="UTF-8">
<title>Edit Book</title>
</head>
<body>

<h2>Edit Book</h2>

<form action="${pageContext.request.contextPath}/UpdateBooksServlet" method="post">

    <input type="hidden" name="id" value="<%= book.getId() %>">

    <table>

        <tr>
            <td>Title:</td>
            <td><input type="text" name="title" value="<%= book.getTitle() %>" required></td>
        </tr>

        <tr>
            <td>Author:</td>
            <td><input type="text" name="author" value="<%= book.getAuthor() %>" required></td>
        </tr>

        <tr>
            <td>Price:</td>
            <td><input type="text" name="price" value="<%= book.getPrice() %>" required></td>
        </tr>

        <tr>
            <td colspan="2">
                <input type="submit" value="Update Book">
            </td>
        </tr>

    </table>

</form>

</body>
</html>
