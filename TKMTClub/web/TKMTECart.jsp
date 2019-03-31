<%-- 
    Document   : TKMTECart
    Created on : 30-Mar-2019, 12:03:56 AM
    Author     : majid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TKMT Programming Club</title>
    </head>
    <body>
        <jsp:include page="TKMTBanner.jsp"/>
        <section>
            <table>
                <tr>
                    <th></th>
                    <th align="center">Your Loan Cart</th>
                    <th></th>
                </tr>
                <tr>
                    <th>Code</th>
                    <th>Description</th>
                    <th>Quantity</th>
                </tr>
                <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                <c:set var="total" value="0" scope="page"/>
                <c:forEach var="item" items="${eCart.items}">
                    <tr>
                        <td>${item.code}</td>
                        <td>${item.description}</td>
                        <td align="right">${item.quantity}</td>
                    </tr>
                    <c:set var="total" value="${total + item.quantity}" scope="page"/>
                </c:forEach>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td align="right">Total: </td>
                    <td align="right">${total}</td>
                </tr>
            </table>
            <br><br>
            <a href="TKMTClearCart">Clear the cart</a> 
            <br><br>
            <a href="TKMTLoan">Return to eLoan</a> 
        </section>
        <footer><jsp:include page="TKMTFooter.jsp"/></footer>
    </body>
</html>
