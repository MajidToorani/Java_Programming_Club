<%-- 
    Document   : TKMTAddMember
    Created on : 11-Apr-2019
    Author     : majid
--%>

<jsp:include page="TKMTBanner.jsp" />

 <section>
    <h1>Add a New Member</h1><br>
    <p><font color="red"><i>${errorMsg}</i></font></p>
    <form action="TKMTMemberAdmin?action=saveMember" method="post">
        <label>Email:</label>
        <input type="email" name="email" style="width: 300px"><br>
        <label>Full Name:</label>
        <input type="text" name="fullName" style="width: 200px"><br>
        <label>Phone:</label>
        <input type="text" name="phone" style="width: 200px"><br>
        <label>IT Program:</label>
        <select style="width: 100px" name="program">
            <option value="CAS">CAS</option>
            <option value="SQATE">SQATE</option>
            <option value="CPA">CPA</option>  
            <option value="CP">CP</option>
            <option value="ITID">ITID</option>
            <option value="CAD">CAD</option>   
            <option value="ITSS">ITSS</option>  
        </select>
        <br>
        <label>Year Level:</label>
        <select style="width: 100px" name="year">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>            
        </select>
        <br>
        <label>&nbsp;</label>
        <input type="submit" value="Save">
        <input type="reset" value="Reset">
    </form>   
</section>   

<jsp:include page="TKMTFooter.jsp" />