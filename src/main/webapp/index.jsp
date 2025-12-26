<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    table {
        background: white;
        padding: 20px 30px;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    }

    a {
        display: inline-block;
        text-decoration: none;
        background: #4CAF50;
        color: white;
        padding: 10px 20px;
        font-size: 18px;
        border-radius: 6px;
        transition: 0.3s;
    }

    a:hover {
        background: #45a049;
        transform: scale(1.05);
    }

    td {
        text-align: center;
    }
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="">
	
		<table>
			<tr>
			
			<a href="${pageContext.request.contextPath}/viewBooks">Welcome</a>
			
			</tr>
		</table>
	
	</form>


</body>
</html>