<%--
  Created by IntelliJ IDEA.
  User: lixin
  Date: 2021/4/20
  Time: 9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- jQuery  -->
    <script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
    <title>文件上传</title>
</head>
<body>
<h2>文件上传</h2>
<form id="tf" enctype="multipart/form-data">
    <input type="text" name="description">
    <input type="file" name="file">
    <input type="button" value="上传" onclick="test()">
</form>

<script>
    function test() {
        var form = new FormData(document.getElementById("tf"));
        for (var key of form.keys()) {
            console.log(key, form.get(key));
        }
        $.ajax({
            url: "/ssm/upload.action",
            type: "post",
            data: form,
            processData: false,
            contentType: false,
            success: function (data) {
                if (data == "1") {
                    alert("上传成功")
                } else {
                    alert("上传失败")
                }
            }
        });
    }
</script>
</body>
</html>
