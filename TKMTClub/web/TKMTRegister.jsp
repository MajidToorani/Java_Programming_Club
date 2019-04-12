<%-- 
    Document   : TKMTRegister
    Created on : Jan 25, 2019
    Author     : Taraneh
--%>

<jsp:include page="TKMTBanner.jsp" />

    <section>
        <h2>New Member Registration Form</h2><br>
        <form action ="TKMTDisplayMember.jsp " method ="post">
            <label>Full Name:</label>
            <input type="text" name="fullName" style="width: 200px"></input><br>
            <label>Email:</label>
            <input type="email" name="email" style="width: 200px"></input><br>
            <label>Phone:</label>
            <input type="text" name="phone" style="width: 200px"></input><br>
            <label>IT Program:</label>
            <select name="progitem">
                <option value="CAS">CAS</option>
                <option value="SQATE">SQATE</option>
                <option value="CPA">CPA</option>
                <option value="CP">CP</option>
                <option value="ITID">ITID</option>
                <option value="CAD">CAD</option>
                <option value="ITSS">ITSS</option>
            </select><br>
             <label>Year Level:</label>
            <select name="yearitem">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="CP">4</option>
            </select><br>
            <input id="submit" type="submit" value="Register Now!"></input>  
            <input type="reset" value="Reset"></input>
   
        </form>   
    </section>

<jsp:include page="TKMTFooter.jsp" />
