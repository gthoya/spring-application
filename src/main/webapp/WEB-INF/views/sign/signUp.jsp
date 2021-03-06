<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>sign up</title>
    <script type="text/javascript" src="resources/js/jquery/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#signIn").on("click", function() {
                var params = {
                    userId : $("#userId").val()
                    , password : $("#password").val()
                    , userName : $("#userName").val()
                    , age : $("#age").val()
                    , gender : $("#gender").val()
                }

                $.post("/signUp", params, signUpCallback)
            })
        })

        function signUpCallback(result) {
            alert(result.message)

            if (result.message == "success") {
                location.href = "/board"
            }
        }
    </script>
</head>
<body>
    <div style="text-align: center">
        <div>
            <label>ID</label>
            <input type="text" id="userId" style="width: 120px"/>
        </div>
        <div>
            <label>Password</label>
            <input type="password" id="password" style="width: 120px"/>
        </div>
        <div>
            <label>name</label>
            <input type="text" id="userName" style="width: 120px"/>
        </div>
        <div>
            <label>age</label>
            <input type="text" id="age" style="width: 120px"/>
        </div>
        <div>
            <label>gender</label>
            <select id="gender" style="width: 120px">
                <option value="M">male</option>
                <option value="F">female</option>
            </select>
        </div>
        <div>
            <input type="button" id="signIn" value="회원가입">
        </div>
    </div>
</body>
</html>
