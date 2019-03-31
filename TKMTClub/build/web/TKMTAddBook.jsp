<%-- 
    Document   : TKMTAddBook
    Created on : Feb 16, 2019, 6:24:08 PM
    Author     : taran
--%>

<jsp:include page="TKMTBanner.jsp" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="club.admin.TKMTAddBookServlet" %>
<%@page import="club.business.Book" %>

<h1>Add a Book</h1><br>
    <%
        String message = (String) request.getAttribute("message");      
        Book book =(Book) request.getAttribute("book");
    %>    
    <% if (message!=null) {%>
     <p style="color: red"><i><%= message %></i></p>        
    <% }%>
     <br>
 <form action="TKMTAddBook" method="post">
     <input type="hidden" name="action" value="add">
        <label>Code:</label>
        <input type="text" name="code" value="<c:out value='${book.code}'/>"><br>
        <label>Description:</label>
        <input type="text" name="description" size="50" value="<c:out value='${book.description}'/>"><br>
        <label>Quantity:</label>
        <input type="text" name="quantity" size="6" value="<c:out value='${book.quantity}'/>"><br>
        
        <input type="submit" id="submit" value="Save">
        <input type="submit" name="action" formaction="TKMTDisplayBooks" 
               formmethod="get" value="Cancel">
 </form>     

<jsp:include page="TKMTFooter.jsp" />
