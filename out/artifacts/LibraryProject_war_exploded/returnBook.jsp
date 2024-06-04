
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>书籍归还</title>
    <style>

        input[type="text"] {
            border: 2px solid #aed9f6;
            background-color: #fdf7f3;
            border-radius: 5px;
            padding: 10px;
            width: 200px;

            caret-color: #c065d7;

            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus {
            border-color: #4CAF50;
        }

        body {
            font-family: Arial, sans-serif;
            height: 100vh; /* 设置body高度为视口高度 */
            margin: 0;
            background-image: linear-gradient(to right, #a8edea, #fed6e3);
        }

        .form-container {
            height: 100%;
        }

        .form-input {
            margin-top: 40px;

            margin-left: 50px;

        }

        .pretty-button {
            margin-left: 110px;
            padding: 10px;
            width: 40%;
            margin-top: 10px;

            text-align: center;
            text-decoration: none;

            font-size: 16px;

            color: #b0b0b0;
            background-image: linear-gradient(to right, #fed6e3 ,#a8edea);
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .logout-link {
            margin-left: 118px;
            margin-top: 8px;
            font-size: 12px;


            text-align: center;
            text-decoration: none;
            color: #4CAF50;
        }
        .logout-link:hover {
            color: #06620a;
        }

        .pretty-button:hover {
            color: #0c170c;
            background-image: linear-gradient(to right,#fda4c0,#92f8f3);
        }


        .form-kun{
            background-color: rgba(255, 255, 255, 0.2);
            width: 358px;
            height: 270px;
            border-radius: 15px;
            padding-top: 20px;
            position: relative;
            left: 50%;
            top: 30%;
            transform: translate(-50%, -50%);
        }
    </style>
</head>
<body>

<div class="form-container">
    <div class="form-kun">
        <form action="returnSuccess.jsp" method="post">
            <div style="text-align: center;">
                <h1>书籍归还</h1>
            </div>
            <div class="form-input">
            书名：<input type="text" name="book_name">
            </div>

            <div >
                 <input type="submit" value="归还" class="pretty-button">
            </div>
        </form>
        <div>
           <a href="${pageContext.request.contextPath}/loginout.jsp" class="logout-link">注销</a>
        </div>
    </div>
</div>

</body>
</html>
