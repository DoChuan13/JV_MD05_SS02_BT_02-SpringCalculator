<%--
  Created by IntelliJ IDEA.
  User: chuan
  Date: 26/05/2023
  Time: 17:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    td {
        width: 150px;
    }

    input {
        width: 100%;
    }
</style>
<body>
<form action="/calculator" >
    <input id="action" type="text" name="action" hidden="hidden">
    <table border="1" style="width: 600px;">
        <tr>
            <td colspan="2"><input type="number" name="num1"></td>
            <td colspan="2"><input type="number" name="num2"></td>
        </tr>
        <tr>
            <td>
                <button class="button-submit" type="submit">Addition (+)</button>
            </td>
            <td>
                <button class="button-submit" type="submit">Subtraction (-)</button>
            </td>
            <td>
                <button class="button-submit" type="submit">Multiplication (*)</button>
            </td>
            <td>
                <button class="button-submit" type="submit">Division (/)</button>
            </td>
        </tr>
        <tr>
            <td>Result</td>
            <td colspan="3">${result}</td>
        </tr>
    </table>
</form>
</body>
<script>
    let btn = document.querySelectorAll(".button-submit");
    for (let i = 0; i < btn.length; i++) {
        btn[i].addEventListener('click', () => {
            let action = document.getElementById("action");
            switch (i) {
                case 0:
                    action.value = "add";
                    break;
                case 1:
                    action.value = "sub";
                    break;
                case 2:
                    action.value = "mul";
                    break;
                case 3:
                    action.value = "div";
                    break;
            }
        })
    }
</script>
</html>
