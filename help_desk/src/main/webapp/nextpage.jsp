

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Online Help Desk - Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #d0e7ff''
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            text-align: center;
            background-color: #ffffffcc;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
        }

        h1 {
            color: #333333;
            margin-bottom: 30px;
        }

        .btn {
            display: block;
            background-color: #1565c0;
            color: white;
            padding: 15px 30px;
            margin: 15px auto;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            text-decoration: none;
            transition: background-color 0.3s ease;
            width: 220px;
        }

        .btn:hover {
            background-color: #0d47a1;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Ticket-Reply Dashboard</h1>
        <a href="GetAllServlet1" class="btn">View All Tickets</a>
        <a href="NewGetAllServlet" class="btn">View Replied Tickets</a>
    </div>
</body>
</html>

<jsp:include page="StaffFooter.jsp" /> <!-- Include Footer -->
