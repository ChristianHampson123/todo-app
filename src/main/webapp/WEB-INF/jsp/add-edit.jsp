<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${modeTitle} Todo</title>
</head>
<link rel = "stylesheet" href="/Css/NewNote.css">
<body>
<h2>${modeTitle} Todo</h2>
<form:form action="${pageContext.request.contextPath}/todo/${mode}" method="post" modelAttribute="todo">
    <form:hidden path="id"/>
    <table>
        <tr>
            <td>
                <form:label path="title" class="title">Title</form:label>
            </td>
            <td>
                <form:input path="title" class="edit"></form:input>
            </td>
            <td>
                <form:errors path="title" class="ertitle"></form:errors>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="description" class="des">Description</form:label>
            </td>
            <td>
                <form:textarea path="description" cols="40" rows="25" class ="editdes"></form:textarea>
            </td>
            <td>
                <form:errors path="description" class="erdes"></form:errors>
            </td>
        </tr>
        <tr>
            <td>
                <label>New Todo Note</label>
            </td>
            <td>
                <form:button name="cancel" class="bCancel">Cancel</form:button>
                &nbsp;
                <input type="submit" name="submit" value="Submit" class= "bSubmit">
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
