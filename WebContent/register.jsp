<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>注册页面</title>
<style>
        .pg_header{
            position: fixed;
            height: 48px;
            top: 0;
            left: 0;
            right: 0;
            background-color: #2459a2; 
            line-height: 48px;
        }
        .pg_header .logo{
            margin: 0 auto;
            float: left;
            width: 200px;
            text-align: center;
            line-height: 48px;
            font-size: 28px;
            color: white;
        }
        .pg_dl{
            left: 400px;
            display: inline-block;
            padding: 0 40px;
            color: white;
        }
        .pg_header .pg_dl:hover{
            background-color: #2459fb;
            cursor: pointer;
        }
        .left{
            margin-top: 20px;
            width: 400px;
            display: inline-block;
            float: left;        
        }
        .pg_body{
            margin-top: 50px;
            font-size: 18px;
            display: inline-block;
            width: 200px;
        }
        .pg_body .menu{
            width: 800px;
            padding: 15px;    
            float: left;
            font-weight: bold;
        }
        input[type="text"]{
            width: 200px;
            height: 25px;
            border-radius: 6px;
        }
        input[type="password"]{
            width: 200px;
            height: 25px;
            border-radius: 6px;
        }
        input[type="button"]{
            background-color: #555555;
               border: none;
            color: white;
            padding: 12px 29px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 17px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
        }
        input[type="submit"]{
            background-color: #555555;
               border: none;
            color: white;
            padding: 12px 29px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 17px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
        }
        .kong{
            margin-top: -54px;
            margin-left: 200px;
            float:left;
            padding: 15px;
        }
        .img{
            width: 50px;
            height: 40px;
        }
        .can{
            width: 620px;
            height: 40px;
            line-height: 90px;
            margin: 0 auto;
            text-align: center;
            display: inline-block;
        }
        .tian{
            color: red;
            float: right;
            font-size: 12px;
            margin-right: -120px;
            margin-top: -25px;
        }
    </style>
</head>
<body id="i88" style="margin: 0">
    <div class = "pg_header">
        <a class = "logo">LOGO</a>
        <a class="pg_dl" id="i77">注册</a>    
    </div>
    <form name="tijiao" method="post" onsubmit="return check()" action="register_do.jsp">
        <div class="left"></div>
        <div class="pg_body">
                <div class="menu">用户名:</div>
                    <div class="kong">
                        <input id="text1" type="text" name="name" placeholder="请输入用户名" onblur="check()">
                        <span id="div1" class="tian" style="margin-top: 4px">*(为必填)<span>
                    </div>
                <div class="menu">真实姓名:</div>
                    <div class="kong">
                        <input id="i2" type="text" name="01">
                    </div>
                <div class="menu">电话号码:</div>
                    <div class="kong">
                        <input id="i5" type="text" name="tell">
                    </div>
                    
                <div class="menu">性别:</div>
                    <div class="kong" style="width:200px;">
                         男<input type="radio" name="gender" value="1">
                         女 <input type="radio" name="gender" value="2">
                    </div>
                <div class="menu">注册账号:</div>
                    <div class="kong">
                        <input id="text5" type="text" name="id" placeholder="请输入注册账号（8~12位数字）" onblur="check()">
                        <span id="div5" class="tian" style="margin-top: 0px">*(为必填)<span>
                    </div>
                <div class="menu">密码:</div>
                    <div class="kong">
                        <input id="text2" type="password" name="password" onblur="check()">
                        <span id="div2" class="tian" style="margin-top: 0px">*(为必填)<span>
                    </div>
                <div class="menu">确认密码:</div>
                    <div class="kong">
                        <input id="text3" type="password" name="01" onblur="check()">
                        <span id="div3" class="tian" style="margin-top: 0px">*(为必填)<span>
                    </div>
                
                <div class="menu">邮箱地址:</div>
                    <div class="kong">
                        <input id="text4" type="text" name="01" onblur="check()">
                        <span id="div4" class="tian" style="margin-top: 0px">*(为必填)<span>
                    </div>
        <div class="can">
            <input id="i111" type="submit" name="002" value="注  册">
            <p style="width: 200px;display: inline-block;"></p>
            <input id="i222" type="button" name="004" value="取  消">
        </div>
    </form>
    <script type="text/javascript">
            //刷新or取消
            document.getElementById('i77').onclick = function(){
                location.reload();
            }
            document.getElementById('i222').onclick = function(){
                location.reload();
            }

            //用户名验证
            function checkname(){ 
                var div = document.getElementById("div1"); 
                div.innerHTML = ""; 
                var name1 = document.tijiao.text1.value; 
                if (name1 == "") { 
                div.innerHTML = "用户名不能为空！"; 
                document.tijiao.text1.focus(); 
                return false; 
            } 
                if ((name1.length < 2 )|| (name1.length > 10)) { 
                div.innerHTML = "长度2-10个字符"; 
                document.tijiao.text1.select(); 
                return false; 
            } 
                return true;
        }
          //Id验证
            function checkId(){ 
            	var div = document.getElementById("div5"); 
                div.innerHTML = ""; 
                var id = document.tijiao.text5.value; 
                if (id == "") { 
                div.innerHTML = "账号不能为空"; 
                document.tijao.text5.focus(); 
                return false; 
            } 
                if ((id.length < 8 )|| (id.length > 12)) { 
                div.innerHTML = "账号长度为8-12位"; 
                document.tijiao.text5.select(); 
                return false; 
                }
                return true;
   
        }
            
           

            //密码验证
            function checkpassword(){ 
                var div = document.getElementById("div2"); 
                div.innerHTML = ""; 
                var password = document.tijiao.text2.value; 
                if (password == "") { 
                div.innerHTML = "密码不能为空"; 
                document.tijao.text2.focus(); 
                return false; 
            } 
                if ((password.length < 6 )|| (password.length > 16)) { 
                div.innerHTML = "密码长度为6-16位"; 
                document.tijiao.text2.select(); 
                return false; 
                } 
                return true; 
        }

            function checkrepassword(){ 
                var div = document.getElementById("div3"); 
                div.innerHTML = ""; 
                var password = document.tijiao.text2.value; 
                var repass = document.tijiao.text3.value; 
                if (repass == "") { 
                div.innerHTML = "密码不能为空"; 
                document.tijiao.text3.focus(); 
                return false; 
            } 
                if (password != repass) { 
                div.innerHTML = "密码不一致"; 
                document.tijiao.text3.select(); 
                return false; 
            } 
                return true; 
        }
        //邮箱验证
        function checkEmail(){ 
            var div = document.getElementById("div4"); 
            div.innerHTML = ""; 
            var email = document.tijiao.text4.value; 
            var sw = email.indexOf("@", 0); 
            var sw1 = email.indexOf(".", 0); 
            var tt = sw1 - sw; 
            if (email.length == 0) { 
            div.innerHTML = "邮箱不能为空"; 
            document.tijiao.text4.focus(); 
            return false; 
        } 

            if (email.indexOf("@", 0) == -1) { 
            div.innerHTML = "必须包含@符号"; 
            document.tijiao.text4.select(); 
            return false; 
        } 

            if (email.indexOf(".", 0) == -1) { 
            div.innerHTML = "必须包含.符号"; 
            document.tijiao.text4.select(); 
            return false; 
        } 

            if (tt == 1) { 
            div.innerHTML = "@和.不能一起"; 
            document.tijiao.text4.select(); 
            return false; 
        }

            if (sw > sw1) { 
            div.innerHTML  = "@符号必须在.之前"; 
            document.tijiao.text4.select(); 
            return false; 
        } 
            else { 
            return true; 
            }
        return ture; 
        }

            function check(){ 
            if (checkname() &&checkId()&& checkpassword() && checkrepassword() && checkEmail() ) { 
            return true; 
            } 
            else { 
            return false; 
        } 
    } 
    </script>
</body>
</html>