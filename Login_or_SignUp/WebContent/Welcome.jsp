<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<% 
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); //http1.1
response.setHeader("Pragma","no-cache");//http1.0
response.setHeader("Expires","0"); //proxy
if(session.getAttribute("username")==null)response.sendRedirect("index.jsp");

%>
<body>
<h3>Welcome</h3>

<form action="Logout" method="post">
    <table align='center'>
        
        
        <tr><td></td><td><button  type="submit">Logout</button>
           
        </table>
            </form>
</body>
</html>