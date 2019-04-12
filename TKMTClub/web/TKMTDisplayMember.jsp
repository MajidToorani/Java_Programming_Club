<%-- 
    Document   : TKMTDisplayMember
    Created on : Jan 25, 2019
    Author     : taran
--%>

<jsp:include page="TKMTBanner.jsp" />

    <section>
        <h1>Thank you for joining our club!</h1><br><br>
        <p>Here is the information you entered:</p><br>
        <h2>Full Name:     ${param.fullName}</h2>
        <h2>Email:         ${param.email}</h2>    
        <h2>Phone:         ${param.phone}</h2>
        <h2>IT Program:    ${param.progitem}</h2>
        <h2>Year Level:    ${param.yearitem}</h2>
        <p>To register another member, click on the Back button in your browser or
        the Return button shown below</p>
        <form action="TKMTRegister.jsp" method="get">
            <input type ="submit" value="Return"></input>
        </form>
    </section>

<jsp:include page="TKMTFooter.jsp" />

