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
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    h2 {
        text-align: center;
        color: #2c3e50;
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
    }

    input[type="text"],
    input[type="number"],
    input[name="price"] {
        width: 250px;
        padding: 8px 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 15px;
        outline: none;
        transition: 0.3s;
    }

    input[type="text"]:focus,
    input[name="price"]:focus {
        border-color: #27ae60;
    }

    input[type="submit"] {
        width: 100%;
        background: #27ae60;
        color: white;
        padding: 10px;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        font-size: 17px;
        margin-top: 10px;
        transition: 0.3s;
    }

    input[type="submit"]:hover {
        background: #1f8a4d;
        transform: scale(1.05);
    }

</style>


<meta charset="UTF-8">
<title>Add Book</title>
</head>
<body>

    <h2>Add New Book</h2>

    <form action="${pageContext.request.contextPath}/AddBookServlet" method="post">

        <table>
            <tr>
                <td>Title:</td>
                <td><input type="text" name="title" required></td>
            </tr>

            <tr>
                <td>Author:</td>
                <td><input type="text" name="author" required></td>
            </tr>

            <tr>
                <td>Price:</td>
                <td><input type="txt"  name="price" required></td>
            </tr>

            <tr>
                <td colspan="2">
                    <input type="submit" value="Add Book">
                </td>
            </tr>

        </table>

    </form>

</body>
</html>
