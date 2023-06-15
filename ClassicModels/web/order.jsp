<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Details</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    </head>
    <body>
        <%
          
        //Use a try/catch block to catch any database exceptions
        try { 
            //Create a connection to the database
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/classicmodels", "root", "admin");

            //Create a new SQL statement using the connection
            Statement stmt = con.createStatement();


            //Execute the SQL statement to retrieve a result set of records from the database.
            //This SQL query will retrieve all of the records in the products table
            ResultSet rs = stmt.executeQuery("SELECT orders.orderDate, orders.shippedDate, orderDetails.productCode, orderDetails.quantityOrdered, orderDetails.priceEach FROM Orders, OrderDetails WHERE orders.ordernumber = orderdetails.ordernumber AND orders.ordernumber = '" + request.getParameter("orderNumber")+ "';");
            
            //while loop to display the results
            while(rs.next()) {
        %>
        <div class="card text-center">
            <table>
                <tr>
                    <td>Order Date:</td>
                    <td><%out.print(rs.getString("orderDate"));%></td>
                </tr>
                <tr>
                    <td>Shipped Date:</td>
                    <td><%out.print(rs.getString("shippedDate"));%></td>
                <tr>
                    <td>Product Code:</td>
                    <td><%out.print(rs.getString("productCode"));%></td>
                </tr>
                <tr>
                    <td>Quantity Ordered:</td>
                    <td><%out.print(rs.getString("quantityOrdered"));%></td>
                </tr>
                <tr>
                    <td>Price Each:</td>
                    <td><%out.print(rs.getString("priceEach"));%></td>
                </tr>
            </table>
        
            <%
                } //end while loop
                con.close();
        } catch (Exception e) {
        e.printStackTrace();
    }
%>
    
<a href="index.jsp" class="btn btn-primary">Lookup Another Order</a>
        </div>
    </body>
</html>
