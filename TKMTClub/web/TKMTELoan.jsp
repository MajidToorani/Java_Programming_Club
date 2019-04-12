<%-- 
    Document   : TKMTELoan
    Created on : 29-Mar-2019
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
                    <th>Code</th>
                    <th>Description</th>
                    <th>QOH</th>
                    <th>Action</th>
                </tr>
                <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
                <c:forEach var="item" items="${loanItems}">
                    <tr>
                        <td>${item.code}</td>
                        <td>${item.description}</td>
                        <td align="right">${item.quantity}</td>
                        <c:choose>
                            <c:when test="${item.quantity > 0}">
                                <td><a href="TKMTCart?action=reserve&code=${item.code}">Reserve</a></td>
                            </c:when>
                            <c:otherwise>
                                <td>N/A</td>
                            </c:otherwise>
                        </c:choose>
                    </tr>
                </c:forEach>
            </table>                  
        </section>
        
        <footer><jsp:include page="TKMTFooter.jsp"/></footer>
    </body>
</html>
