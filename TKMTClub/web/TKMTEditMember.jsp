<%-- 
    Document   : TKMTEditMember
    Created on : 11-Apr-2019
    Author     : majid
--%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<jsp:include page="TKMTBanner.jsp" />

<section>
    <h1>Edit an Existing Member</h1><br>
    <p><font color="red"><i>${errorMsg}</i></font></p>
    <form action="TKMTMemberAdmin?email=${member.emailAddress}&amp;action=saveMember&amp;db_operation=update" method="post">
        <label>Email:</label>
        <input type="email" name="email" style="width: 300px" value="${member.emailAddress}" disabled><br>
        <label>Full Name:</label>
        <input type="text" name="fullName" style="width: 200px" value="${member.fullName}"><br>
        <label>Phone:</label>
        <input type="text" name="phone" style="width: 200px" value="${member.phoneNumber}"><br>
        <label>IT Program:</label>
        
        <select style="width: 100px" name="program">
        <c:forTokens var = "name" items = "CAS,SQATE,CPA,CP,ITID,CAD,ITSS" delims = ",">
             <c:choose>
                <c:when test="${member.programName == name}">
                    <option value="${name}" selected>${name}</option>
                </c:when>
                <c:otherwise>
                    <option value="${name}">${name}</option>
                </c:otherwise>
            </c:choose>
        </c:forTokens>
        </select>
        <br>
        <label>Year Level:</label>
        <select style="width: 100px" name="year" value="${member.yearLevel}">
        <c:forTokens var = "year" items = "1,2,3,4" delims = ",">
             <c:choose>
                <c:when test="${member.yearLevel == year}">
                    <option value="${year}" selected>${year}</option>
                </c:when>
                <c:otherwise>
                    <option value="${year}">${year}</option>
                </c:otherwise>
            </c:choose>
        </c:forTokens>         
        </select>
        <br>
        <label>&nbsp;</label>
        <input type="submit" value="Save">
        <input type="reset" value="Reset">
    </form>   
</section>

<jsp:include page="TKMTFooter.jsp" />


