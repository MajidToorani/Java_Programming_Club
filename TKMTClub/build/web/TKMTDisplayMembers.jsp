<%-- 
    Document   : TKMTDisplayMembers
    Created on : 11-Apr-2019
    Author     : majid
--%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<jsp:include page="TKMTBanner.jsp" />

<section>
    <h1>List of Members</h1>  
    <br>    
    <table>  
         <tr>
            <th>Email</td>
            <th>Full Name</td>
            <th>Program</td>
            <th>Year</td>
        </tr>       

        <c:forEach var="member" items="${members}">
            <tr>
                <td><c:out value='${member.emailAddress}'/></td>
                <td><c:out value='${member.fullName}'/></td>
                <td><c:out value='${member.programName}'/></td>
                <td><c:out value='${member.yearLevel}'/></td>
                <td><a href="TKMTMemberAdmin?action=editMember&amp;email=${member.emailAddress}">Edit</a></td>
                <td><a href="TKMTMemberAdmin?action=removeMember&amp;email=${member.emailAddress}">Remove</a></td>
            </tr>
        </c:forEach>
    </table>
    <a href="TKMTMemberAdmin?action=addMember"><input type="button" value="Add Member"></a>       
</section>

<jsp:include page="TKMTFooter.jsp" />

