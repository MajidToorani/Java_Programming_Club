<%-- 
    Document   : TKMTRemoveMember
    Created on : 11-Apr-2019
    Author     : Majid
--%>

<jsp:include page="TKMTBanner.jsp" />

<section>
    <h1>Do you want to delete this member?</h1><br>
    <p><i>${errorMsg}</i></p>
    <form action="" method="post">
        <label>Email:</label>
        <input type="email" name="email" style="width: 300px" value="${member.emailAddress}" disabled><br>
        <label>Full Name:</label>
        <input type="text" name="fullName" style="width: 200px" value="${member.fullName}" disabled><br>
        <label>Phone:</label>
        <input type="text" name="phone" style="width: 200px" value="${member.phoneNumber}" disabled><br>
        <label>IT Program:</label>
        <input style="width: 100px" name="program" value="${member.programName}" disabled><br>
        <label>Year Level:</label>
        <input style="width: 100px" name="year" value="${member.yearLevel}" disabled><br>
        <label>&nbsp;</label>
        <input type="submit" formaction="TKMTMemberAdmin?action=deleteMember&email=${member.emailAddress}" value="Yes">
        <input type="submit" formaction="TKMTMemberAdmin?action=cancel" value="No">
    </form> 
</section>

<jsp:include page="TKMTFooter.jsp" />
