<%@ page import="databaseConnect.JDBC;" %>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Student Form</title>
        <link rel="stylesheet" href="css/form.css">
    </head>
    <body>
        <h1>Student Form</h1>
        <div style="text-align: center; position: relative;">
            <a href="home.html" style="display: inline-block; width: 20%; border: solid black; text-align: center;">Home</a>
        </div>
        <br>
        <form action="studentInfo.jsp" method="post">
            <label for="std_id">Your ID:</label>
            <br>
            <input id="std_id" name="std_id" type="number" minlength="1" maxlength="9">
            <br>
            <label for="std_name">Your name:</label>
            <br>
            <input id="std_name" name="std_name" type="text" autofocus minlength="3" maxlength="25" required>
            <br>
            <label for="mail">Your email address:</label>
            <br>
            <input id="mail" name="mail" type="email" minlength="7" maxlength="25" required>
            <br>
            <label for="std_dept">Your department:</label>
            <br>
            <input id="std_dept" name="std_dept" type="text" minlength="3" maxlength="10">
            <br>
            <label for="std_btc">Your batch:</label>
            <br>
            <input id="std_btc" name="std-btc" type="number" minlength="1" maxlength="2">
            <br>
            <label for="father_name">Your father`s name:</label>
            <br>
            <input id="father_name" name="father_name" type="text" minlength="3" maxlength="25">
            <br>
            <label for="mother_name">Your mother`s name:</label>
            <br>
            <input id="mother_name" name="mother_name" type="text" minlength="3" maxlength="25">
            <br>
            <label>Your address:</label>
            <br>
            <input name="address" type="text" list="mylist">
            <datalist id="mylist">
                <option value="Dhaka">Dhaka</option>
                <option value="Chittagong">Chittagong</option>
                <option value="Rajshahi">Rajshahi</option>
                <option value="Naogaon">Naogaon</option>
                <option value="Bogra">Bogra</option>
                <option value="Joypurhat">Joypurhat</option>
                <option value="Barisal">Barisal</option>
                <option value="Tangail">Tangail</option>
                <option value="Sylet">Sylet</option>
            </datalist>
            <br>
            <label>Enter your gender:</label>
            <br>
            <input id="male" value="Male" name="gender" type="radio">Male
            <input id="female" value="Female" name="gender" type="radio">Female
            <br>
            <label for="mobile">Your contact number:<br>+880</label>
            <input id="mobile" name="mobile" type="number" minlength="10" maxlength="10">
            <br>
            <button type="submit" id="done">Ok</button>
            <br>
        </form>
        <%
            JDBC dbApp = new JDBC();
            int id = request.getParameter("std_id");
            String name = request.getParameter("std_name");
            String mail = request.getParameter("mail"),
            String dept = request.getParameter("std_dept"),
            int btc = request.getParameter("std_btc"),
            String fname = request.getParameter("father_name"),
            String mname = request.getParameter("mother_name"),
            String address = request.getParameter("address"),
            String gender = request.getParameter("gender"),
            String mobile = request.getParameter("mobile")
            dbApp.insertStudent(id, name, mail, dept, btc, fname, mname, address, gender, mobile);
        %>
    </body>
</html>