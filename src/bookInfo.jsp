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
        <title>Book Info</title>
    </head>
    <body>
    <h1>Book Info</h1>
        <div>
            <h2>Book Name: </h2><h3><%= request.getParameter("book_name")%></h3>
            <h2>Book Author: </h2><h3><%= request.getParameter("auth")%></h3>
            <h2>Book Price: </h2><h3><%= request.getParameter("price")%></h3>
            <h2>Book genre:  </h2><h3><%= request.getParameter("genre")%></h3>
            <h2>Publicize year:  </h2><h3><%= request.getParameter("year")%></h3>
            <h2>Cover Photo:  </h2><h3><%= request.getParameter("img")%> is uploaded</h3>
                <img src="img/<%= request.getParameter("img")%>"/>
            <h2>Your Comment: </h2><h3><%= request.getParameter("ta")%></h3>
        </div>
    </body>
</html>