<%--
  Created by IntelliJ IDEA.
  User: aisultankalim
  Date: 30.05.2023
  Time: 04:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<form action = '/saveblog' method = 'POST'>
    <div class = "row mt-3">
        <div class = "col-12 mx-auto">
            <div class="input-group">
                <input type="hidden" name = "blog_id" class="form-control"  value="<%=blog.getId()%>">
            </div>
            <label for="basic-url1" class="form-label">Title :</label>
            <div class="input-group mb-3">
                <span class="" ></span>
                <input type="text" name = "title" placeholder="..." class="form-control"  id="basic-url1"
                       aria-describedby="basic-addon3" value="<%=blog.getTitle()%>">
            </div>
            <label class="form-label">Content :</label>
            <div class="input-group mb-3">
                <span class=""></span>
                <textarea name = "content" class = "form-control" rows = "7"><%=blog.getContent()%></textarea>
            </div>
            <button class="btn btn-primary mt-3" type="submit">Save</button>
        </div>
    </div>
</form>

</body>
</html>
