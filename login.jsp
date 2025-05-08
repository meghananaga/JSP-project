<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #ADD8E6;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        
    }

    

    .success {
        color: green;
        font-size: 16px;
        background-color: #e6ffe6;
        padding: 10px 20px;
        border: 1px solid #90ee90;
        border-radius: 6px;
        display: inline-block;
    }
     form{
        border:5px solid #1f1c93;
        background-color: #F9F6EE;
        padding: 30px 40px;
        border-radius: 30px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        display: flex;
        flex-direction: column;
        width: 300px;
        align-items: center;  
     
     }
      input[type="email"],
    input[type="password"] {
        padding: 10px;
        margin: 10px 0;
        border-radius: 6px;
        border: 1px solid #ccc;
        font-size: 14px;
        width: 90%;
    }
    input[type="submit"] {
        padding: 5px;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        font-size: 20px;
        margin-top: 10px;
        width: 40%;
        
 
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
    a {
        color: #007bff;
        text-decoration: none;
        font-size: 18px;
        margin-top: 10px;
    }
     
	a:hover {
        text-decoration: underline;
    }
    
</style>

</head>
<body>
<div>
<%if(request.getAttribute("Success")!=null){%>
<h3 class="success"><%=request.getAttribute("Success")%></h3>
<%}%>
<%if(request.getAttribute("error")!=null){%>
<h3 class="error"><%=request.getAttribute("error")%></h3>
<%}%>
<%if(request.getAttribute("success")!=null){%>
<h3 class="success"><%=request.getAttribute("success")%></h3>
<%}%>

</div>
<form action="login" method="post">
<h1>Login</h1>
<input type="email" name="mail" placeholder="Enter your mail">
<input type="password" name="password" placeholder="Enter the password">
<input type="submit" value="login">  <br><br>
  <a href="forgetpassword.jsp">forgetpassword</a>
<br><br>
Don't have an account?<a href="signup.jsp" style="text-decoration: none">signup</a>
</form>
</body>
</html>