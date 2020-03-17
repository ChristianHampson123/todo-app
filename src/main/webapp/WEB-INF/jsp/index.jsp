<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="Css/Style.css">
    <meta charset="UTF-8">
    <title>Todo List</title>
</head>

<body>
<div>

<h2><font size="4">To create a to do list, click the plus + button</font> </h2>
</div>
<a class="button plus" href="${pageContext.request.contextPath}/todo/create">
    <span class="bg" id="plus"></span>
    <span class="symbol"></span>
</a>

<table>

     <tbody>
    <c:forEach var="todo" items="${todos}">
    <tr>
        <td>
            ${todo.title}
            <a href="${pageContext.request.contextPath}/todo/edit/${todo.id}">Edit</a>
            &nbsp;
            <a href="${pageContext.request.contextPath}/todo/complete/${todo.id}">Complete</a>
            &nbsp;
            <a href="${pageContext.request.contextPath}/todo/delete/${todo.id}">Delete</a>
        </td>
        <td>
            ${todo.completed}
        </td>
        <div class="snote">
        <ul>
          <li>
            <a href="#LINK 1">
              <h2> ${todo.title} </h2><hr />
              <a href="${pageContext.request.contextPath}/todo/edit/${todo.id}">Edit</a>
          </a>

         </ul>
        </div>

    </tr>
    </c:forEach>
</table>
</body>
</html>
