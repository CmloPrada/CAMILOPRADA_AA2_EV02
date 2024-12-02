<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar datos</title>
    </head>
    <body>
        <div class="container m-5 border rounded">
        <table class="table table-striped">
            <thead class="bg-ligt sticky-top">
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Apellido</th>
                </tr>
            </thead>
            <tbody>
                <%
                    Connection con = null;
                    Statement st = null;
                    ResultSet rs = null;
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    String dbDriver = "com.mysql.cj.jdbc.Driver";
                    String dbURL = "jdbc:mysql://localhost:3306/";
                    String dbName = "PruebaJava";
                    String dbUsername = "root";
                    String dbPassword = "";

                    con = DriverManager.getConnection(dbURL + dbName, dbUsername, dbPassword);

                    st = con.createStatement();
                    rs = st.executeQuery("SELECT * FROM usuarios");

                    while (rs.next()) {
                %>
                <tr>
                    <td><%= rs.getString(1)%></td>
                    <td><%= rs.getString(2)%></td>
                    <td><%= rs.getString(3)%></td>
                </tr>
                <%}%>
            </tbody>
        </table>
        </div>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</html>
