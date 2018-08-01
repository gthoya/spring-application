<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${contentsList}" var="contents">
<div style="width: 100%;">
    <div style="float: left; border: 1px solid black; border-top: 0px; width: 5%;">${contents.id}</div>
    <div style="float: left; border: 1px solid black; border-top: 0px; border-left: 0px; width: 60%;"><a href="javascript:getContents(${contents.id})">${contents.title}</a></div>
    <div style="float: left; border: 1px solid black; border-top: 0px; border-left: 0px; width: 15%;">${contents.createDateTime}</div>
    <div style="float: left; border: 1px solid black; border-top: 0px; border-left: 0px; width: 15%;">${contents.createUserName}</div>
</div>
</c:forEach>