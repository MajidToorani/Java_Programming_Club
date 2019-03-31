<jsp:include page="/TKMTBanner.jsp" />
<section>
    <h1>Java Error</h1>
    <p>Sorry, Java has thrown an exception.</p>
    <p>To continue, click the Back button.</p>

    <h2>Details</h2>
    <p>Type: ${pageContext.exception["class"]}</p>
    <p>Message: ${pageContext.exception.message}</p>
</section>

<jsp:include page="/TKMTFooter.jsp" />