<%-- 
    Document   : TKMTDisplayBooks
    Created on : Feb 13, 2019, 8:55:52 PM
    Author     : taran
--%>

<jsp:include page="TKMTBanner.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h1>List of Books</h1>
<table>
  <tr>
    <th>Code</th>
    <th>Description</th>
    <th>Quantity</th>
  </tr>
  <c:forEach var="books" items="${books}">
  <tr>
    <td>${books.code}</td>
    <td>${books.description}</td>
    <td>${books.quantity}</td>
  </tr>
  </c:forEach>
</table><br >
<a href="TKMTAddBook.jsp">
    <button>Add Book</button>
</a>



<jsp:include page="TKMTFooter.jsp" />