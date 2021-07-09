<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body {
                background-color: rgb(127, 197, 255);
            }

            h1 {
                background-color: rgb(39, 39, 83);
                color: white;
                text-align: center;
            }

            h2 {
                color: rgb(94, 111, 212);
                text-align: center;
            }

            h3 {
                color: white;
                text-align: center;
            }

            div {
                max-width: 500px;
                margin: auto;
                text-align: left;
                border: solid rgb(35, 51, 142) 25px;
                background-color: rgb(39, 39, 83);
                padding: 20px;
                outline: solid rgb(94, 111, 212) 10px;
            }
        </style>
        <title>Student Info</title>
    </head>
    <body>
    <h1>Student Info</h1>
        <div>
            <h2>Your Name: </h2><h3><%= request.getParameter("std_name")%></h3>
            <h2>Father`s Name: </h2><h3><%= request.getParameter("father_name")%></h3>
            <h2>Mother`s Name: </h2><h3><%= request.getParameter("mother_name")%></h3>
            <h2>Your Address:  </h2><h3><%= request.getParameter("address")%></h3>
            <h2>Your Mobile Number:  </h2><h3>+880<%= request.getParameter("number")%></h3>
            <h2>Your E-mail Address:  </h2><h3><%= request.getParameter("mail")%></h3>
            <h2>Your Gender:  </h2><h3><%= request.getParameter("gender")%></h3>
            <h2>Your Birth Date: </h2><h3>
                <%= request.getParameter("date")%>
                <%= request.getParameter("month")%>,
                <%= request.getParameter("year")%>
            </h3>
            <h2>Your Photo:  </h2><h3><%= request.getParameter("img")%> is uploaded</h3>
            <img src="img/<%= request.getParameter("img")%>"/>
            <h2>Your Comment: </h2><h3><%= request.getParameter("ta")%></h3>
        </div>
    </body>
</html>