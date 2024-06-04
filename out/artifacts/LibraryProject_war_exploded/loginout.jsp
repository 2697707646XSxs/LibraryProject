
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding-top: 100px;
        }
        h1 {
            color: #333;
        }
        p {
            font-size: 18px;
            color: #666;
        }
    </style>
    <script>

        setTimeout(function() {
            window.location.href = 'index.jsp';
        }, 5000);
    </script>
    <title>注销</title>
</head>
<body>
<h1>您已成功注销！</h1>
<p>稍后将自动重定向到主页...</p>
<%-- response.sendRedirect("index.jsp"); --%>
</body>
</html>
