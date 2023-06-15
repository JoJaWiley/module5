
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Lookup</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    </head>
    <body>
        <div class="card text-center" style="width: 20rem;">
            <img class="card-img-top" src="boat.jpg" alt="model boat" width="200">
            <h1>Enter order number:</h1>
            <form action="order.jsp">
                <input type="text" name="orderNumber">
                <input type="submit" value="submit" class="btn btn-primary">
            </form>
        </div>
    </body>
</html>
